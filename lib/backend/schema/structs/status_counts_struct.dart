// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class StatusCountsStruct extends FFFirebaseStruct {
  StatusCountsStruct({
    int? paid,
    int? pending,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _paid = paid,
        _pending = pending,
        super(firestoreUtilData);

  // "paid" field.
  int? _paid;
  int get paid => _paid ?? 0;
  set paid(int? val) => _paid = val;

  void incrementPaid(int amount) => paid = paid + amount;

  bool hasPaid() => _paid != null;

  // "pending" field.
  int? _pending;
  int get pending => _pending ?? 0;
  set pending(int? val) => _pending = val;

  void incrementPending(int amount) => pending = pending + amount;

  bool hasPending() => _pending != null;

  static StatusCountsStruct fromMap(Map<String, dynamic> data) =>
      StatusCountsStruct(
        paid: castToType<int>(data['paid']),
        pending: castToType<int>(data['pending']),
      );

  static StatusCountsStruct? maybeFromMap(dynamic data) => data is Map
      ? StatusCountsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'paid': _paid,
        'pending': _pending,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'paid': serializeParam(
          _paid,
          ParamType.int,
        ),
        'pending': serializeParam(
          _pending,
          ParamType.int,
        ),
      }.withoutNulls;

  static StatusCountsStruct fromSerializableMap(Map<String, dynamic> data) =>
      StatusCountsStruct(
        paid: deserializeParam(
          data['paid'],
          ParamType.int,
          false,
        ),
        pending: deserializeParam(
          data['pending'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'StatusCountsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StatusCountsStruct &&
        paid == other.paid &&
        pending == other.pending;
  }

  @override
  int get hashCode => const ListEquality().hash([paid, pending]);
}

StatusCountsStruct createStatusCountsStruct({
  int? paid,
  int? pending,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StatusCountsStruct(
      paid: paid,
      pending: pending,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StatusCountsStruct? updateStatusCountsStruct(
  StatusCountsStruct? statusCounts, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    statusCounts
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStatusCountsStructData(
  Map<String, dynamic> firestoreData,
  StatusCountsStruct? statusCounts,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (statusCounts == null) {
    return;
  }
  if (statusCounts.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && statusCounts.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final statusCountsData =
      getStatusCountsFirestoreData(statusCounts, forFieldValue);
  final nestedData =
      statusCountsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = statusCounts.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStatusCountsFirestoreData(
  StatusCountsStruct? statusCounts, [
  bool forFieldValue = false,
]) {
  if (statusCounts == null) {
    return {};
  }
  final firestoreData = mapToFirestore(statusCounts.toMap());

  // Add any Firestore field values
  statusCounts.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStatusCountsListFirestoreData(
  List<StatusCountsStruct>? statusCountss,
) =>
    statusCountss?.map((e) => getStatusCountsFirestoreData(e, true)).toList() ??
    [];
