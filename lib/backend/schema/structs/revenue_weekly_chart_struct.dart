// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RevenueWeeklyChartStruct extends FFFirebaseStruct {
  RevenueWeeklyChartStruct({
    String? creatorId,
    String? weekStart,
    String? weekEnd,
    int? weekNumber,
    int? year,
    int? totalConsumers,
    int? totalEarnings,
    int? maxDailyEarnings,
    List<CreatorBarsStruct>? creatorBars,
    CreatorNavigationStruct? creatorNavigation,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _creatorId = creatorId,
        _weekStart = weekStart,
        _weekEnd = weekEnd,
        _weekNumber = weekNumber,
        _year = year,
        _totalConsumers = totalConsumers,
        _totalEarnings = totalEarnings,
        _maxDailyEarnings = maxDailyEarnings,
        _creatorBars = creatorBars,
        _creatorNavigation = creatorNavigation,
        super(firestoreUtilData);

  // "creator_id" field.
  String? _creatorId;
  String get creatorId => _creatorId ?? '';
  set creatorId(String? val) => _creatorId = val;

  bool hasCreatorId() => _creatorId != null;

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

  // "creator_bars" field.
  List<CreatorBarsStruct>? _creatorBars;
  List<CreatorBarsStruct> get creatorBars => _creatorBars ?? const [];
  set creatorBars(List<CreatorBarsStruct>? val) => _creatorBars = val;

  void updateCreatorBars(Function(List<CreatorBarsStruct>) updateFn) {
    updateFn(_creatorBars ??= []);
  }

  bool hasCreatorBars() => _creatorBars != null;

  // "creator_navigation" field.
  CreatorNavigationStruct? _creatorNavigation;
  CreatorNavigationStruct get creatorNavigation =>
      _creatorNavigation ?? CreatorNavigationStruct();
  set creatorNavigation(CreatorNavigationStruct? val) =>
      _creatorNavigation = val;

  void updateCreatorNavigation(Function(CreatorNavigationStruct) updateFn) {
    updateFn(_creatorNavigation ??= CreatorNavigationStruct());
  }

  bool hasCreatorNavigation() => _creatorNavigation != null;

  static RevenueWeeklyChartStruct fromMap(Map<String, dynamic> data) =>
      RevenueWeeklyChartStruct(
        creatorId: data['creator_id'] as String?,
        weekStart: data['week_start'] as String?,
        weekEnd: data['week_end'] as String?,
        weekNumber: castToType<int>(data['week_number']),
        year: castToType<int>(data['year']),
        totalConsumers: castToType<int>(data['total_consumers']),
        totalEarnings: castToType<int>(data['total_earnings']),
        maxDailyEarnings: castToType<int>(data['max_daily_earnings']),
        creatorBars: getStructList(
          data['creator_bars'],
          CreatorBarsStruct.fromMap,
        ),
        creatorNavigation: data['creator_navigation'] is CreatorNavigationStruct
            ? data['creator_navigation']
            : CreatorNavigationStruct.maybeFromMap(data['creator_navigation']),
      );

  static RevenueWeeklyChartStruct? maybeFromMap(dynamic data) => data is Map
      ? RevenueWeeklyChartStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'creator_id': _creatorId,
        'week_start': _weekStart,
        'week_end': _weekEnd,
        'week_number': _weekNumber,
        'year': _year,
        'total_consumers': _totalConsumers,
        'total_earnings': _totalEarnings,
        'max_daily_earnings': _maxDailyEarnings,
        'creator_bars': _creatorBars?.map((e) => e.toMap()).toList(),
        'creator_navigation': _creatorNavigation?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'creator_id': serializeParam(
          _creatorId,
          ParamType.String,
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
        'creator_bars': serializeParam(
          _creatorBars,
          ParamType.DataStruct,
          isList: true,
        ),
        'creator_navigation': serializeParam(
          _creatorNavigation,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static RevenueWeeklyChartStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RevenueWeeklyChartStruct(
        creatorId: deserializeParam(
          data['creator_id'],
          ParamType.String,
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
        creatorBars: deserializeStructParam<CreatorBarsStruct>(
          data['creator_bars'],
          ParamType.DataStruct,
          true,
          structBuilder: CreatorBarsStruct.fromSerializableMap,
        ),
        creatorNavigation: deserializeStructParam(
          data['creator_navigation'],
          ParamType.DataStruct,
          false,
          structBuilder: CreatorNavigationStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'RevenueWeeklyChartStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is RevenueWeeklyChartStruct &&
        creatorId == other.creatorId &&
        weekStart == other.weekStart &&
        weekEnd == other.weekEnd &&
        weekNumber == other.weekNumber &&
        year == other.year &&
        totalConsumers == other.totalConsumers &&
        totalEarnings == other.totalEarnings &&
        maxDailyEarnings == other.maxDailyEarnings &&
        listEquality.equals(creatorBars, other.creatorBars) &&
        creatorNavigation == other.creatorNavigation;
  }

  @override
  int get hashCode => const ListEquality().hash([
        creatorId,
        weekStart,
        weekEnd,
        weekNumber,
        year,
        totalConsumers,
        totalEarnings,
        maxDailyEarnings,
        creatorBars,
        creatorNavigation
      ]);
}

RevenueWeeklyChartStruct createRevenueWeeklyChartStruct({
  String? creatorId,
  String? weekStart,
  String? weekEnd,
  int? weekNumber,
  int? year,
  int? totalConsumers,
  int? totalEarnings,
  int? maxDailyEarnings,
  CreatorNavigationStruct? creatorNavigation,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RevenueWeeklyChartStruct(
      creatorId: creatorId,
      weekStart: weekStart,
      weekEnd: weekEnd,
      weekNumber: weekNumber,
      year: year,
      totalConsumers: totalConsumers,
      totalEarnings: totalEarnings,
      maxDailyEarnings: maxDailyEarnings,
      creatorNavigation: creatorNavigation ??
          (clearUnsetFields ? CreatorNavigationStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RevenueWeeklyChartStruct? updateRevenueWeeklyChartStruct(
  RevenueWeeklyChartStruct? revenueWeeklyChart, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    revenueWeeklyChart
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRevenueWeeklyChartStructData(
  Map<String, dynamic> firestoreData,
  RevenueWeeklyChartStruct? revenueWeeklyChart,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (revenueWeeklyChart == null) {
    return;
  }
  if (revenueWeeklyChart.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && revenueWeeklyChart.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final revenueWeeklyChartData =
      getRevenueWeeklyChartFirestoreData(revenueWeeklyChart, forFieldValue);
  final nestedData =
      revenueWeeklyChartData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      revenueWeeklyChart.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRevenueWeeklyChartFirestoreData(
  RevenueWeeklyChartStruct? revenueWeeklyChart, [
  bool forFieldValue = false,
]) {
  if (revenueWeeklyChart == null) {
    return {};
  }
  final firestoreData = mapToFirestore(revenueWeeklyChart.toMap());

  // Handle nested data for "creator_navigation" field.
  addCreatorNavigationStructData(
    firestoreData,
    revenueWeeklyChart.hasCreatorNavigation()
        ? revenueWeeklyChart.creatorNavigation
        : null,
    'creator_navigation',
    forFieldValue,
  );

  // Add any Firestore field values
  revenueWeeklyChart.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRevenueWeeklyChartListFirestoreData(
  List<RevenueWeeklyChartStruct>? revenueWeeklyCharts,
) =>
    revenueWeeklyCharts
        ?.map((e) => getRevenueWeeklyChartFirestoreData(e, true))
        .toList() ??
    [];
