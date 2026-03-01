// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecipesPerformancesStruct extends FFFirebaseStruct {
  RecipesPerformancesStruct({
    int? recipeId,
    String? recipeName,
    String? createdAt,
    int? totalLikes,
    int? totalEarnings,
    int? totalConsumers,
    PeriodPerformanceStruct? periodPerformance,
    List<String>? dailyData,
    double? totalRate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _recipeId = recipeId,
        _recipeName = recipeName,
        _createdAt = createdAt,
        _totalLikes = totalLikes,
        _totalEarnings = totalEarnings,
        _totalConsumers = totalConsumers,
        _periodPerformance = periodPerformance,
        _dailyData = dailyData,
        _totalRate = totalRate,
        super(firestoreUtilData);

  // "recipe_id" field.
  int? _recipeId;
  int get recipeId => _recipeId ?? 0;
  set recipeId(int? val) => _recipeId = val;

  void incrementRecipeId(int amount) => recipeId = recipeId + amount;

  bool hasRecipeId() => _recipeId != null;

  // "recipe_name" field.
  String? _recipeName;
  String get recipeName => _recipeName ?? '';
  set recipeName(String? val) => _recipeName = val;

  bool hasRecipeName() => _recipeName != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "total_likes" field.
  int? _totalLikes;
  int get totalLikes => _totalLikes ?? 0;
  set totalLikes(int? val) => _totalLikes = val;

  void incrementTotalLikes(int amount) => totalLikes = totalLikes + amount;

  bool hasTotalLikes() => _totalLikes != null;

  // "total_earnings" field.
  int? _totalEarnings;
  int get totalEarnings => _totalEarnings ?? 0;
  set totalEarnings(int? val) => _totalEarnings = val;

  void incrementTotalEarnings(int amount) =>
      totalEarnings = totalEarnings + amount;

  bool hasTotalEarnings() => _totalEarnings != null;

  // "total_consumers" field.
  int? _totalConsumers;
  int get totalConsumers => _totalConsumers ?? 0;
  set totalConsumers(int? val) => _totalConsumers = val;

  void incrementTotalConsumers(int amount) =>
      totalConsumers = totalConsumers + amount;

  bool hasTotalConsumers() => _totalConsumers != null;

  // "period_performance" field.
  PeriodPerformanceStruct? _periodPerformance;
  PeriodPerformanceStruct get periodPerformance =>
      _periodPerformance ?? PeriodPerformanceStruct();
  set periodPerformance(PeriodPerformanceStruct? val) =>
      _periodPerformance = val;

  void updatePeriodPerformance(Function(PeriodPerformanceStruct) updateFn) {
    updateFn(_periodPerformance ??= PeriodPerformanceStruct());
  }

  bool hasPeriodPerformance() => _periodPerformance != null;

  // "daily_data" field.
  List<String>? _dailyData;
  List<String> get dailyData => _dailyData ?? const [];
  set dailyData(List<String>? val) => _dailyData = val;

  void updateDailyData(Function(List<String>) updateFn) {
    updateFn(_dailyData ??= []);
  }

  bool hasDailyData() => _dailyData != null;

  // "total_rate" field.
  double? _totalRate;
  double get totalRate => _totalRate ?? 0.0;
  set totalRate(double? val) => _totalRate = val;

  void incrementTotalRate(double amount) => totalRate = totalRate + amount;

  bool hasTotalRate() => _totalRate != null;

  static RecipesPerformancesStruct fromMap(Map<String, dynamic> data) =>
      RecipesPerformancesStruct(
        recipeId: castToType<int>(data['recipe_id']),
        recipeName: data['recipe_name'] as String?,
        createdAt: data['created_at'] as String?,
        totalLikes: castToType<int>(data['total_likes']),
        totalEarnings: castToType<int>(data['total_earnings']),
        totalConsumers: castToType<int>(data['total_consumers']),
        periodPerformance: data['period_performance'] is PeriodPerformanceStruct
            ? data['period_performance']
            : PeriodPerformanceStruct.maybeFromMap(data['period_performance']),
        dailyData: getDataList(data['daily_data']),
        totalRate: castToType<double>(data['total_rate']),
      );

  static RecipesPerformancesStruct? maybeFromMap(dynamic data) => data is Map
      ? RecipesPerformancesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'recipe_id': _recipeId,
        'recipe_name': _recipeName,
        'created_at': _createdAt,
        'total_likes': _totalLikes,
        'total_earnings': _totalEarnings,
        'total_consumers': _totalConsumers,
        'period_performance': _periodPerformance?.toMap(),
        'daily_data': _dailyData,
        'total_rate': _totalRate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'recipe_id': serializeParam(
          _recipeId,
          ParamType.int,
        ),
        'recipe_name': serializeParam(
          _recipeName,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'total_likes': serializeParam(
          _totalLikes,
          ParamType.int,
        ),
        'total_earnings': serializeParam(
          _totalEarnings,
          ParamType.int,
        ),
        'total_consumers': serializeParam(
          _totalConsumers,
          ParamType.int,
        ),
        'period_performance': serializeParam(
          _periodPerformance,
          ParamType.DataStruct,
        ),
        'daily_data': serializeParam(
          _dailyData,
          ParamType.String,
          isList: true,
        ),
        'total_rate': serializeParam(
          _totalRate,
          ParamType.double,
        ),
      }.withoutNulls;

  static RecipesPerformancesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RecipesPerformancesStruct(
        recipeId: deserializeParam(
          data['recipe_id'],
          ParamType.int,
          false,
        ),
        recipeName: deserializeParam(
          data['recipe_name'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        totalLikes: deserializeParam(
          data['total_likes'],
          ParamType.int,
          false,
        ),
        totalEarnings: deserializeParam(
          data['total_earnings'],
          ParamType.int,
          false,
        ),
        totalConsumers: deserializeParam(
          data['total_consumers'],
          ParamType.int,
          false,
        ),
        periodPerformance: deserializeStructParam(
          data['period_performance'],
          ParamType.DataStruct,
          false,
          structBuilder: PeriodPerformanceStruct.fromSerializableMap,
        ),
        dailyData: deserializeParam<String>(
          data['daily_data'],
          ParamType.String,
          true,
        ),
        totalRate: deserializeParam(
          data['total_rate'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'RecipesPerformancesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RecipesPerformancesStruct &&
        recipeId == other.recipeId &&
        recipeName == other.recipeName &&
        createdAt == other.createdAt &&
        totalLikes == other.totalLikes &&
        totalEarnings == other.totalEarnings &&
        totalConsumers == other.totalConsumers &&
        periodPerformance == other.periodPerformance &&
        listEquality.equals(dailyData, other.dailyData) &&
        totalRate == other.totalRate;
  }

  @override
  int get hashCode => const ListEquality().hash([
        recipeId,
        recipeName,
        createdAt,
        totalLikes,
        totalEarnings,
        totalConsumers,
        periodPerformance,
        dailyData,
        totalRate
      ]);
}

RecipesPerformancesStruct createRecipesPerformancesStruct({
  int? recipeId,
  String? recipeName,
  String? createdAt,
  int? totalLikes,
  int? totalEarnings,
  int? totalConsumers,
  PeriodPerformanceStruct? periodPerformance,
  double? totalRate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RecipesPerformancesStruct(
      recipeId: recipeId,
      recipeName: recipeName,
      createdAt: createdAt,
      totalLikes: totalLikes,
      totalEarnings: totalEarnings,
      totalConsumers: totalConsumers,
      periodPerformance: periodPerformance ??
          (clearUnsetFields ? PeriodPerformanceStruct() : null),
      totalRate: totalRate,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RecipesPerformancesStruct? updateRecipesPerformancesStruct(
  RecipesPerformancesStruct? recipesPerformances, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    recipesPerformances
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRecipesPerformancesStructData(
  Map<String, dynamic> firestoreData,
  RecipesPerformancesStruct? recipesPerformances,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (recipesPerformances == null) {
    return;
  }
  if (recipesPerformances.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && recipesPerformances.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final recipesPerformancesData =
      getRecipesPerformancesFirestoreData(recipesPerformances, forFieldValue);
  final nestedData =
      recipesPerformancesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      recipesPerformances.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRecipesPerformancesFirestoreData(
  RecipesPerformancesStruct? recipesPerformances, [
  bool forFieldValue = false,
]) {
  if (recipesPerformances == null) {
    return {};
  }
  final firestoreData = mapToFirestore(recipesPerformances.toMap());

  // Handle nested data for "period_performance" field.
  addPeriodPerformanceStructData(
    firestoreData,
    recipesPerformances.hasPeriodPerformance()
        ? recipesPerformances.periodPerformance
        : null,
    'period_performance',
    forFieldValue,
  );

  // Add any Firestore field values
  recipesPerformances.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRecipesPerformancesListFirestoreData(
  List<RecipesPerformancesStruct>? recipesPerformancess,
) =>
    recipesPerformancess
        ?.map((e) => getRecipesPerformancesFirestoreData(e, true))
        .toList() ??
    [];
