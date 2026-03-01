// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StatsStruct extends FFFirebaseStruct {
  StatsStruct({
    RecipesPublishedStruct? recipesPublished,
    MealsConsumedStruct? mealsConsumed,
    LikesStruct? likes,
    RevenueStruct? revenue,
    ConsumersStruct? consumers,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _recipesPublished = recipesPublished,
        _mealsConsumed = mealsConsumed,
        _likes = likes,
        _revenue = revenue,
        _consumers = consumers,
        super(firestoreUtilData);

  // "recipes_published" field.
  RecipesPublishedStruct? _recipesPublished;
  RecipesPublishedStruct get recipesPublished =>
      _recipesPublished ?? RecipesPublishedStruct();
  set recipesPublished(RecipesPublishedStruct? val) => _recipesPublished = val;

  void updateRecipesPublished(Function(RecipesPublishedStruct) updateFn) {
    updateFn(_recipesPublished ??= RecipesPublishedStruct());
  }

  bool hasRecipesPublished() => _recipesPublished != null;

  // "meals_consumed" field.
  MealsConsumedStruct? _mealsConsumed;
  MealsConsumedStruct get mealsConsumed =>
      _mealsConsumed ?? MealsConsumedStruct();
  set mealsConsumed(MealsConsumedStruct? val) => _mealsConsumed = val;

  void updateMealsConsumed(Function(MealsConsumedStruct) updateFn) {
    updateFn(_mealsConsumed ??= MealsConsumedStruct());
  }

  bool hasMealsConsumed() => _mealsConsumed != null;

  // "likes" field.
  LikesStruct? _likes;
  LikesStruct get likes => _likes ?? LikesStruct();
  set likes(LikesStruct? val) => _likes = val;

  void updateLikes(Function(LikesStruct) updateFn) {
    updateFn(_likes ??= LikesStruct());
  }

  bool hasLikes() => _likes != null;

  // "revenue" field.
  RevenueStruct? _revenue;
  RevenueStruct get revenue => _revenue ?? RevenueStruct();
  set revenue(RevenueStruct? val) => _revenue = val;

  void updateRevenue(Function(RevenueStruct) updateFn) {
    updateFn(_revenue ??= RevenueStruct());
  }

  bool hasRevenue() => _revenue != null;

  // "consumers" field.
  ConsumersStruct? _consumers;
  ConsumersStruct get consumers => _consumers ?? ConsumersStruct();
  set consumers(ConsumersStruct? val) => _consumers = val;

  void updateConsumers(Function(ConsumersStruct) updateFn) {
    updateFn(_consumers ??= ConsumersStruct());
  }

  bool hasConsumers() => _consumers != null;

  static StatsStruct fromMap(Map<String, dynamic> data) => StatsStruct(
        recipesPublished: data['recipes_published'] is RecipesPublishedStruct
            ? data['recipes_published']
            : RecipesPublishedStruct.maybeFromMap(data['recipes_published']),
        mealsConsumed: data['meals_consumed'] is MealsConsumedStruct
            ? data['meals_consumed']
            : MealsConsumedStruct.maybeFromMap(data['meals_consumed']),
        likes: data['likes'] is LikesStruct
            ? data['likes']
            : LikesStruct.maybeFromMap(data['likes']),
        revenue: data['revenue'] is RevenueStruct
            ? data['revenue']
            : RevenueStruct.maybeFromMap(data['revenue']),
        consumers: data['consumers'] is ConsumersStruct
            ? data['consumers']
            : ConsumersStruct.maybeFromMap(data['consumers']),
      );

  static StatsStruct? maybeFromMap(dynamic data) =>
      data is Map ? StatsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'recipes_published': _recipesPublished?.toMap(),
        'meals_consumed': _mealsConsumed?.toMap(),
        'likes': _likes?.toMap(),
        'revenue': _revenue?.toMap(),
        'consumers': _consumers?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'recipes_published': serializeParam(
          _recipesPublished,
          ParamType.DataStruct,
        ),
        'meals_consumed': serializeParam(
          _mealsConsumed,
          ParamType.DataStruct,
        ),
        'likes': serializeParam(
          _likes,
          ParamType.DataStruct,
        ),
        'revenue': serializeParam(
          _revenue,
          ParamType.DataStruct,
        ),
        'consumers': serializeParam(
          _consumers,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static StatsStruct fromSerializableMap(Map<String, dynamic> data) =>
      StatsStruct(
        recipesPublished: deserializeStructParam(
          data['recipes_published'],
          ParamType.DataStruct,
          false,
          structBuilder: RecipesPublishedStruct.fromSerializableMap,
        ),
        mealsConsumed: deserializeStructParam(
          data['meals_consumed'],
          ParamType.DataStruct,
          false,
          structBuilder: MealsConsumedStruct.fromSerializableMap,
        ),
        likes: deserializeStructParam(
          data['likes'],
          ParamType.DataStruct,
          false,
          structBuilder: LikesStruct.fromSerializableMap,
        ),
        revenue: deserializeStructParam(
          data['revenue'],
          ParamType.DataStruct,
          false,
          structBuilder: RevenueStruct.fromSerializableMap,
        ),
        consumers: deserializeStructParam(
          data['consumers'],
          ParamType.DataStruct,
          false,
          structBuilder: ConsumersStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'StatsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StatsStruct &&
        recipesPublished == other.recipesPublished &&
        mealsConsumed == other.mealsConsumed &&
        likes == other.likes &&
        revenue == other.revenue &&
        consumers == other.consumers;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([recipesPublished, mealsConsumed, likes, revenue, consumers]);
}

StatsStruct createStatsStruct({
  RecipesPublishedStruct? recipesPublished,
  MealsConsumedStruct? mealsConsumed,
  LikesStruct? likes,
  RevenueStruct? revenue,
  ConsumersStruct? consumers,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StatsStruct(
      recipesPublished: recipesPublished ??
          (clearUnsetFields ? RecipesPublishedStruct() : null),
      mealsConsumed:
          mealsConsumed ?? (clearUnsetFields ? MealsConsumedStruct() : null),
      likes: likes ?? (clearUnsetFields ? LikesStruct() : null),
      revenue: revenue ?? (clearUnsetFields ? RevenueStruct() : null),
      consumers: consumers ?? (clearUnsetFields ? ConsumersStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StatsStruct? updateStatsStruct(
  StatsStruct? stats, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    stats
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStatsStructData(
  Map<String, dynamic> firestoreData,
  StatsStruct? stats,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (stats == null) {
    return;
  }
  if (stats.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && stats.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final statsData = getStatsFirestoreData(stats, forFieldValue);
  final nestedData = statsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = stats.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStatsFirestoreData(
  StatsStruct? stats, [
  bool forFieldValue = false,
]) {
  if (stats == null) {
    return {};
  }
  final firestoreData = mapToFirestore(stats.toMap());

  // Handle nested data for "recipes_published" field.
  addRecipesPublishedStructData(
    firestoreData,
    stats.hasRecipesPublished() ? stats.recipesPublished : null,
    'recipes_published',
    forFieldValue,
  );

  // Handle nested data for "meals_consumed" field.
  addMealsConsumedStructData(
    firestoreData,
    stats.hasMealsConsumed() ? stats.mealsConsumed : null,
    'meals_consumed',
    forFieldValue,
  );

  // Handle nested data for "likes" field.
  addLikesStructData(
    firestoreData,
    stats.hasLikes() ? stats.likes : null,
    'likes',
    forFieldValue,
  );

  // Handle nested data for "revenue" field.
  addRevenueStructData(
    firestoreData,
    stats.hasRevenue() ? stats.revenue : null,
    'revenue',
    forFieldValue,
  );

  // Handle nested data for "consumers" field.
  addConsumersStructData(
    firestoreData,
    stats.hasConsumers() ? stats.consumers : null,
    'consumers',
    forFieldValue,
  );

  // Add any Firestore field values
  stats.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStatsListFirestoreData(
  List<StatsStruct>? statss,
) =>
    statss?.map((e) => getStatsFirestoreData(e, true)).toList() ?? [];
