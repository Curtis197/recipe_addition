// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class StepsStruct extends FFFirebaseStruct {
  StepsStruct({
    String? stepId,
    int? updatedIndex,
    bool? success,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _stepId = stepId,
        _updatedIndex = updatedIndex,
        _success = success,
        super(firestoreUtilData);

  // "step_id" field.
  String? _stepId;
  String get stepId => _stepId ?? '';
  set stepId(String? val) => _stepId = val;

  bool hasStepId() => _stepId != null;

  // "updated_index" field.
  int? _updatedIndex;
  int get updatedIndex => _updatedIndex ?? 0;
  set updatedIndex(int? val) => _updatedIndex = val;

  void incrementUpdatedIndex(int amount) =>
      updatedIndex = updatedIndex + amount;

  bool hasUpdatedIndex() => _updatedIndex != null;

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  set success(bool? val) => _success = val;

  bool hasSuccess() => _success != null;

  static StepsStruct fromMap(Map<String, dynamic> data) => StepsStruct(
        stepId: data['step_id'] as String?,
        updatedIndex: castToType<int>(data['updated_index']),
        success: data['success'] as bool?,
      );

  static StepsStruct? maybeFromMap(dynamic data) =>
      data is Map ? StepsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'step_id': _stepId,
        'updated_index': _updatedIndex,
        'success': _success,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'step_id': serializeParam(
          _stepId,
          ParamType.String,
        ),
        'updated_index': serializeParam(
          _updatedIndex,
          ParamType.int,
        ),
        'success': serializeParam(
          _success,
          ParamType.bool,
        ),
      }.withoutNulls;

  static StepsStruct fromSerializableMap(Map<String, dynamic> data) =>
      StepsStruct(
        stepId: deserializeParam(
          data['step_id'],
          ParamType.String,
          false,
        ),
        updatedIndex: deserializeParam(
          data['updated_index'],
          ParamType.int,
          false,
        ),
        success: deserializeParam(
          data['success'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'StepsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StepsStruct &&
        stepId == other.stepId &&
        updatedIndex == other.updatedIndex &&
        success == other.success;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([stepId, updatedIndex, success]);
}

StepsStruct createStepsStruct({
  String? stepId,
  int? updatedIndex,
  bool? success,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StepsStruct(
      stepId: stepId,
      updatedIndex: updatedIndex,
      success: success,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StepsStruct? updateStepsStruct(
  StepsStruct? steps, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    steps
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStepsStructData(
  Map<String, dynamic> firestoreData,
  StepsStruct? steps,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (steps == null) {
    return;
  }
  if (steps.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && steps.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final stepsData = getStepsFirestoreData(steps, forFieldValue);
  final nestedData = stepsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = steps.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStepsFirestoreData(
  StepsStruct? steps, [
  bool forFieldValue = false,
]) {
  if (steps == null) {
    return {};
  }
  final firestoreData = mapToFirestore(steps.toMap());

  // Add any Firestore field values
  steps.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStepsListFirestoreData(
  List<StepsStruct>? stepss,
) =>
    stepss?.map((e) => getStepsFirestoreData(e, true)).toList() ?? [];
