// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DeletedStruct extends FFFirebaseStruct {
  DeletedStruct({
    int? count,
    List<String>? stepIds,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _count = count,
        _stepIds = stepIds,
        super(firestoreUtilData);

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;

  void incrementCount(int amount) => count = count + amount;

  bool hasCount() => _count != null;

  // "step_ids" field.
  List<String>? _stepIds;
  List<String> get stepIds => _stepIds ?? const [];
  set stepIds(List<String>? val) => _stepIds = val;

  void updateStepIds(Function(List<String>) updateFn) {
    updateFn(_stepIds ??= []);
  }

  bool hasStepIds() => _stepIds != null;

  static DeletedStruct fromMap(Map<String, dynamic> data) => DeletedStruct(
        count: castToType<int>(data['count']),
        stepIds: getDataList(data['step_ids']),
      );

  static DeletedStruct? maybeFromMap(dynamic data) =>
      data is Map ? DeletedStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'count': _count,
        'step_ids': _stepIds,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
        'step_ids': serializeParam(
          _stepIds,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static DeletedStruct fromSerializableMap(Map<String, dynamic> data) =>
      DeletedStruct(
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
        stepIds: deserializeParam<String>(
          data['step_ids'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'DeletedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DeletedStruct &&
        count == other.count &&
        listEquality.equals(stepIds, other.stepIds);
  }

  @override
  int get hashCode => const ListEquality().hash([count, stepIds]);
}

DeletedStruct createDeletedStruct({
  int? count,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DeletedStruct(
      count: count,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DeletedStruct? updateDeletedStruct(
  DeletedStruct? deleted, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    deleted
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDeletedStructData(
  Map<String, dynamic> firestoreData,
  DeletedStruct? deleted,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (deleted == null) {
    return;
  }
  if (deleted.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && deleted.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final deletedData = getDeletedFirestoreData(deleted, forFieldValue);
  final nestedData = deletedData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = deleted.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDeletedFirestoreData(
  DeletedStruct? deleted, [
  bool forFieldValue = false,
]) {
  if (deleted == null) {
    return {};
  }
  final firestoreData = mapToFirestore(deleted.toMap());

  // Add any Firestore field values
  deleted.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDeletedListFirestoreData(
  List<DeletedStruct>? deleteds,
) =>
    deleteds?.map((e) => getDeletedFirestoreData(e, true)).toList() ?? [];
