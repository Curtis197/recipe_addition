// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UpdatedStruct extends FFFirebaseStruct {
  UpdatedStruct({
    int? count,
    List<StepsStruct>? steps,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _count = count,
        _steps = steps,
        super(firestoreUtilData);

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;

  void incrementCount(int amount) => count = count + amount;

  bool hasCount() => _count != null;

  // "steps" field.
  List<StepsStruct>? _steps;
  List<StepsStruct> get steps => _steps ?? const [];
  set steps(List<StepsStruct>? val) => _steps = val;

  void updateSteps(Function(List<StepsStruct>) updateFn) {
    updateFn(_steps ??= []);
  }

  bool hasSteps() => _steps != null;

  static UpdatedStruct fromMap(Map<String, dynamic> data) => UpdatedStruct(
        count: castToType<int>(data['count']),
        steps: getStructList(
          data['steps'],
          StepsStruct.fromMap,
        ),
      );

  static UpdatedStruct? maybeFromMap(dynamic data) =>
      data is Map ? UpdatedStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'count': _count,
        'steps': _steps?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
        'steps': serializeParam(
          _steps,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static UpdatedStruct fromSerializableMap(Map<String, dynamic> data) =>
      UpdatedStruct(
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
        steps: deserializeStructParam<StepsStruct>(
          data['steps'],
          ParamType.DataStruct,
          true,
          structBuilder: StepsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'UpdatedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UpdatedStruct &&
        count == other.count &&
        listEquality.equals(steps, other.steps);
  }

  @override
  int get hashCode => const ListEquality().hash([count, steps]);
}

UpdatedStruct createUpdatedStruct({
  int? count,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UpdatedStruct(
      count: count,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UpdatedStruct? updateUpdatedStruct(
  UpdatedStruct? updated, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    updated
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUpdatedStructData(
  Map<String, dynamic> firestoreData,
  UpdatedStruct? updated,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (updated == null) {
    return;
  }
  if (updated.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && updated.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final updatedData = getUpdatedFirestoreData(updated, forFieldValue);
  final nestedData = updatedData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = updated.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUpdatedFirestoreData(
  UpdatedStruct? updated, [
  bool forFieldValue = false,
]) {
  if (updated == null) {
    return {};
  }
  final firestoreData = mapToFirestore(updated.toMap());

  // Add any Firestore field values
  updated.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUpdatedListFirestoreData(
  List<UpdatedStruct>? updateds,
) =>
    updateds?.map((e) => getUpdatedFirestoreData(e, true)).toList() ?? [];
