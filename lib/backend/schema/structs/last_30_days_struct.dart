// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class Last30DaysStruct extends FFFirebaseStruct {
  Last30DaysStruct({
    int? totalConsumers,
    int? totalEarnings,
    int? avgDailyConsumers,
    int? avgDailyEarnings,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _totalConsumers = totalConsumers,
        _totalEarnings = totalEarnings,
        _avgDailyConsumers = avgDailyConsumers,
        _avgDailyEarnings = avgDailyEarnings,
        super(firestoreUtilData);

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

  // "avg_daily_consumers" field.
  int? _avgDailyConsumers;
  int get avgDailyConsumers => _avgDailyConsumers ?? 0;
  set avgDailyConsumers(int? val) => _avgDailyConsumers = val;

  void incrementAvgDailyConsumers(int amount) =>
      avgDailyConsumers = avgDailyConsumers + amount;

  bool hasAvgDailyConsumers() => _avgDailyConsumers != null;

  // "avg_daily_earnings" field.
  int? _avgDailyEarnings;
  int get avgDailyEarnings => _avgDailyEarnings ?? 0;
  set avgDailyEarnings(int? val) => _avgDailyEarnings = val;

  void incrementAvgDailyEarnings(int amount) =>
      avgDailyEarnings = avgDailyEarnings + amount;

  bool hasAvgDailyEarnings() => _avgDailyEarnings != null;

  static Last30DaysStruct fromMap(Map<String, dynamic> data) =>
      Last30DaysStruct(
        totalConsumers: castToType<int>(data['total_consumers']),
        totalEarnings: castToType<int>(data['total_earnings']),
        avgDailyConsumers: castToType<int>(data['avg_daily_consumers']),
        avgDailyEarnings: castToType<int>(data['avg_daily_earnings']),
      );

  static Last30DaysStruct? maybeFromMap(dynamic data) => data is Map
      ? Last30DaysStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'total_consumers': _totalConsumers,
        'total_earnings': _totalEarnings,
        'avg_daily_consumers': _avgDailyConsumers,
        'avg_daily_earnings': _avgDailyEarnings,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'total_consumers': serializeParam(
          _totalConsumers,
          ParamType.int,
        ),
        'total_earnings': serializeParam(
          _totalEarnings,
          ParamType.int,
        ),
        'avg_daily_consumers': serializeParam(
          _avgDailyConsumers,
          ParamType.int,
        ),
        'avg_daily_earnings': serializeParam(
          _avgDailyEarnings,
          ParamType.int,
        ),
      }.withoutNulls;

  static Last30DaysStruct fromSerializableMap(Map<String, dynamic> data) =>
      Last30DaysStruct(
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
        avgDailyConsumers: deserializeParam(
          data['avg_daily_consumers'],
          ParamType.int,
          false,
        ),
        avgDailyEarnings: deserializeParam(
          data['avg_daily_earnings'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'Last30DaysStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is Last30DaysStruct &&
        totalConsumers == other.totalConsumers &&
        totalEarnings == other.totalEarnings &&
        avgDailyConsumers == other.avgDailyConsumers &&
        avgDailyEarnings == other.avgDailyEarnings;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [totalConsumers, totalEarnings, avgDailyConsumers, avgDailyEarnings]);
}

Last30DaysStruct createLast30DaysStruct({
  int? totalConsumers,
  int? totalEarnings,
  int? avgDailyConsumers,
  int? avgDailyEarnings,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    Last30DaysStruct(
      totalConsumers: totalConsumers,
      totalEarnings: totalEarnings,
      avgDailyConsumers: avgDailyConsumers,
      avgDailyEarnings: avgDailyEarnings,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

Last30DaysStruct? updateLast30DaysStruct(
  Last30DaysStruct? last30Days, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    last30Days
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLast30DaysStructData(
  Map<String, dynamic> firestoreData,
  Last30DaysStruct? last30Days,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (last30Days == null) {
    return;
  }
  if (last30Days.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && last30Days.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final last30DaysData = getLast30DaysFirestoreData(last30Days, forFieldValue);
  final nestedData = last30DaysData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = last30Days.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLast30DaysFirestoreData(
  Last30DaysStruct? last30Days, [
  bool forFieldValue = false,
]) {
  if (last30Days == null) {
    return {};
  }
  final firestoreData = mapToFirestore(last30Days.toMap());

  // Add any Firestore field values
  last30Days.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLast30DaysListFirestoreData(
  List<Last30DaysStruct>? last30Dayss,
) =>
    last30Dayss?.map((e) => getLast30DaysFirestoreData(e, true)).toList() ?? [];
