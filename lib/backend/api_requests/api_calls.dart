import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start supabase Group Code

class SupabaseGroup {
  static String getBaseUrl({
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    return '${apiUrl}';
  }

  static Map<String, String> headers = {
    'Authorization': 'Bearer [ApiKey]',
  };
  static ReceipeinfoCall receipeinfoCall = ReceipeinfoCall();
  static ReceipeTypeCall receipeTypeCall = ReceipeTypeCall();
  static ReceipeTypeModificationCall receipeTypeModificationCall =
      ReceipeTypeModificationCall();
  static ReceipeConsumptionCall receipeConsumptionCall =
      ReceipeConsumptionCall();
  static FoodRegionTrendingReceipeCall foodRegionTrendingReceipeCall =
      FoodRegionTrendingReceipeCall();
  static TrendingTagCall trendingTagCall = TrendingTagCall();
  static TrendingReceipeByTagsCall trendingReceipeByTagsCall =
      TrendingReceipeByTagsCall();
  static TemporaryReceipeTypeCall temporaryReceipeTypeCall =
      TemporaryReceipeTypeCall();
  static TemporaryReceipeTypeModificationCall
      temporaryReceipeTypeModificationCall =
      TemporaryReceipeTypeModificationCall();
  static TrendingFoodingRegionCall trendingFoodingRegionCall =
      TrendingFoodingRegionCall();
  static ReferralCreationCall referralCreationCall = ReferralCreationCall();
  static ReceipeCleanerCall receipeCleanerCall = ReceipeCleanerCall();
  static ReceipeCountCall receipeCountCall = ReceipeCountCall();
  static PublishReceipeCall publishReceipeCall = PublishReceipeCall();
  static StepReorderingCall stepReorderingCall = StepReorderingCall();
  static IngredientReorderingCall ingredientReorderingCall =
      IngredientReorderingCall();
  static StepManagementCall stepManagementCall = StepManagementCall();
  static IngredientManagementCall ingredientManagementCall =
      IngredientManagementCall();
  static DeleteStepCall deleteStepCall = DeleteStepCall();
  static SelectStepTemporaryReceipeCall selectStepTemporaryReceipeCall =
      SelectStepTemporaryReceipeCall();
  static SelectStepReceipeCall selectStepReceipeCall = SelectStepReceipeCall();
  static SelectIngredientCall selectIngredientCall = SelectIngredientCall();
  static UpdateIngredientIndexCall updateIngredientIndexCall =
      UpdateIngredientIndexCall();
  static HardDeleteRecipeCall hardDeleteRecipeCall = HardDeleteRecipeCall();
  static CreatoRecipeStatsCall creatoRecipeStatsCall = CreatoRecipeStatsCall();
  static GetCompleteRecipeDataCall getCompleteRecipeDataCall =
      GetCompleteRecipeDataCall();
  static GetCreatorRecipesCall getCreatorRecipesCall = GetCreatorRecipesCall();
  static GetRecipesDetailsCall getRecipesDetailsCall = GetRecipesDetailsCall();
  static GetDashboardStatsCall getDashboardStatsCall = GetDashboardStatsCall();
  static GetMonthlyDashboardCall getMonthlyDashboardCall =
      GetMonthlyDashboardCall();
  static GetRecipesPerfomancesCall getRecipesPerfomancesCall =
      GetRecipesPerfomancesCall();
  static GetPaymentHistoryCall getPaymentHistoryCall = GetPaymentHistoryCall();
  static GetMonthlyReferralRevenueCall getMonthlyReferralRevenueCall =
      GetMonthlyReferralRevenueCall();
  static GetUserReferralCodeCall getUserReferralCodeCall =
      GetUserReferralCodeCall();
  static GetRecipesStepsCall getRecipesStepsCall = GetRecipesStepsCall();
  static GetRecipeIngredientsCall getRecipeIngredientsCall =
      GetRecipeIngredientsCall();
  static GetCreatorWeeklyChartCall getCreatorWeeklyChartCall =
      GetCreatorWeeklyChartCall();
  static GetRecipeWeeklyChartCall getRecipeWeeklyChartCall =
      GetRecipeWeeklyChartCall();
  static TemporaryRecipeCleanerCall temporaryRecipeCleanerCall =
      TemporaryRecipeCleanerCall();
}

class ReceipeinfoCall {
  Future<ApiCallResponse> call({
    String? text = '',
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "recipe_id": "${receipeId}",
  "text": "${escapeStringForJson(text)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'receipeinfo',
      apiUrl: '${baseUrl}/functions/v1/hyper-endpoint',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ReceipeTypeCall {
  Future<ApiCallResponse> call({
    bool? isIn,
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "receipe_id": "${receipeId}",
  "type": "${escapeStringForJson(type)}",
  "is_in": ${isIn}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'receipe type',
      apiUrl: '${baseUrl}/functions/v1/receiep_type',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? result(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.result''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  String? receipeId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.receipe_id''',
      ));
  List<String>? currentTypes(dynamic response) => (getJsonField(
        response,
        r'''$.current_types''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ReceipeTypeModificationCall {
  Future<ApiCallResponse> call({
    bool? isIn,
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "receipe_id": "${receipeId}",
  "type": "${escapeStringForJson(type)}",
  "is_in": "${isIn}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'receipe type modification',
      apiUrl: '${baseUrl}/functions/v1/receipe_type_modification',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? receipeIdString(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.receipe_id''',
      ));
  String? action(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.action''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  bool? succes(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  List<String>? previousType(dynamic response) => (getJsonField(
        response,
        r'''$.previous_types''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? updatedType(dynamic response) => (getJsonField(
        response,
        r'''$.updated_types''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  dynamic receipe(dynamic response) => getJsonField(
        response,
        r'''$.recipe''',
      );
  int? receipeIdInt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.recipe.id''',
      ));
  List<String>? receipeTypes(dynamic response) => (getJsonField(
        response,
        r'''$.recipe.type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ReceipeConsumptionCall {
  Future<ApiCallResponse> call({
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "creator_id": "${escapeStringForJson(creatorId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'receipe consumption',
      apiUrl: '${baseUrl}/functions/v1/receipe_consumption',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? receipes(dynamic response) => getJsonField(
        response,
        r'''$.recipes''',
        true,
      ) as List?;
  int? totalCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total_consumption_count''',
      ));
  String? creatorID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.creator_id''',
      ));
  List<int>? receipeID(dynamic response) => (getJsonField(
        response,
        r'''$.recipes[:].receipe_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? receipeName(dynamic response) => (getJsonField(
        response,
        r'''$.recipes[:].receipe_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? consumptionCount(dynamic response) => (getJsonField(
        response,
        r'''$.recipes[:].consumption_count''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class FoodRegionTrendingReceipeCall {
  Future<ApiCallResponse> call({
    String? foodRegion = '',
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "food_region": "${escapeStringForJson(foodRegion)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'food region trending receipe',
      apiUrl: '${baseUrl}/functions/v1/smart-worker',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? receipeList(dynamic response) => getJsonField(
        response,
        r'''$.recipes''',
        true,
      ) as List?;
}

class TrendingTagCall {
  Future<ApiCallResponse> call({
    String? tagName = '',
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "tag_name": "${escapeStringForJson(tagName)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'trending tag',
      apiUrl: '${baseUrl}/functions/v1/trending_tags',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? tagsList(dynamic response) => getJsonField(
        response,
        r'''$.tags''',
        true,
      ) as List?;
  int? totalCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.tags[:].total_consumption_count''',
      ));
  String? tagName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tags[:].tag_name''',
      ));
  int? receipeCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.tags[:].recipe_count''',
      ));
}

class TrendingReceipeByTagsCall {
  Future<ApiCallResponse> call({
    String? tagName = '',
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "tag_name": "${escapeStringForJson(tagName)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'trending receipe by tags',
      apiUrl: '${baseUrl}/functions/v1/trending_receipe_by_tag',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? receipesList(dynamic response) => getJsonField(
        response,
        r'''$.recipes''',
        true,
      ) as List?;
  List<int>? receipesIds(dynamic response) => (getJsonField(
        response,
        r'''$.recipes[:].receipe_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? receipesName(dynamic response) => (getJsonField(
        response,
        r'''$.recipes[:].receipe_name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? consumptionCount(dynamic response) => (getJsonField(
        response,
        r'''$.recipes[:].consumption_count''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List? tags(dynamic response) => getJsonField(
        response,
        r'''$.recipes[:].tags''',
        true,
      ) as List?;
  List<String>? tagsName(dynamic response) => (getJsonField(
        response,
        r'''$.recipes[:].tags[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List? tagsColor(dynamic response) => getJsonField(
        response,
        r'''$.recipes[:].tags[:].color''',
        true,
      ) as List?;
}

class TemporaryReceipeTypeCall {
  Future<ApiCallResponse> call({
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "receipe_id": "${receipeId}",
  "type": "${escapeStringForJson(type)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'temporary receipe type ',
      apiUrl: '${baseUrl}/functions/v1/temporary_receipe_type',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? result(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.result''',
      ));
  String? receipeId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.receipe_id''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  List<String>? currentType(dynamic response) => (getJsonField(
        response,
        r'''$.current_types''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class TemporaryReceipeTypeModificationCall {
  Future<ApiCallResponse> call({
    bool? isIn,
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "receipe_id": "${receipeId}",
  "type": "${escapeStringForJson(type)}",
  "is_in": ${isIn}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'temporary receipe type modification',
      apiUrl: '${baseUrl}/functions/v1/dynamic-action',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? receipeIdString(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.receipe_id''',
      ));
  String? action(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.action''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.type''',
      ));
  List? previousType(dynamic response) => getJsonField(
        response,
        r'''$.previous_types''',
        true,
      ) as List?;
  List<String>? updateType(dynamic response) => (getJsonField(
        response,
        r'''$.updated_types''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  dynamic receipe(dynamic response) => getJsonField(
        response,
        r'''$.recipe''',
      );
  int? receipeIdInt(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.recipe.id''',
      ));
  List<String>? receipeType(dynamic response) => (getJsonField(
        response,
        r'''$.recipe.type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class TrendingFoodingRegionCall {
  Future<ApiCallResponse> call({
    String? foodRegion = '',
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "food_region": "${escapeStringForJson(foodRegion)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'trending fooding region',
      apiUrl: '${baseUrl}/functions/v1/receipe_trend',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? region(dynamic response) => getJsonField(
        response,
        r'''$.regions''',
        true,
      ) as List?;
  String? foodRegion(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.regions[:].food_region''',
      ));
  int? consumptionCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.regions[:].total_consumption_count''',
      ));
  int? receipeCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.regions[:].recipe_count''',
      ));
}

class ReferralCreationCall {
  Future<ApiCallResponse> call({
    String? action = '',
    String? authId = '',
    String? name = '',
    String? customName = '',
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "action": "${escapeStringForJson(action)}",
  "custom_name": "${escapeStringForJson(customName)}", "name":"${escapeStringForJson(name)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'referral creation',
      apiUrl: '${baseUrl}/functions/v1/cre',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ReceipeCleanerCall {
  Future<ApiCallResponse> call({
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "recipe_id": "${receipeId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'receipe cleaner',
      apiUrl: '${baseUrl}/functions/v1/receipe_cleaner',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? description(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  int? receipeId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.recipe_id''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.name''',
      ));
  List? steps(dynamic response) => getJsonField(
        response,
        r'''$.steps''',
        true,
      ) as List?;
  List<int>? stepNumber(dynamic response) => (getJsonField(
        response,
        r'''$.steps[:].step_number''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? instruction(dynamic response) => (getJsonField(
        response,
        r'''$.steps[:].instruction''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  bool? succes(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ReceipeCountCall {
  Future<ApiCallResponse> call({
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "receipe_id": ${receipeId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'receipe count',
      apiUrl: '${baseUrl}/functions/v1/hyper-responder',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  dynamic receipe(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.receipe_id''',
      ));
  String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.receipe_name''',
      ));
  String? creatorId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.creator_id''',
      ));
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.consumption_count''',
      ));
}

class PublishReceipeCall {
  Future<ApiCallResponse> call({
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "temporaryRecipeId": ${receipeId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'publish receipe',
      apiUrl: '${baseUrl}/functions/v1/publish_recipe',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? receipeID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.recipe.id''',
      ));
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  dynamic receipe(dynamic response) => getJsonField(
        response,
        r'''$.recipe''',
      );
}

class StepReorderingCall {
  Future<ApiCallResponse> call({
    String? stepId = '',
    int? newIndex,
    int? temporaryReceipId,
    dynamic stepsJson,
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final steps = _serializeJson(stepsJson, true);
    final ffApiRequestBody = '''
{
  "temporary_recipe_id": ${temporaryReceipId},
  "recipe_id": ${receipeId},
  "steps": ${steps}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'step reordering',
      apiUrl: '${baseUrl}/functions/v1/step_index_management',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? index(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.data.index''',
      ));
  String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.id''',
      ));
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
}

class IngredientReorderingCall {
  Future<ApiCallResponse> call({
    String? ingredientId = '',
    int? newIndex,
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "ingredient_id": "${escapeStringForJson(ingredientId)}",
  "new_index": ${newIndex}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ingredient reordering',
      apiUrl: '${baseUrl}/functions/v1/ingredient-reordering',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class StepManagementCall {
  Future<ApiCallResponse> call({
    String? stepId = '',
    String? action = '',
    String? text = '',
    bool? title,
    int? targetIndex,
    int? temporaryReceipeId = 0,
    int? number,
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "action": "${escapeStringForJson(action)}",
  "text": "${escapeStringForJson(text)}",
  "receipe_id": ${receipeId},
  "temprorary_receipe_id": ${temporaryReceipeId},
  "target_index": ${targetIndex},
  "title": ${title},
  "number": ${number}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'step management',
      apiUrl: '${baseUrl}/functions/v1/step_index_management',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.success''',
      ));
  String? stepID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.id''',
      ));
}

class IngredientManagementCall {
  Future<ApiCallResponse> call({
    String? ingredientId = '',
    String? action = '',
    int? updateIndex,
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "action": "${escapeStringForJson(action)}",
  "ingredient_id": "${escapeStringForJson(ingredientId)}",
  "update_index": ${updateIndex}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ingredient management',
      apiUrl: '${baseUrl}/functions/v1/modify_ingredients_index',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteStepCall {
  Future<ApiCallResponse> call({
    String? stepId = '',
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "action": "delete",
  "step_id": "${escapeStringForJson(stepId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'delete step',
      apiUrl: '${baseUrl}/functions/v1/step_index_management',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SelectStepTemporaryReceipeCall {
  Future<ApiCallResponse> call({
    int? temporaryReceipeId,
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "action": "select",
  "temprorary_receipe_id": ${temporaryReceipeId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'select step temporary receipe',
      apiUrl: '${baseUrl}/functions/v1/step_index_management',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? steps(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  List<String>? stepsID(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? indexes(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].index''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.count''',
      ));
  List? numbers(dynamic response) => getJsonField(
        response,
        r'''$.data[:].number''',
        true,
      ) as List?;
}

class SelectStepReceipeCall {
  Future<ApiCallResponse> call({
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "action": "select",
  "receipe_id": ${receipeId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'select step receipe',
      apiUrl: '${baseUrl}/functions/v1/step_index_management',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? step(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.count''',
      ));
}

class SelectIngredientCall {
  Future<ApiCallResponse> call({
    int? temporaryReceipeId,
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "action": "select",
  "receipe_id": "${receipeId}",
  "temporary_receipe_id": "${temporaryReceipeId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'select ingredient',
      apiUrl: '${baseUrl}/functions/v1/modify_ingredients_index',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? ingedient(dynamic response) => getJsonField(
        response,
        r'''$.data''',
        true,
      ) as List?;
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.count''',
      ));
  List<String>? ids(dynamic response) => (getJsonField(
        response,
        r'''$.data[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class UpdateIngredientIndexCall {
  Future<ApiCallResponse> call({
    int? temporaryReceipeId,
    dynamic ingredientsJson,
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ingredients = _serializeJson(ingredientsJson, true);
    final ffApiRequestBody = '''
{
  "recipe_id": ${receipeId},
  "temporary_recipe_id": ${temporaryReceipeId},
  "ingredients":${ingredients}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update ingredient index',
      apiUrl: '${baseUrl}/functions/v1/modify_ingredients_index',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class HardDeleteRecipeCall {
  Future<ApiCallResponse> call({
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "recipe_id": ${receipeId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'hard delete recipe',
      apiUrl: '${baseUrl}/functions/v1/hard-delete-recipe',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreatoRecipeStatsCall {
  Future<ApiCallResponse> call({
    String? period = '',
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "creator_id": "${escapeStringForJson(creatorId)}",
  "period": "${escapeStringForJson(period)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'creato recipe stats',
      apiUrl: '${baseUrl}/functions/v1/creator-recipe-stats',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? dailyConsumption(dynamic response) => getJsonField(
        response,
        r'''$.daily_consumption''',
        true,
      ) as List?;
  List<int>? counts(dynamic response) => (getJsonField(
        response,
        r'''$.daily_consumption[:].count''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? dates(dynamic response) => (getJsonField(
        response,
        r'''$.daily_consumption[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? startDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.start_date''',
      ));
  String? period(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.period''',
      ));
  String? endDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.end_date''',
      ));
  int? totalConsumed(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total_consumed''',
      ));
  int? revenueEarned(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.revenue_earned''',
      ));
  int? progress(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.progress_to_next_euro''',
      ));
}

class GetCompleteRecipeDataCall {
  Future<ApiCallResponse> call({
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "recipe_id": ${receipeId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get complete recipe data',
      apiUrl: '${baseUrl}/functions/v1/get-complete-recipe-data',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCreatorRecipesCall {
  Future<ApiCallResponse> call({
    String? name = '',
    String? sort = '',
    String? filter = '',
    String? region = '',
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "creator_id": "${escapeStringForJson(creatorId)}",
  "sort_by": "${escapeStringForJson(sort)}",
  "filter": "${escapeStringForJson(filter)}",
  "search_name": "${escapeStringForJson(name)}",
  "food_region": "${escapeStringForJson(region)}",
  "recipe_type": "${escapeStringForJson(type)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get creator recipes',
      apiUrl: '${baseUrl}/functions/v1/get-creator-recipes',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? recipes(dynamic response) => getJsonField(
        response,
        r'''$.recipes''',
        true,
      ) as List?;
  int? published(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.published_count''',
      ));
  int? totalCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total_count''',
      ));
  int? teporaryCount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.temporary_count''',
      ));
  int? totalConsumer(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.creator_stats.total_consumers''',
      ));
  double? totalRevenue(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.creator_stats.total_revenue''',
      ));
}

class GetRecipesDetailsCall {
  Future<ApiCallResponse> call({
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{"recipe_id":${receipeId}}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get recipes details',
      apiUrl: '${baseUrl}/functions/v1/get-recipes-details',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? chartData(dynamic response) => getJsonField(
        response,
        r'''$.recipe.current_week.chart_data''',
        true,
      ) as List?;
  List<String>? label(dynamic response) => (getJsonField(
        response,
        r'''$.recipe.current_week.chart_data[:].label''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? value(dynamic response) => (getJsonField(
        response,
        r'''$.recipe.current_week.chart_data[:].value''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetDashboardStatsCall {
  Future<ApiCallResponse> call({
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "creator_id": "${escapeStringForJson(creatorId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get dashboard stats',
      apiUrl: '${baseUrl}/functions/v1/get-dashboard-stats',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMonthlyDashboardCall {
  Future<ApiCallResponse> call({
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "creator_id": "${escapeStringForJson(creatorId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get monthly dashboard',
      apiUrl: '${baseUrl}/functions/v1/get-monthly-dashboard',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic dailyMealConsumed(dynamic response) => getJsonField(
        response,
        r'''$.daily_meals_consumed''',
      );
}

class GetRecipesPerfomancesCall {
  Future<ApiCallResponse> call({
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "creator_id": "${escapeStringForJson(creatorId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get recipes perfomances',
      apiUrl: '${baseUrl}/functions/v1/get-recipes-perfomaces',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetPaymentHistoryCall {
  Future<ApiCallResponse> call({
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "creator_id": "${escapeStringForJson(creatorId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get payment history',
      apiUrl: '${baseUrl}/functions/v1/get-payment-history',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMonthlyReferralRevenueCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "user_id": ${userId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get monthly referral revenue',
      apiUrl: '${baseUrl}/functions/v1/get-monthly-referral-revenue',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? month(dynamic response) => (getJsonField(
        response,
        r'''$.monthly_data[:].month''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? revenue(dynamic response) => (getJsonField(
        response,
        r'''$.monthly_data[:].revenue''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class GetUserReferralCodeCall {
  Future<ApiCallResponse> call({
    int? userId,
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "user_id": ${userId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get user referral code',
      apiUrl: '${baseUrl}/functions/v1/get-user-referral-code',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRecipesStepsCall {
  Future<ApiCallResponse> call({
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "recipe_id": ${receipeId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get recipes steps',
      apiUrl: '${baseUrl}/functions/v1/get-recipe-steps',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? steps(dynamic response) => getJsonField(
        response,
        r'''$.steps_data''',
        true,
      ) as List?;
}

class GetRecipeIngredientsCall {
  Future<ApiCallResponse> call({
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "recipe_id": ${receipeId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get recipe ingredients',
      apiUrl: '${baseUrl}/functions/v1/get-recipe-ingredients',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? ingreients(dynamic response) => getJsonField(
        response,
        r'''$.ingredients_data''',
        true,
      ) as List?;
}

class GetCreatorWeeklyChartCall {
  Future<ApiCallResponse> call({
    int? year = 0,
    int? weekNumber = 0,
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "creator_id": "${escapeStringForJson(creatorId)}",
  "week_number": ${weekNumber},
  "year": ${year}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get creator weekly chart',
      apiUrl: '${baseUrl}/functions/v1/get-creator-weekly-chart',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRecipeWeeklyChartCall {
  Future<ApiCallResponse> call({
    int? weekNumber = 0,
    int? year = 0,
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "recipe_id": ${receipeId},
  "week_number": ${weekNumber},
  "year": ${year}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'get recipe weekly chart',
      apiUrl: '${baseUrl}/functions/v1/get-recipe-weekly-chart',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class TemporaryRecipeCleanerCall {
  Future<ApiCallResponse> call({
    String? creatorId = '',
    int? receipeId,
    String? apiKey,
    String? apiUrl,
    String? type = '',
  }) async {
    apiKey ??= FFDevEnvironmentValues().ApiKey;
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    final baseUrl = SupabaseGroup.getBaseUrl(
      creatorId: creatorId,
      receipeId: receipeId,
      apiKey: apiKey,
      apiUrl: apiUrl,
      type: type,
    );

    final ffApiRequestBody = '''
{
  "recipe_id": ${receipeId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'temporary recipe cleaner',
      apiUrl: '${baseUrl}/functions/v1/dynamic-processor',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End supabase Group Code

class TestCall {
  static Future<ApiCallResponse> call({
    int? userId,
    String? message = '',
    String? conversationId = '',
    dynamic jsonJson,
  }) async {
    final json = _serializeJson(jsonJson, true);
    final ffApiRequestBody = '''
{
  "message": "${escapeStringForJson(message)}",
  "user_id": 1,
  "conversation_id": "${escapeStringForJson(conversationId)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'test',
      apiUrl:
          'https://jfbfymiyqlyciapfloug.supabase.co/functions/v1/AI_chatbot',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpmYmZ5bWl5cWx5Y2lhcGZsb3VnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDQ1MzcwMDIsImV4cCI6MjA2MDExMzAwMn0.zm4ioJc07IAec0e5-0PsWyAXDAp1U42NA1kReoRdhbU',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? reply(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.reply''',
      ));
}

class HelloCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? apiUrl,
    String? apiKey,
  }) async {
    apiUrl ??= FFDevEnvironmentValues().ApiUrl;
    apiKey ??= FFDevEnvironmentValues().ApiKey;

    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(name)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'hello',
      apiUrl: '${apiUrl}/functions/v1/super-responder',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
