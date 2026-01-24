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
