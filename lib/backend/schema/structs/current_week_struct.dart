// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CurrentWeekStruct extends FFFirebaseStruct {
  CurrentWeekStruct({
    String? weekStart,
    String? weekEnd,
    int? totalConsumers,
    int? totalEarnings,
    DailyBreakdownStruct? dailyBreakdown,
    List<ChartDataStruct>? chartData,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _weekStart = weekStart,
        _weekEnd = weekEnd,
        _totalConsumers = totalConsumers,
        _totalEarnings = totalEarnings,
        _dailyBreakdown = dailyBreakdown,
        _chartData = chartData,
        super(firestoreUtilData);

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

  // "daily_breakdown" field.
  DailyBreakdownStruct? _dailyBreakdown;
  DailyBreakdownStruct get dailyBreakdown =>
      _dailyBreakdown ?? DailyBreakdownStruct();
  set dailyBreakdown(DailyBreakdownStruct? val) => _dailyBreakdown = val;

  void updateDailyBreakdown(Function(DailyBreakdownStruct) updateFn) {
    updateFn(_dailyBreakdown ??= DailyBreakdownStruct());
  }

  bool hasDailyBreakdown() => _dailyBreakdown != null;

  // "chart_data" field.
  List<ChartDataStruct>? _chartData;
  List<ChartDataStruct> get chartData => _chartData ?? const [];
  set chartData(List<ChartDataStruct>? val) => _chartData = val;

  void updateChartData(Function(List<ChartDataStruct>) updateFn) {
    updateFn(_chartData ??= []);
  }

  bool hasChartData() => _chartData != null;

  static CurrentWeekStruct fromMap(Map<String, dynamic> data) =>
      CurrentWeekStruct(
        weekStart: data['week_start'] as String?,
        weekEnd: data['week_end'] as String?,
        totalConsumers: castToType<int>(data['total_consumers']),
        totalEarnings: castToType<int>(data['total_earnings']),
        dailyBreakdown: data['daily_breakdown'] is DailyBreakdownStruct
            ? data['daily_breakdown']
            : DailyBreakdownStruct.maybeFromMap(data['daily_breakdown']),
        chartData: getStructList(
          data['chart_data'],
          ChartDataStruct.fromMap,
        ),
      );

  static CurrentWeekStruct? maybeFromMap(dynamic data) => data is Map
      ? CurrentWeekStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'week_start': _weekStart,
        'week_end': _weekEnd,
        'total_consumers': _totalConsumers,
        'total_earnings': _totalEarnings,
        'daily_breakdown': _dailyBreakdown?.toMap(),
        'chart_data': _chartData?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'week_start': serializeParam(
          _weekStart,
          ParamType.String,
        ),
        'week_end': serializeParam(
          _weekEnd,
          ParamType.String,
        ),
        'total_consumers': serializeParam(
          _totalConsumers,
          ParamType.int,
        ),
        'total_earnings': serializeParam(
          _totalEarnings,
          ParamType.int,
        ),
        'daily_breakdown': serializeParam(
          _dailyBreakdown,
          ParamType.DataStruct,
        ),
        'chart_data': serializeParam(
          _chartData,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static CurrentWeekStruct fromSerializableMap(Map<String, dynamic> data) =>
      CurrentWeekStruct(
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
        dailyBreakdown: deserializeStructParam(
          data['daily_breakdown'],
          ParamType.DataStruct,
          false,
          structBuilder: DailyBreakdownStruct.fromSerializableMap,
        ),
        chartData: deserializeStructParam<ChartDataStruct>(
          data['chart_data'],
          ParamType.DataStruct,
          true,
          structBuilder: ChartDataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CurrentWeekStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CurrentWeekStruct &&
        weekStart == other.weekStart &&
        weekEnd == other.weekEnd &&
        totalConsumers == other.totalConsumers &&
        totalEarnings == other.totalEarnings &&
        dailyBreakdown == other.dailyBreakdown &&
        listEquality.equals(chartData, other.chartData);
  }

  @override
  int get hashCode => const ListEquality().hash([
        weekStart,
        weekEnd,
        totalConsumers,
        totalEarnings,
        dailyBreakdown,
        chartData
      ]);
}

CurrentWeekStruct createCurrentWeekStruct({
  String? weekStart,
  String? weekEnd,
  int? totalConsumers,
  int? totalEarnings,
  DailyBreakdownStruct? dailyBreakdown,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CurrentWeekStruct(
      weekStart: weekStart,
      weekEnd: weekEnd,
      totalConsumers: totalConsumers,
      totalEarnings: totalEarnings,
      dailyBreakdown:
          dailyBreakdown ?? (clearUnsetFields ? DailyBreakdownStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CurrentWeekStruct? updateCurrentWeekStruct(
  CurrentWeekStruct? currentWeek, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    currentWeek
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCurrentWeekStructData(
  Map<String, dynamic> firestoreData,
  CurrentWeekStruct? currentWeek,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (currentWeek == null) {
    return;
  }
  if (currentWeek.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && currentWeek.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final currentWeekData =
      getCurrentWeekFirestoreData(currentWeek, forFieldValue);
  final nestedData =
      currentWeekData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = currentWeek.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCurrentWeekFirestoreData(
  CurrentWeekStruct? currentWeek, [
  bool forFieldValue = false,
]) {
  if (currentWeek == null) {
    return {};
  }
  final firestoreData = mapToFirestore(currentWeek.toMap());

  // Handle nested data for "daily_breakdown" field.
  addDailyBreakdownStructData(
    firestoreData,
    currentWeek.hasDailyBreakdown() ? currentWeek.dailyBreakdown : null,
    'daily_breakdown',
    forFieldValue,
  );

  // Add any Firestore field values
  currentWeek.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCurrentWeekListFirestoreData(
  List<CurrentWeekStruct>? currentWeeks,
) =>
    currentWeeks?.map((e) => getCurrentWeekFirestoreData(e, true)).toList() ??
    [];
