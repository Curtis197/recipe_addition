import 'dart:convert';

import 'package:flutter/material.dart';

import '/backend/backend.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';

import '../../flutter_flow/place.dart';
import '../../flutter_flow/uploaded_file.dart';

/// SERIALIZATION HELPERS

String dateTimeRangeToString(DateTimeRange dateTimeRange) {
  final startStr = dateTimeRange.start.millisecondsSinceEpoch.toString();
  final endStr = dateTimeRange.end.millisecondsSinceEpoch.toString();
  return '$startStr|$endStr';
}

String placeToString(FFPlace place) => jsonEncode({
      'latLng': place.latLng.serialize(),
      'name': place.name,
      'address': place.address,
      'city': place.city,
      'state': place.state,
      'country': place.country,
      'zipCode': place.zipCode,
    });

String uploadedFileToString(FFUploadedFile uploadedFile) =>
    uploadedFile.serialize();

const _kDocIdDelimeter = '|';
String _serializeDocumentReference(DocumentReference ref) {
  final docIds = <String>[];
  DocumentReference? currentRef = ref;
  while (currentRef != null) {
    docIds.add(currentRef.id);
    // Get the parent document (catching any errors that arise).
    currentRef = safeGet<DocumentReference?>(() => currentRef?.parent.parent);
  }
  // Reverse the list to get the correct ordering.
  return docIds.reversed.join(_kDocIdDelimeter);
}

String? serializeParam(
  dynamic param,
  ParamType paramType, {
  bool isList = false,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final serializedValues = (param as Iterable)
          .map((p) => serializeParam(p, paramType, isList: false))
          .where((p) => p != null)
          .map((p) => p!)
          .toList();
      return json.encode(serializedValues);
    }
    String? data;
    switch (paramType) {
      case ParamType.int:
        data = param.toString();
      case ParamType.double:
        data = param.toString();
      case ParamType.String:
        data = param;
      case ParamType.bool:
        data = param ? 'true' : 'false';
      case ParamType.DateTime:
        data = (param as DateTime).millisecondsSinceEpoch.toString();
      case ParamType.DateTimeRange:
        data = dateTimeRangeToString(param as DateTimeRange);
      case ParamType.LatLng:
        data = (param as LatLng).serialize();
      case ParamType.Color:
        data = (param as Color).toCssString();
      case ParamType.FFPlace:
        data = placeToString(param as FFPlace);
      case ParamType.FFUploadedFile:
        data = uploadedFileToString(param as FFUploadedFile);
      case ParamType.JSON:
        data = json.encode(param);
      case ParamType.DocumentReference:
        data = _serializeDocumentReference(param as DocumentReference);
      case ParamType.Document:
        final reference = (param as FirestoreRecord).reference;
        data = _serializeDocumentReference(reference);

      case ParamType.DataStruct:
        data = param is BaseStruct ? param.serialize() : null;

      case ParamType.Enum:
        data = (param is Enum) ? param.serialize() : null;

      case ParamType.SupabaseRow:
        return json.encode((param as SupabaseDataRow).data);

      default:
        data = null;
    }
    return data;
  } catch (e) {
    print('Error serializing parameter: $e');
    return null;
  }
}

/// END SERIALIZATION HELPERS

/// DESERIALIZATION HELPERS

DateTimeRange? dateTimeRangeFromString(String dateTimeRangeStr) {
  final pieces = dateTimeRangeStr.split('|');
  if (pieces.length != 2) {
    return null;
  }
  return DateTimeRange(
    start: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.first)),
    end: DateTime.fromMillisecondsSinceEpoch(int.parse(pieces.last)),
  );
}

LatLng? latLngFromString(String? latLngStr) {
  final pieces = latLngStr?.split(',');
  if (pieces == null || pieces.length != 2) {
    return null;
  }
  return LatLng(
    double.parse(pieces.first.trim()),
    double.parse(pieces.last.trim()),
  );
}

FFPlace placeFromString(String placeStr) {
  final serializedData = jsonDecode(placeStr) as Map<String, dynamic>;
  final data = {
    'latLng': serializedData.containsKey('latLng')
        ? latLngFromString(serializedData['latLng'] as String)
        : const LatLng(0.0, 0.0),
    'name': serializedData['name'] ?? '',
    'address': serializedData['address'] ?? '',
    'city': serializedData['city'] ?? '',
    'state': serializedData['state'] ?? '',
    'country': serializedData['country'] ?? '',
    'zipCode': serializedData['zipCode'] ?? '',
  };
  return FFPlace(
    latLng: data['latLng'] as LatLng,
    name: data['name'] as String,
    address: data['address'] as String,
    city: data['city'] as String,
    state: data['state'] as String,
    country: data['country'] as String,
    zipCode: data['zipCode'] as String,
  );
}

FFUploadedFile uploadedFileFromString(String uploadedFileStr) =>
    FFUploadedFile.deserialize(uploadedFileStr);

DocumentReference _deserializeDocumentReference(
  String refStr,
  List<String> collectionNamePath,
) {
  var path = '';
  final docIds = refStr.split(_kDocIdDelimeter);
  for (int i = 0; i < docIds.length && i < collectionNamePath.length; i++) {
    path += '/${collectionNamePath[i]}/${docIds[i]}';
  }
  return FirebaseFirestore.instance.doc(path);
}

enum ParamType {
  int,
  double,
  String,
  bool,
  DateTime,
  DateTimeRange,
  LatLng,
  Color,
  FFPlace,
  FFUploadedFile,
  JSON,

  Document,
  DocumentReference,
  DataStruct,
  Enum,
  SupabaseRow,
}

dynamic deserializeParam<T>(
  String? param,
  ParamType paramType,
  bool isList, {
  List<String>? collectionNamePath,
  StructBuilder<T>? structBuilder,
}) {
  try {
    if (param == null) {
      return null;
    }
    if (isList) {
      final paramValues = json.decode(param);
      if (paramValues is! Iterable || paramValues.isEmpty) {
        return null;
      }
      return paramValues
          .where((p) => p is String)
          .map((p) => p as String)
          .map((p) => deserializeParam<T>(
                p,
                paramType,
                false,
                collectionNamePath: collectionNamePath,
                structBuilder: structBuilder,
              ))
          .where((p) => p != null)
          .map((p) => p! as T)
          .toList();
    }
    switch (paramType) {
      case ParamType.int:
        return int.tryParse(param);
      case ParamType.double:
        return double.tryParse(param);
      case ParamType.String:
        return param;
      case ParamType.bool:
        return param == 'true';
      case ParamType.DateTime:
        final milliseconds = int.tryParse(param);
        return milliseconds != null
            ? DateTime.fromMillisecondsSinceEpoch(milliseconds)
            : null;
      case ParamType.DateTimeRange:
        return dateTimeRangeFromString(param);
      case ParamType.LatLng:
        return latLngFromString(param);
      case ParamType.Color:
        return fromCssColor(param);
      case ParamType.FFPlace:
        return placeFromString(param);
      case ParamType.FFUploadedFile:
        return uploadedFileFromString(param);
      case ParamType.JSON:
        return json.decode(param);
      case ParamType.DocumentReference:
        return _deserializeDocumentReference(param, collectionNamePath ?? []);

      case ParamType.SupabaseRow:
        final data = json.decode(param) as Map<String, dynamic>;
        switch (T) {
          case DemandNotificationsRow:
            return DemandNotificationsRow(data);
          case UserSubscriptionRow:
            return UserSubscriptionRow(data);
          case PrivateConversationRow:
            return PrivateConversationRow(data);
          case MealRow:
            return MealRow(data);
          case ConversationGroupByNameRow:
            return ConversationGroupByNameRow(data);
          case AiChatMessageRow:
            return AiChatMessageRow(data);
          case WeeklySummaryRow:
            return WeeklySummaryRow(data);
          case UnitRow:
            return UnitRow(data);
          case MealPlanRow:
            return MealPlanRow(data);
          case CreatorCommunityPostLikeRow:
            return CreatorCommunityPostLikeRow(data);
          case CreatorWeeklyRevenueChartRow:
            return CreatorWeeklyRevenueChartRow(data);
          case ShoppingListTotalsRow:
            return ShoppingListTotalsRow(data);
          case CreatorCommentRow:
            return CreatorCommentRow(data);
          case MessageReadRow:
            return MessageReadRow(data);
          case CreatorDashboardStatsRow:
            return CreatorDashboardStatsRow(data);
          case RecomandedReceipeRow:
            return RecomandedReceipeRow(data);
          case EatingStyleRow:
            return EatingStyleRow(data);
          case MealConsumedRow:
            return MealConsumedRow(data);
          case ShoppingListSummaryRow:
            return ShoppingListSummaryRow(data);
          case UserHealthParameterRow:
            return UserHealthParameterRow(data);
          case TotalNotificationsRow:
            return TotalNotificationsRow(data);
          case RecipePerformanceSummaryRow:
            return RecipePerformanceSummaryRow(data);
          case ChatMessageRow:
            return ChatMessageRow(data);
          case UpdatedWeightRow:
            return UpdatedWeightRow(data);
          case ActivityLevelRow:
            return ActivityLevelRow(data);
          case DietTypeRow:
            return DietTypeRow(data);
          case UserMoodRow:
            return UserMoodRow(data);
          case UserPreferencesRow:
            return UserPreferencesRow(data);
          case RecipeDetailedPerformanceRow:
            return RecipeDetailedPerformanceRow(data);
          case ReceipeMacroRow:
            return ReceipeMacroRow(data);
          case ConversationGroupRow:
            return ConversationGroupRow(data);
          case ContactMessagesRow:
            return ContactMessagesRow(data);
          case ReferralRow:
            return ReferralRow(data);
          case ReceipeLikesRow:
            return ReceipeLikesRow(data);
          case CommentLikeRow:
            return CommentLikeRow(data);
          case AllCreatorRecipesRow:
            return AllCreatorRecipesRow(data);
          case CreatorWeeklyRevenueRow:
            return CreatorWeeklyRevenueRow(data);
          case ReferralViewRow:
            return ReferralViewRow(data);
          case CreatorStripeAccountRow:
            return CreatorStripeAccountRow(data);
          case CreatorRecipeSummaryRow:
            return CreatorRecipeSummaryRow(data);
          case MealTypeRow:
            return MealTypeRow(data);
          case MessageTimeRow:
            return MessageTimeRow(data);
          case ReceipeTagsRow:
            return ReceipeTagsRow(data);
          case SupportRow:
            return SupportRow(data);
          case CreatorFoodSpecialtyRow:
            return CreatorFoodSpecialtyRow(data);
          case RecipeWeeklyRevenueChartRow:
            return RecipeWeeklyRevenueChartRow(data);
          case CreatorCommunityPostRow:
            return CreatorCommunityPostRow(data);
          case AiPlanFeedbackRow:
            return AiPlanFeedbackRow(data);
          case TemporaryReceipeRow:
            return TemporaryReceipeRow(data);
          case DietQuestionnaryRow:
            return DietQuestionnaryRow(data);
          case TestIndexRow:
            return TestIndexRow(data);
          case ConversationDemandDeleteRow:
            return ConversationDemandDeleteRow(data);
          case CreatorPerformanceSummaryRow:
            return CreatorPerformanceSummaryRow(data);
          case CreatorCommunityMemberRow:
            return CreatorCommunityMemberRow(data);
          case ShoppingIngredientRow:
            return ShoppingIngredientRow(data);
          case CreatorCommunityGroupRow:
            return CreatorCommunityGroupRow(data);
          case UserReferralMonthlyStatsRow:
            return UserReferralMonthlyStatsRow(data);
          case ConversationDemandRow:
            return ConversationDemandRow(data);
          case FoodRegionRow:
            return FoodRegionRow(data);
          case ReceipeDifficultyRow:
            return ReceipeDifficultyRow(data);
          case CreatorRow:
            return CreatorRow(data);
          case NotificationPreferencesRow:
            return NotificationPreferencesRow(data);
          case UserMoodInfoRow:
            return UserMoodInfoRow(data);
          case NotificationTemplatesRow:
            return NotificationTemplatesRow(data);
          case WaitlistRow:
            return WaitlistRow(data);
          case ConversationParticipantRow:
            return ConversationParticipantRow(data);
          case LastMessageTimeRow:
            return LastMessageTimeRow(data);
          case ReceipeImageRow:
            return ReceipeImageRow(data);
          case ReceipeRow:
            return ReceipeRow(data);
          case MealIngredientsRow:
            return MealIngredientsRow(data);
          case ShoppingListRow:
            return ShoppingListRow(data);
          case NotificationTriggersRow:
            return NotificationTriggersRow(data);
          case IngredientCategoryRow:
            return IngredientCategoryRow(data);
          case AiAssistantActionRow:
            return AiAssistantActionRow(data);
          case RoundTypeRow:
            return RoundTypeRow(data);
          case UserAllergiesRow:
            return UserAllergiesRow(data);
          case PaymentHistoryEnrichedRow:
            return PaymentHistoryEnrichedRow(data);
          case CreatorMonthlyRevenueRow:
            return CreatorMonthlyRevenueRow(data);
          case UserGoalRow:
            return UserGoalRow(data);
          case RecipePerformanceLatestRow:
            return RecipePerformanceLatestRow(data);
          case WeightGraphDataRow:
            return WeightGraphDataRow(data);
          case RecipePerformanceRow:
            return RecipePerformanceRow(data);
          case UserReferralRow:
            return UserReferralRow(data);
          case DirectConversationsWithOtherUserRow:
            return DirectConversationsWithOtherUserRow(data);
          case ChatNotificationsRow:
            return ChatNotificationsRow(data);
          case NotificationGroupsRow:
            return NotificationGroupsRow(data);
          case WeeklyUserTrackRow:
            return WeeklyUserTrackRow(data);
          case CreatorLikesRow:
            return CreatorLikesRow(data);
          case ReceipeCommentsRow:
            return ReceipeCommentsRow(data);
          case TestLogRow:
            return TestLogRow(data);
          case ChatConversationRow:
            return ChatConversationRow(data);
          case TagsRow:
            return TagsRow(data);
          case CreatorPayoutRow:
            return CreatorPayoutRow(data);
          case DailyUserTrackRow:
            return DailyUserTrackRow(data);
          case UsersRow:
            return UsersRow(data);
          case TopRecipesByRevenueRow:
            return TopRecipesByRevenueRow(data);
          case CreatorRevenueRow:
            return CreatorRevenueRow(data);
          case GetReferralRevenueRow:
            return GetReferralRevenueRow(data);
          case ConversationRow:
            return ConversationRow(data);
          case IngredientsRow:
            return IngredientsRow(data);
          case DifficultyRow:
            return DifficultyRow(data);
          case CreatorImageRow:
            return CreatorImageRow(data);
          case RecipeWeeklyRevenueRow:
            return RecipeWeeklyRevenueRow(data);
          case MealNotificationsRow:
            return MealNotificationsRow(data);
          case CreatorDietSpecialtyRow:
            return CreatorDietSpecialtyRow(data);
          case StepRow:
            return StepRow(data);
          case NotificationsRow:
            return NotificationsRow(data);
          case UserTrackRow:
            return UserTrackRow(data);
          case UserReferralCodeRow:
            return UserReferralCodeRow(data);
          case AiMemoryRow:
            return AiMemoryRow(data);
          default:
            return null;
        }

      case ParamType.DataStruct:
        final data = json.decode(param) as Map<String, dynamic>? ?? {};
        return structBuilder != null ? structBuilder(data) : null;

      case ParamType.Enum:
        return deserializeEnum<T>(param);

      default:
        return null;
    }
  } catch (e) {
    print('Error deserializing parameter: $e');
    return null;
  }
}

Future<dynamic> Function(String) getDoc(
  List<String> collectionNamePath,
  RecordBuilder recordBuilder,
) {
  return (String ids) => _deserializeDocumentReference(ids, collectionNamePath)
      .get()
      .then((s) => recordBuilder(s));
}

Future<List<T>> Function(String) getDocList<T>(
  List<String> collectionNamePath,
  RecordBuilder<T> recordBuilder,
) {
  return (String idsList) {
    List<String> docIds = [];
    try {
      final ids = json.decode(idsList) as Iterable;
      docIds = ids.where((d) => d is String).map((d) => d as String).toList();
    } catch (_) {}
    return Future.wait(
      docIds.map(
        (ids) => _deserializeDocumentReference(ids, collectionNamePath)
            .get()
            .then((s) => recordBuilder(s)),
      ),
    ).then((docs) => docs.where((d) => d != null).map((d) => d!).toList());
  };
}
