// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PeriodPerformanceStruct extends FFFirebaseStruct {
  PeriodPerformanceStruct({
    int? days,
    int? consumers,
    int? earnings,
    int? avgDailyConsumers,
    int? trendPercentage,
    String? trendDirection,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _days = days,
        _consumers = consumers,
        _earnings = earnings,
        _avgDailyConsumers = avgDailyConsumers,
        _trendPercentage = trendPercentage,
        _trendDirection = trendDirection,
        super(firestoreUtilData);

  // "days" field.
  int? _days;
  int get days => _days ?? 0;
  set days(int? val) => _days = val;

  void incrementDays(int amount) => days = days + amount;

  bool hasDays() => _days != null;

  // "consumers" field.
  int? _consumers;
  int get consumers => _consumers ?? 0;
  set consumers(int? val) => _consumers = val;

  void incrementConsumers(int amount) => consumers = consumers + amount;

  bool hasConsumers() => _consumers != null;

  // "earnings" field.
  int? _earnings;
  int get earnings => _earnings ?? 0;
  set earnings(int? val) => _earnings = val;

  void incrementEarnings(int amount) => earnings = earnings + amount;

  bool hasEarnings() => _earnings != null;

  // "avg_daily_consumers" field.
  int? _avgDailyConsumers;
  int get avgDailyConsumers => _avgDailyConsumers ?? 0;
  set avgDailyConsumers(int? val) => _avgDailyConsumers = val;

  void incrementAvgDailyConsumers(int amount) =>
      avgDailyConsumers = avgDailyConsumers + amount;

  bool hasAvgDailyConsumers() => _avgDailyConsumers != null;

  // "trend_percentage" field.
  int? _trendPercentage;
  int get trendPercentage => _trendPercentage ?? 0;
  set trendPercentage(int? val) => _trendPercentage = val;

  void incrementTrendPercentage(int amount) =>
      trendPercentage = trendPercentage + amount;

  bool hasTrendPercentage() => _trendPercentage != null;

  // "trend_direction" field.
  String? _trendDirection;
  String get trendDirection => _trendDirection ?? '';
  set trendDirection(String? val) => _trendDirection = val;

  bool hasTrendDirection() => _trendDirection != null;

  static PeriodPerformanceStruct fromMap(Map<String, dynamic> data) =>
      PeriodPerformanceStruct(
        days: castToType<int>(data['days']),
        consumers: castToType<int>(data['consumers']),
        earnings: castToType<int>(data['earnings']),
        avgDailyConsumers: castToType<int>(data['avg_daily_consumers']),
        trendPercentage: castToType<int>(data['trend_percentage']),
        trendDirection: data['trend_direction'] as String?,
      );

  static PeriodPerformanceStruct? maybeFromMap(dynamic data) => data is Map
      ? PeriodPerformanceStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'days': _days,
        'consumers': _consumers,
        'earnings': _earnings,
        'avg_daily_consumers': _avgDailyConsumers,
        'trend_percentage': _trendPercentage,
        'trend_direction': _trendDirection,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'days': serializeParam(
          _days,
          ParamType.int,
        ),
        'consumers': serializeParam(
          _consumers,
          ParamType.int,
        ),
        'earnings': serializeParam(
          _earnings,
          ParamType.int,
        ),
        'avg_daily_consumers': serializeParam(
          _avgDailyConsumers,
          ParamType.int,
        ),
        'trend_percentage': serializeParam(
          _trendPercentage,
          ParamType.int,
        ),
        'trend_direction': serializeParam(
          _trendDirection,
          ParamType.String,
        ),
      }.withoutNulls;

  static PeriodPerformanceStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      PeriodPerformanceStruct(
        days: deserializeParam(
          data['days'],
          ParamType.int,
          false,
        ),
        consumers: deserializeParam(
          data['consumers'],
          ParamType.int,
          false,
        ),
        earnings: deserializeParam(
          data['earnings'],
          ParamType.int,
          false,
        ),
        avgDailyConsumers: deserializeParam(
          data['avg_daily_consumers'],
          ParamType.int,
          false,
        ),
        trendPercentage: deserializeParam(
          data['trend_percentage'],
          ParamType.int,
          false,
        ),
        trendDirection: deserializeParam(
          data['trend_direction'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PeriodPerformanceStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PeriodPerformanceStruct &&
        days == other.days &&
        consumers == other.consumers &&
        earnings == other.earnings &&
        avgDailyConsumers == other.avgDailyConsumers &&
        trendPercentage == other.trendPercentage &&
        trendDirection == other.trendDirection;
  }

  @override
  int get hashCode => const ListEquality().hash([
        days,
        consumers,
        earnings,
        avgDailyConsumers,
        trendPercentage,
        trendDirection
      ]);
}

PeriodPerformanceStruct createPeriodPerformanceStruct({
  int? days,
  int? consumers,
  int? earnings,
  int? avgDailyConsumers,
  int? trendPercentage,
  String? trendDirection,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PeriodPerformanceStruct(
      days: days,
      consumers: consumers,
      earnings: earnings,
      avgDailyConsumers: avgDailyConsumers,
      trendPercentage: trendPercentage,
      trendDirection: trendDirection,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PeriodPerformanceStruct? updatePeriodPerformanceStruct(
  PeriodPerformanceStruct? periodPerformance, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    periodPerformance
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPeriodPerformanceStructData(
  Map<String, dynamic> firestoreData,
  PeriodPerformanceStruct? periodPerformance,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (periodPerformance == null) {
    return;
  }
  if (periodPerformance.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && periodPerformance.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final periodPerformanceData =
      getPeriodPerformanceFirestoreData(periodPerformance, forFieldValue);
  final nestedData =
      periodPerformanceData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = periodPerformance.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPeriodPerformanceFirestoreData(
  PeriodPerformanceStruct? periodPerformance, [
  bool forFieldValue = false,
]) {
  if (periodPerformance == null) {
    return {};
  }
  final firestoreData = mapToFirestore(periodPerformance.toMap());

  // Add any Firestore field values
  periodPerformance.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPeriodPerformanceListFirestoreData(
  List<PeriodPerformanceStruct>? periodPerformances,
) =>
    periodPerformances
        ?.map((e) => getPeriodPerformanceFirestoreData(e, true))
        .toList() ??
    [];
