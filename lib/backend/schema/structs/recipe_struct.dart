// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecipeStruct extends FFFirebaseStruct {
  RecipeStruct({
    int? id,
    String? name,
    String? description,
    String? foodRegion,
    List<String>? recipeTypes,
    String? difficulty,
    String? publishedAt,
    String? createdAt,
    bool? isPublished,
    String? isFree,
    int? timeOfCookingMin,
    int? timeOfCookingHour,
    int? likeCount,
    int? commentCount,
    int? totalMealsConsumed,
    int? totalEarnings,
    int? totalIndividualConsumers,
    int? avgRating,
    int? totalRatingsCount,
    int? rating1Count,
    int? rating2Count,
    int? rating3Count,
    int? rating4Count,
    int? rating5Count,
    CurrentWeekStruct? currentWeek,
    Last30DaysStruct? last30Days,
    String? lastConsumedDate,
    String? lastConsumedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _description = description,
        _foodRegion = foodRegion,
        _recipeTypes = recipeTypes,
        _difficulty = difficulty,
        _publishedAt = publishedAt,
        _createdAt = createdAt,
        _isPublished = isPublished,
        _isFree = isFree,
        _timeOfCookingMin = timeOfCookingMin,
        _timeOfCookingHour = timeOfCookingHour,
        _likeCount = likeCount,
        _commentCount = commentCount,
        _totalMealsConsumed = totalMealsConsumed,
        _totalEarnings = totalEarnings,
        _totalIndividualConsumers = totalIndividualConsumers,
        _avgRating = avgRating,
        _totalRatingsCount = totalRatingsCount,
        _rating1Count = rating1Count,
        _rating2Count = rating2Count,
        _rating3Count = rating3Count,
        _rating4Count = rating4Count,
        _rating5Count = rating5Count,
        _currentWeek = currentWeek,
        _last30Days = last30Days,
        _lastConsumedDate = lastConsumedDate,
        _lastConsumedAt = lastConsumedAt,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "food_region" field.
  String? _foodRegion;
  String get foodRegion => _foodRegion ?? '';
  set foodRegion(String? val) => _foodRegion = val;

  bool hasFoodRegion() => _foodRegion != null;

  // "recipe_types" field.
  List<String>? _recipeTypes;
  List<String> get recipeTypes => _recipeTypes ?? const [];
  set recipeTypes(List<String>? val) => _recipeTypes = val;

  void updateRecipeTypes(Function(List<String>) updateFn) {
    updateFn(_recipeTypes ??= []);
  }

  bool hasRecipeTypes() => _recipeTypes != null;

  // "difficulty" field.
  String? _difficulty;
  String get difficulty => _difficulty ?? '';
  set difficulty(String? val) => _difficulty = val;

  bool hasDifficulty() => _difficulty != null;

  // "published_at" field.
  String? _publishedAt;
  String get publishedAt => _publishedAt ?? '';
  set publishedAt(String? val) => _publishedAt = val;

  bool hasPublishedAt() => _publishedAt != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "is_published" field.
  bool? _isPublished;
  bool get isPublished => _isPublished ?? false;
  set isPublished(bool? val) => _isPublished = val;

  bool hasIsPublished() => _isPublished != null;

  // "is_free" field.
  String? _isFree;
  String get isFree => _isFree ?? '';
  set isFree(String? val) => _isFree = val;

  bool hasIsFree() => _isFree != null;

  // "time_of_cooking_min" field.
  int? _timeOfCookingMin;
  int get timeOfCookingMin => _timeOfCookingMin ?? 0;
  set timeOfCookingMin(int? val) => _timeOfCookingMin = val;

  void incrementTimeOfCookingMin(int amount) =>
      timeOfCookingMin = timeOfCookingMin + amount;

  bool hasTimeOfCookingMin() => _timeOfCookingMin != null;

  // "time_of_cooking_hour" field.
  int? _timeOfCookingHour;
  int get timeOfCookingHour => _timeOfCookingHour ?? 0;
  set timeOfCookingHour(int? val) => _timeOfCookingHour = val;

  void incrementTimeOfCookingHour(int amount) =>
      timeOfCookingHour = timeOfCookingHour + amount;

  bool hasTimeOfCookingHour() => _timeOfCookingHour != null;

  // "like_count" field.
  int? _likeCount;
  int get likeCount => _likeCount ?? 0;
  set likeCount(int? val) => _likeCount = val;

  void incrementLikeCount(int amount) => likeCount = likeCount + amount;

  bool hasLikeCount() => _likeCount != null;

  // "comment_count" field.
  int? _commentCount;
  int get commentCount => _commentCount ?? 0;
  set commentCount(int? val) => _commentCount = val;

  void incrementCommentCount(int amount) =>
      commentCount = commentCount + amount;

  bool hasCommentCount() => _commentCount != null;

  // "total_meals_consumed" field.
  int? _totalMealsConsumed;
  int get totalMealsConsumed => _totalMealsConsumed ?? 0;
  set totalMealsConsumed(int? val) => _totalMealsConsumed = val;

  void incrementTotalMealsConsumed(int amount) =>
      totalMealsConsumed = totalMealsConsumed + amount;

  bool hasTotalMealsConsumed() => _totalMealsConsumed != null;

  // "total_earnings" field.
  int? _totalEarnings;
  int get totalEarnings => _totalEarnings ?? 0;
  set totalEarnings(int? val) => _totalEarnings = val;

  void incrementTotalEarnings(int amount) =>
      totalEarnings = totalEarnings + amount;

  bool hasTotalEarnings() => _totalEarnings != null;

  // "total_individual_consumers" field.
  int? _totalIndividualConsumers;
  int get totalIndividualConsumers => _totalIndividualConsumers ?? 0;
  set totalIndividualConsumers(int? val) => _totalIndividualConsumers = val;

  void incrementTotalIndividualConsumers(int amount) =>
      totalIndividualConsumers = totalIndividualConsumers + amount;

  bool hasTotalIndividualConsumers() => _totalIndividualConsumers != null;

  // "avg_rating" field.
  int? _avgRating;
  int get avgRating => _avgRating ?? 0;
  set avgRating(int? val) => _avgRating = val;

  void incrementAvgRating(int amount) => avgRating = avgRating + amount;

  bool hasAvgRating() => _avgRating != null;

  // "total_ratings_count" field.
  int? _totalRatingsCount;
  int get totalRatingsCount => _totalRatingsCount ?? 0;
  set totalRatingsCount(int? val) => _totalRatingsCount = val;

  void incrementTotalRatingsCount(int amount) =>
      totalRatingsCount = totalRatingsCount + amount;

  bool hasTotalRatingsCount() => _totalRatingsCount != null;

  // "rating1_count" field.
  int? _rating1Count;
  int get rating1Count => _rating1Count ?? 0;
  set rating1Count(int? val) => _rating1Count = val;

  void incrementRating1Count(int amount) =>
      rating1Count = rating1Count + amount;

  bool hasRating1Count() => _rating1Count != null;

  // "rating2_count" field.
  int? _rating2Count;
  int get rating2Count => _rating2Count ?? 0;
  set rating2Count(int? val) => _rating2Count = val;

  void incrementRating2Count(int amount) =>
      rating2Count = rating2Count + amount;

  bool hasRating2Count() => _rating2Count != null;

  // "rating3_count" field.
  int? _rating3Count;
  int get rating3Count => _rating3Count ?? 0;
  set rating3Count(int? val) => _rating3Count = val;

  void incrementRating3Count(int amount) =>
      rating3Count = rating3Count + amount;

  bool hasRating3Count() => _rating3Count != null;

  // "rating4_count" field.
  int? _rating4Count;
  int get rating4Count => _rating4Count ?? 0;
  set rating4Count(int? val) => _rating4Count = val;

  void incrementRating4Count(int amount) =>
      rating4Count = rating4Count + amount;

  bool hasRating4Count() => _rating4Count != null;

  // "rating5_count" field.
  int? _rating5Count;
  int get rating5Count => _rating5Count ?? 0;
  set rating5Count(int? val) => _rating5Count = val;

  void incrementRating5Count(int amount) =>
      rating5Count = rating5Count + amount;

  bool hasRating5Count() => _rating5Count != null;

  // "current_week" field.
  CurrentWeekStruct? _currentWeek;
  CurrentWeekStruct get currentWeek => _currentWeek ?? CurrentWeekStruct();
  set currentWeek(CurrentWeekStruct? val) => _currentWeek = val;

  void updateCurrentWeek(Function(CurrentWeekStruct) updateFn) {
    updateFn(_currentWeek ??= CurrentWeekStruct());
  }

  bool hasCurrentWeek() => _currentWeek != null;

  // "last_30_days" field.
  Last30DaysStruct? _last30Days;
  Last30DaysStruct get last30Days => _last30Days ?? Last30DaysStruct();
  set last30Days(Last30DaysStruct? val) => _last30Days = val;

  void updateLast30Days(Function(Last30DaysStruct) updateFn) {
    updateFn(_last30Days ??= Last30DaysStruct());
  }

  bool hasLast30Days() => _last30Days != null;

  // "last_consumed_date" field.
  String? _lastConsumedDate;
  String get lastConsumedDate => _lastConsumedDate ?? '';
  set lastConsumedDate(String? val) => _lastConsumedDate = val;

  bool hasLastConsumedDate() => _lastConsumedDate != null;

  // "last_consumed_at" field.
  String? _lastConsumedAt;
  String get lastConsumedAt => _lastConsumedAt ?? '';
  set lastConsumedAt(String? val) => _lastConsumedAt = val;

  bool hasLastConsumedAt() => _lastConsumedAt != null;

  static RecipeStruct fromMap(Map<String, dynamic> data) => RecipeStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        description: data['description'] as String?,
        foodRegion: data['food_region'] as String?,
        recipeTypes: getDataList(data['recipe_types']),
        difficulty: data['difficulty'] as String?,
        publishedAt: data['published_at'] as String?,
        createdAt: data['created_at'] as String?,
        isPublished: data['is_published'] as bool?,
        isFree: data['is_free'] as String?,
        timeOfCookingMin: castToType<int>(data['time_of_cooking_min']),
        timeOfCookingHour: castToType<int>(data['time_of_cooking_hour']),
        likeCount: castToType<int>(data['like_count']),
        commentCount: castToType<int>(data['comment_count']),
        totalMealsConsumed: castToType<int>(data['total_meals_consumed']),
        totalEarnings: castToType<int>(data['total_earnings']),
        totalIndividualConsumers:
            castToType<int>(data['total_individual_consumers']),
        avgRating: castToType<int>(data['avg_rating']),
        totalRatingsCount: castToType<int>(data['total_ratings_count']),
        rating1Count: castToType<int>(data['rating1_count']),
        rating2Count: castToType<int>(data['rating2_count']),
        rating3Count: castToType<int>(data['rating3_count']),
        rating4Count: castToType<int>(data['rating4_count']),
        rating5Count: castToType<int>(data['rating5_count']),
        currentWeek: data['current_week'] is CurrentWeekStruct
            ? data['current_week']
            : CurrentWeekStruct.maybeFromMap(data['current_week']),
        last30Days: data['last_30_days'] is Last30DaysStruct
            ? data['last_30_days']
            : Last30DaysStruct.maybeFromMap(data['last_30_days']),
        lastConsumedDate: data['last_consumed_date'] as String?,
        lastConsumedAt: data['last_consumed_at'] as String?,
      );

  static RecipeStruct? maybeFromMap(dynamic data) =>
      data is Map ? RecipeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'description': _description,
        'food_region': _foodRegion,
        'recipe_types': _recipeTypes,
        'difficulty': _difficulty,
        'published_at': _publishedAt,
        'created_at': _createdAt,
        'is_published': _isPublished,
        'is_free': _isFree,
        'time_of_cooking_min': _timeOfCookingMin,
        'time_of_cooking_hour': _timeOfCookingHour,
        'like_count': _likeCount,
        'comment_count': _commentCount,
        'total_meals_consumed': _totalMealsConsumed,
        'total_earnings': _totalEarnings,
        'total_individual_consumers': _totalIndividualConsumers,
        'avg_rating': _avgRating,
        'total_ratings_count': _totalRatingsCount,
        'rating1_count': _rating1Count,
        'rating2_count': _rating2Count,
        'rating3_count': _rating3Count,
        'rating4_count': _rating4Count,
        'rating5_count': _rating5Count,
        'current_week': _currentWeek?.toMap(),
        'last_30_days': _last30Days?.toMap(),
        'last_consumed_date': _lastConsumedDate,
        'last_consumed_at': _lastConsumedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'food_region': serializeParam(
          _foodRegion,
          ParamType.String,
        ),
        'recipe_types': serializeParam(
          _recipeTypes,
          ParamType.String,
          isList: true,
        ),
        'difficulty': serializeParam(
          _difficulty,
          ParamType.String,
        ),
        'published_at': serializeParam(
          _publishedAt,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'is_published': serializeParam(
          _isPublished,
          ParamType.bool,
        ),
        'is_free': serializeParam(
          _isFree,
          ParamType.String,
        ),
        'time_of_cooking_min': serializeParam(
          _timeOfCookingMin,
          ParamType.int,
        ),
        'time_of_cooking_hour': serializeParam(
          _timeOfCookingHour,
          ParamType.int,
        ),
        'like_count': serializeParam(
          _likeCount,
          ParamType.int,
        ),
        'comment_count': serializeParam(
          _commentCount,
          ParamType.int,
        ),
        'total_meals_consumed': serializeParam(
          _totalMealsConsumed,
          ParamType.int,
        ),
        'total_earnings': serializeParam(
          _totalEarnings,
          ParamType.int,
        ),
        'total_individual_consumers': serializeParam(
          _totalIndividualConsumers,
          ParamType.int,
        ),
        'avg_rating': serializeParam(
          _avgRating,
          ParamType.int,
        ),
        'total_ratings_count': serializeParam(
          _totalRatingsCount,
          ParamType.int,
        ),
        'rating1_count': serializeParam(
          _rating1Count,
          ParamType.int,
        ),
        'rating2_count': serializeParam(
          _rating2Count,
          ParamType.int,
        ),
        'rating3_count': serializeParam(
          _rating3Count,
          ParamType.int,
        ),
        'rating4_count': serializeParam(
          _rating4Count,
          ParamType.int,
        ),
        'rating5_count': serializeParam(
          _rating5Count,
          ParamType.int,
        ),
        'current_week': serializeParam(
          _currentWeek,
          ParamType.DataStruct,
        ),
        'last_30_days': serializeParam(
          _last30Days,
          ParamType.DataStruct,
        ),
        'last_consumed_date': serializeParam(
          _lastConsumedDate,
          ParamType.String,
        ),
        'last_consumed_at': serializeParam(
          _lastConsumedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static RecipeStruct fromSerializableMap(Map<String, dynamic> data) =>
      RecipeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        foodRegion: deserializeParam(
          data['food_region'],
          ParamType.String,
          false,
        ),
        recipeTypes: deserializeParam<String>(
          data['recipe_types'],
          ParamType.String,
          true,
        ),
        difficulty: deserializeParam(
          data['difficulty'],
          ParamType.String,
          false,
        ),
        publishedAt: deserializeParam(
          data['published_at'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        isPublished: deserializeParam(
          data['is_published'],
          ParamType.bool,
          false,
        ),
        isFree: deserializeParam(
          data['is_free'],
          ParamType.String,
          false,
        ),
        timeOfCookingMin: deserializeParam(
          data['time_of_cooking_min'],
          ParamType.int,
          false,
        ),
        timeOfCookingHour: deserializeParam(
          data['time_of_cooking_hour'],
          ParamType.int,
          false,
        ),
        likeCount: deserializeParam(
          data['like_count'],
          ParamType.int,
          false,
        ),
        commentCount: deserializeParam(
          data['comment_count'],
          ParamType.int,
          false,
        ),
        totalMealsConsumed: deserializeParam(
          data['total_meals_consumed'],
          ParamType.int,
          false,
        ),
        totalEarnings: deserializeParam(
          data['total_earnings'],
          ParamType.int,
          false,
        ),
        totalIndividualConsumers: deserializeParam(
          data['total_individual_consumers'],
          ParamType.int,
          false,
        ),
        avgRating: deserializeParam(
          data['avg_rating'],
          ParamType.int,
          false,
        ),
        totalRatingsCount: deserializeParam(
          data['total_ratings_count'],
          ParamType.int,
          false,
        ),
        rating1Count: deserializeParam(
          data['rating1_count'],
          ParamType.int,
          false,
        ),
        rating2Count: deserializeParam(
          data['rating2_count'],
          ParamType.int,
          false,
        ),
        rating3Count: deserializeParam(
          data['rating3_count'],
          ParamType.int,
          false,
        ),
        rating4Count: deserializeParam(
          data['rating4_count'],
          ParamType.int,
          false,
        ),
        rating5Count: deserializeParam(
          data['rating5_count'],
          ParamType.int,
          false,
        ),
        currentWeek: deserializeStructParam(
          data['current_week'],
          ParamType.DataStruct,
          false,
          structBuilder: CurrentWeekStruct.fromSerializableMap,
        ),
        last30Days: deserializeStructParam(
          data['last_30_days'],
          ParamType.DataStruct,
          false,
          structBuilder: Last30DaysStruct.fromSerializableMap,
        ),
        lastConsumedDate: deserializeParam(
          data['last_consumed_date'],
          ParamType.String,
          false,
        ),
        lastConsumedAt: deserializeParam(
          data['last_consumed_at'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RecipeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RecipeStruct &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        foodRegion == other.foodRegion &&
        listEquality.equals(recipeTypes, other.recipeTypes) &&
        difficulty == other.difficulty &&
        publishedAt == other.publishedAt &&
        createdAt == other.createdAt &&
        isPublished == other.isPublished &&
        isFree == other.isFree &&
        timeOfCookingMin == other.timeOfCookingMin &&
        timeOfCookingHour == other.timeOfCookingHour &&
        likeCount == other.likeCount &&
        commentCount == other.commentCount &&
        totalMealsConsumed == other.totalMealsConsumed &&
        totalEarnings == other.totalEarnings &&
        totalIndividualConsumers == other.totalIndividualConsumers &&
        avgRating == other.avgRating &&
        totalRatingsCount == other.totalRatingsCount &&
        rating1Count == other.rating1Count &&
        rating2Count == other.rating2Count &&
        rating3Count == other.rating3Count &&
        rating4Count == other.rating4Count &&
        rating5Count == other.rating5Count &&
        currentWeek == other.currentWeek &&
        last30Days == other.last30Days &&
        lastConsumedDate == other.lastConsumedDate &&
        lastConsumedAt == other.lastConsumedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        description,
        foodRegion,
        recipeTypes,
        difficulty,
        publishedAt,
        createdAt,
        isPublished,
        isFree,
        timeOfCookingMin,
        timeOfCookingHour,
        likeCount,
        commentCount,
        totalMealsConsumed,
        totalEarnings,
        totalIndividualConsumers,
        avgRating,
        totalRatingsCount,
        rating1Count,
        rating2Count,
        rating3Count,
        rating4Count,
        rating5Count,
        currentWeek,
        last30Days,
        lastConsumedDate,
        lastConsumedAt
      ]);
}

RecipeStruct createRecipeStruct({
  int? id,
  String? name,
  String? description,
  String? foodRegion,
  String? difficulty,
  String? publishedAt,
  String? createdAt,
  bool? isPublished,
  String? isFree,
  int? timeOfCookingMin,
  int? timeOfCookingHour,
  int? likeCount,
  int? commentCount,
  int? totalMealsConsumed,
  int? totalEarnings,
  int? totalIndividualConsumers,
  int? avgRating,
  int? totalRatingsCount,
  int? rating1Count,
  int? rating2Count,
  int? rating3Count,
  int? rating4Count,
  int? rating5Count,
  CurrentWeekStruct? currentWeek,
  Last30DaysStruct? last30Days,
  String? lastConsumedDate,
  String? lastConsumedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RecipeStruct(
      id: id,
      name: name,
      description: description,
      foodRegion: foodRegion,
      difficulty: difficulty,
      publishedAt: publishedAt,
      createdAt: createdAt,
      isPublished: isPublished,
      isFree: isFree,
      timeOfCookingMin: timeOfCookingMin,
      timeOfCookingHour: timeOfCookingHour,
      likeCount: likeCount,
      commentCount: commentCount,
      totalMealsConsumed: totalMealsConsumed,
      totalEarnings: totalEarnings,
      totalIndividualConsumers: totalIndividualConsumers,
      avgRating: avgRating,
      totalRatingsCount: totalRatingsCount,
      rating1Count: rating1Count,
      rating2Count: rating2Count,
      rating3Count: rating3Count,
      rating4Count: rating4Count,
      rating5Count: rating5Count,
      currentWeek:
          currentWeek ?? (clearUnsetFields ? CurrentWeekStruct() : null),
      last30Days: last30Days ?? (clearUnsetFields ? Last30DaysStruct() : null),
      lastConsumedDate: lastConsumedDate,
      lastConsumedAt: lastConsumedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RecipeStruct? updateRecipeStruct(
  RecipeStruct? recipe, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    recipe
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRecipeStructData(
  Map<String, dynamic> firestoreData,
  RecipeStruct? recipe,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (recipe == null) {
    return;
  }
  if (recipe.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && recipe.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final recipeData = getRecipeFirestoreData(recipe, forFieldValue);
  final nestedData = recipeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = recipe.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRecipeFirestoreData(
  RecipeStruct? recipe, [
  bool forFieldValue = false,
]) {
  if (recipe == null) {
    return {};
  }
  final firestoreData = mapToFirestore(recipe.toMap());

  // Handle nested data for "current_week" field.
  addCurrentWeekStructData(
    firestoreData,
    recipe.hasCurrentWeek() ? recipe.currentWeek : null,
    'current_week',
    forFieldValue,
  );

  // Handle nested data for "last_30_days" field.
  addLast30DaysStructData(
    firestoreData,
    recipe.hasLast30Days() ? recipe.last30Days : null,
    'last_30_days',
    forFieldValue,
  );

  // Add any Firestore field values
  recipe.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRecipeListFirestoreData(
  List<RecipeStruct>? recipes,
) =>
    recipes?.map((e) => getRecipeFirestoreData(e, true)).toList() ?? [];
