// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OperationsStruct extends FFFirebaseStruct {
  OperationsStruct({
    UpdatedStruct? updated,
    DeletedStruct? deleted,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _updated = updated,
        _deleted = deleted,
        super(firestoreUtilData);

  // "updated" field.
  UpdatedStruct? _updated;
  UpdatedStruct get updated => _updated ?? UpdatedStruct();
  set updated(UpdatedStruct? val) => _updated = val;

  void updateUpdated(Function(UpdatedStruct) updateFn) {
    updateFn(_updated ??= UpdatedStruct());
  }

  bool hasUpdated() => _updated != null;

  // "deleted" field.
  DeletedStruct? _deleted;
  DeletedStruct get deleted => _deleted ?? DeletedStruct();
  set deleted(DeletedStruct? val) => _deleted = val;

  void updateDeleted(Function(DeletedStruct) updateFn) {
    updateFn(_deleted ??= DeletedStruct());
  }

  bool hasDeleted() => _deleted != null;

  static OperationsStruct fromMap(Map<String, dynamic> data) =>
      OperationsStruct(
        updated: data['updated'] is UpdatedStruct
            ? data['updated']
            : UpdatedStruct.maybeFromMap(data['updated']),
        deleted: data['deleted'] is DeletedStruct
            ? data['deleted']
            : DeletedStruct.maybeFromMap(data['deleted']),
      );

  static OperationsStruct? maybeFromMap(dynamic data) => data is Map
      ? OperationsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'updated': _updated?.toMap(),
        'deleted': _deleted?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'updated': serializeParam(
          _updated,
          ParamType.DataStruct,
        ),
        'deleted': serializeParam(
          _deleted,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static OperationsStruct fromSerializableMap(Map<String, dynamic> data) =>
      OperationsStruct(
        updated: deserializeStructParam(
          data['updated'],
          ParamType.DataStruct,
          false,
          structBuilder: UpdatedStruct.fromSerializableMap,
        ),
        deleted: deserializeStructParam(
          data['deleted'],
          ParamType.DataStruct,
          false,
          structBuilder: DeletedStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'OperationsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OperationsStruct &&
        updated == other.updated &&
        deleted == other.deleted;
  }

  @override
  int get hashCode => const ListEquality().hash([updated, deleted]);
}

OperationsStruct createOperationsStruct({
  UpdatedStruct? updated,
  DeletedStruct? deleted,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OperationsStruct(
      updated: updated ?? (clearUnsetFields ? UpdatedStruct() : null),
      deleted: deleted ?? (clearUnsetFields ? DeletedStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OperationsStruct? updateOperationsStruct(
  OperationsStruct? operations, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    operations
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOperationsStructData(
  Map<String, dynamic> firestoreData,
  OperationsStruct? operations,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (operations == null) {
    return;
  }
  if (operations.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && operations.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final operationsData = getOperationsFirestoreData(operations, forFieldValue);
  final nestedData = operationsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = operations.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOperationsFirestoreData(
  OperationsStruct? operations, [
  bool forFieldValue = false,
]) {
  if (operations == null) {
    return {};
  }
  final firestoreData = mapToFirestore(operations.toMap());

  // Handle nested data for "updated" field.
  addUpdatedStructData(
    firestoreData,
    operations.hasUpdated() ? operations.updated : null,
    'updated',
    forFieldValue,
  );

  // Handle nested data for "deleted" field.
  addDeletedStructData(
    firestoreData,
    operations.hasDeleted() ? operations.deleted : null,
    'deleted',
    forFieldValue,
  );

  // Add any Firestore field values
  operations.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOperationsListFirestoreData(
  List<OperationsStruct>? operationss,
) =>
    operationss?.map((e) => getOperationsFirestoreData(e, true)).toList() ?? [];
