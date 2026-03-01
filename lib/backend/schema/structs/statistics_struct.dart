// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StatisticsStruct extends FFFirebaseStruct {
  StatisticsStruct({
    int? totalPaid,
    int? totalPending,
    StatusCountsStruct? statusCounts,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _totalPaid = totalPaid,
        _totalPending = totalPending,
        _statusCounts = statusCounts,
        super(firestoreUtilData);

  // "total_paid" field.
  int? _totalPaid;
  int get totalPaid => _totalPaid ?? 0;
  set totalPaid(int? val) => _totalPaid = val;

  void incrementTotalPaid(int amount) => totalPaid = totalPaid + amount;

  bool hasTotalPaid() => _totalPaid != null;

  // "total_pending" field.
  int? _totalPending;
  int get totalPending => _totalPending ?? 0;
  set totalPending(int? val) => _totalPending = val;

  void incrementTotalPending(int amount) =>
      totalPending = totalPending + amount;

  bool hasTotalPending() => _totalPending != null;

  // "status_counts" field.
  StatusCountsStruct? _statusCounts;
  StatusCountsStruct get statusCounts => _statusCounts ?? StatusCountsStruct();
  set statusCounts(StatusCountsStruct? val) => _statusCounts = val;

  void updateStatusCounts(Function(StatusCountsStruct) updateFn) {
    updateFn(_statusCounts ??= StatusCountsStruct());
  }

  bool hasStatusCounts() => _statusCounts != null;

  static StatisticsStruct fromMap(Map<String, dynamic> data) =>
      StatisticsStruct(
        totalPaid: castToType<int>(data['total_paid']),
        totalPending: castToType<int>(data['total_pending']),
        statusCounts: data['status_counts'] is StatusCountsStruct
            ? data['status_counts']
            : StatusCountsStruct.maybeFromMap(data['status_counts']),
      );

  static StatisticsStruct? maybeFromMap(dynamic data) => data is Map
      ? StatisticsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'total_paid': _totalPaid,
        'total_pending': _totalPending,
        'status_counts': _statusCounts?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'total_paid': serializeParam(
          _totalPaid,
          ParamType.int,
        ),
        'total_pending': serializeParam(
          _totalPending,
          ParamType.int,
        ),
        'status_counts': serializeParam(
          _statusCounts,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static StatisticsStruct fromSerializableMap(Map<String, dynamic> data) =>
      StatisticsStruct(
        totalPaid: deserializeParam(
          data['total_paid'],
          ParamType.int,
          false,
        ),
        totalPending: deserializeParam(
          data['total_pending'],
          ParamType.int,
          false,
        ),
        statusCounts: deserializeStructParam(
          data['status_counts'],
          ParamType.DataStruct,
          false,
          structBuilder: StatusCountsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'StatisticsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StatisticsStruct &&
        totalPaid == other.totalPaid &&
        totalPending == other.totalPending &&
        statusCounts == other.statusCounts;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([totalPaid, totalPending, statusCounts]);
}

StatisticsStruct createStatisticsStruct({
  int? totalPaid,
  int? totalPending,
  StatusCountsStruct? statusCounts,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StatisticsStruct(
      totalPaid: totalPaid,
      totalPending: totalPending,
      statusCounts:
          statusCounts ?? (clearUnsetFields ? StatusCountsStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StatisticsStruct? updateStatisticsStruct(
  StatisticsStruct? statistics, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    statistics
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStatisticsStructData(
  Map<String, dynamic> firestoreData,
  StatisticsStruct? statistics,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (statistics == null) {
    return;
  }
  if (statistics.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && statistics.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final statisticsData = getStatisticsFirestoreData(statistics, forFieldValue);
  final nestedData = statisticsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = statistics.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStatisticsFirestoreData(
  StatisticsStruct? statistics, [
  bool forFieldValue = false,
]) {
  if (statistics == null) {
    return {};
  }
  final firestoreData = mapToFirestore(statistics.toMap());

  // Handle nested data for "status_counts" field.
  addStatusCountsStructData(
    firestoreData,
    statistics.hasStatusCounts() ? statistics.statusCounts : null,
    'status_counts',
    forFieldValue,
  );

  // Add any Firestore field values
  statistics.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStatisticsListFirestoreData(
  List<StatisticsStruct>? statisticss,
) =>
    statisticss?.map((e) => getStatisticsFirestoreData(e, true)).toList() ?? [];
