// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecipeWeeklyChartStruct extends FFFirebaseStruct {
  RecipeWeeklyChartStruct({
    int? recipeId,
    String? weekStart,
    String? weekEnd,
    int? weekNumber,
    int? year,
    int? totalConsumers,
    int? totalEarnings,
    int? maxDailyEarnings,
    List<BarsStruct>? bars,
    NavigationStruct? navigation,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _recipeId = recipeId,
        _weekStart = weekStart,
        _weekEnd = weekEnd,
        _weekNumber = weekNumber,
        _year = year,
        _totalConsumers = totalConsumers,
        _totalEarnings = totalEarnings,
        _maxDailyEarnings = maxDailyEarnings,
        _bars = bars,
        _navigation = navigation,
        super(firestoreUtilData);

  // "recipe_id" field.
  int? _recipeId;
  int get recipeId => _recipeId ?? 0;
  set recipeId(int? val) => _recipeId = val;

  void incrementRecipeId(int amount) => recipeId = recipeId + amount;

  bool hasRecipeId() => _recipeId != null;

  // "week_start" field.
  String? _weekStart;
  String get weekStart => _weekStart ?? '';
  set weekStart(String? val) => _weekStart = val;

  bool hasWeekStart() => _weekStart != null;

  // "week_end" field.
  String? _weekEnd;
  String get weekEnd => _weekEnd ?? '';
  set weekEnd(String? val) => _weekEnd = val;

  bool hasWeekEnd() => _weekEnd != null;

  // "week_number" field.
  int? _weekNumber;
  int get weekNumber => _weekNumber ?? 0;
  set weekNumber(int? val) => _weekNumber = val;

  void incrementWeekNumber(int amount) => weekNumber = weekNumber + amount;

  bool hasWeekNumber() => _weekNumber != null;

  // "year" field.
  int? _year;
  int get year => _year ?? 0;
  set year(int? val) => _year = val;

  void incrementYear(int amount) => year = year + amount;

  bool hasYear() => _year != null;

  // "total_consumers" field.
  int? _totalConsumers;
  int get totalConsumers => _totalConsumers ?? 0;
  set totalConsumers(int? val) => _totalConsumers = val;

  void incrementTotalConsumers(int amount) =>
      totalConsumers = totalConsumers + amount;

  bool hasTotalConsumers() => _totalConsumers != null;

  // "total_earnings" field.
  int? _totalEarnings;
  int get totalEarnings => _totalEarnings ?? 0;
  set totalEarnings(int? val) => _totalEarnings = val;

  void incrementTotalEarnings(int amount) =>
      totalEarnings = totalEarnings + amount;

  bool hasTotalEarnings() => _totalEarnings != null;

  // "max_daily_earnings" field.
  int? _maxDailyEarnings;
  int get maxDailyEarnings => _maxDailyEarnings ?? 0;
  set maxDailyEarnings(int? val) => _maxDailyEarnings = val;

  void incrementMaxDailyEarnings(int amount) =>
      maxDailyEarnings = maxDailyEarnings + amount;

  bool hasMaxDailyEarnings() => _maxDailyEarnings != null;

  // "bars" field.
  List<BarsStruct>? _bars;
  List<BarsStruct> get bars => _bars ?? const [];
  set bars(List<BarsStruct>? val) => _bars = val;

  void updateBars(Function(List<BarsStruct>) updateFn) {
    updateFn(_bars ??= []);
  }

  bool hasBars() => _bars != null;

  // "navigation" field.
  NavigationStruct? _navigation;
  NavigationStruct get navigation => _navigation ?? NavigationStruct();
  set navigation(NavigationStruct? val) => _navigation = val;

  void updateNavigation(Function(NavigationStruct) updateFn) {
    updateFn(_navigation ??= NavigationStruct());
  }

  bool hasNavigation() => _navigation != null;

  static RecipeWeeklyChartStruct fromMap(Map<String, dynamic> data) =>
      RecipeWeeklyChartStruct(
        recipeId: castToType<int>(data['recipe_id']),
        weekStart: data['week_start'] as String?,
        weekEnd: data['week_end'] as String?,
        weekNumber: castToType<int>(data['week_number']),
        year: castToType<int>(data['year']),
        totalConsumers: castToType<int>(data['total_consumers']),
        totalEarnings: castToType<int>(data['total_earnings']),
        maxDailyEarnings: castToType<int>(data['max_daily_earnings']),
        bars: getStructList(
          data['bars'],
          BarsStruct.fromMap,
        ),
        navigation: data['navigation'] is NavigationStruct
            ? data['navigation']
            : NavigationStruct.maybeFromMap(data['navigation']),
      );

  static RecipeWeeklyChartStruct? maybeFromMap(dynamic data) => data is Map
      ? RecipeWeeklyChartStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'recipe_id': _recipeId,
        'week_start': _weekStart,
        'week_end': _weekEnd,
        'week_number': _weekNumber,
        'year': _year,
        'total_consumers': _totalConsumers,
        'total_earnings': _totalEarnings,
        'max_daily_earnings': _maxDailyEarnings,
        'bars': _bars?.map((e) => e.toMap()).toList(),
        'navigation': _navigation?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'recipe_id': serializeParam(
          _recipeId,
          ParamType.int,
        ),
        'week_start': serializeParam(
          _weekStart,
          ParamType.String,
        ),
        'week_end': serializeParam(
          _weekEnd,
          ParamType.String,
        ),
        'week_number': serializeParam(
          _weekNumber,
          ParamType.int,
        ),
        'year': serializeParam(
          _year,
          ParamType.int,
        ),
        'total_consumers': serializeParam(
          _totalConsumers,
          ParamType.int,
        ),
        'total_earnings': serializeParam(
          _totalEarnings,
          ParamType.int,
        ),
        'max_daily_earnings': serializeParam(
          _maxDailyEarnings,
          ParamType.int,
        ),
        'bars': serializeParam(
          _bars,
          ParamType.DataStruct,
          isList: true,
        ),
        'navigation': serializeParam(
          _navigation,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static RecipeWeeklyChartStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RecipeWeeklyChartStruct(
        recipeId: deserializeParam(
          data['recipe_id'],
          ParamType.int,
          false,
        ),
        weekStart: deserializeParam(
          data['week_start'],
          ParamType.String,
          false,
        ),
        weekEnd: deserializeParam(
          data['week_end'],
          ParamType.String,
          false,
        ),
        weekNumber: deserializeParam(
          data['week_number'],
          ParamType.int,
          false,
        ),
        year: deserializeParam(
          data['year'],
          ParamType.int,
          false,
        ),
        totalConsumers: deserializeParam(
          data['total_consumers'],
          ParamType.int,
          false,
        ),
        totalEarnings: deserializeParam(
          data['total_earnings'],
          ParamType.int,
          false,
        ),
        maxDailyEarnings: deserializeParam(
          data['max_daily_earnings'],
          ParamType.int,
          false,
        ),
        bars: deserializeStructParam<BarsStruct>(
          data['bars'],
          ParamType.DataStruct,
          true,
          structBuilder: BarsStruct.fromSerializableMap,
        ),
        navigation: deserializeStructParam(
          data['navigation'],
          ParamType.DataStruct,
          false,
          structBuilder: NavigationStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'RecipeWeeklyChartStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RecipeWeeklyChartStruct &&
        recipeId == other.recipeId &&
        weekStart == other.weekStart &&
        weekEnd == other.weekEnd &&
        weekNumber == other.weekNumber &&
        year == other.year &&
        totalConsumers == other.totalConsumers &&
        totalEarnings == other.totalEarnings &&
        maxDailyEarnings == other.maxDailyEarnings &&
        listEquality.equals(bars, other.bars) &&
        navigation == other.navigation;
  }

  @override
  int get hashCode => const ListEquality().hash([
        recipeId,
        weekStart,
        weekEnd,
        weekNumber,
        year,
        totalConsumers,
        totalEarnings,
        maxDailyEarnings,
        bars,
        navigation
      ]);
}

RecipeWeeklyChartStruct createRecipeWeeklyChartStruct({
  int? recipeId,
  String? weekStart,
  String? weekEnd,
  int? weekNumber,
  int? year,
  int? totalConsumers,
  int? totalEarnings,
  int? maxDailyEarnings,
  NavigationStruct? navigation,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RecipeWeeklyChartStruct(
      recipeId: recipeId,
      weekStart: weekStart,
      weekEnd: weekEnd,
      weekNumber: weekNumber,
      year: year,
      totalConsumers: totalConsumers,
      totalEarnings: totalEarnings,
      maxDailyEarnings: maxDailyEarnings,
      navigation: navigation ?? (clearUnsetFields ? NavigationStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RecipeWeeklyChartStruct? updateRecipeWeeklyChartStruct(
  RecipeWeeklyChartStruct? recipeWeeklyChart, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    recipeWeeklyChart
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRecipeWeeklyChartStructData(
  Map<String, dynamic> firestoreData,
  RecipeWeeklyChartStruct? recipeWeeklyChart,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (recipeWeeklyChart == null) {
    return;
  }
  if (recipeWeeklyChart.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && recipeWeeklyChart.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final recipeWeeklyChartData =
      getRecipeWeeklyChartFirestoreData(recipeWeeklyChart, forFieldValue);
  final nestedData =
      recipeWeeklyChartData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = recipeWeeklyChart.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRecipeWeeklyChartFirestoreData(
  RecipeWeeklyChartStruct? recipeWeeklyChart, [
  bool forFieldValue = false,
]) {
  if (recipeWeeklyChart == null) {
    return {};
  }
  final firestoreData = mapToFirestore(recipeWeeklyChart.toMap());

  // Handle nested data for "navigation" field.
  addNavigationStructData(
    firestoreData,
    recipeWeeklyChart.hasNavigation() ? recipeWeeklyChart.navigation : null,
    'navigation',
    forFieldValue,
  );

  // Add any Firestore field values
  recipeWeeklyChart.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRecipeWeeklyChartListFirestoreData(
  List<RecipeWeeklyChartStruct>? recipeWeeklyCharts,
) =>
    recipeWeeklyCharts
        ?.map((e) => getRecipeWeeklyChartFirestoreData(e, true))
        .toList() ??
    [];
