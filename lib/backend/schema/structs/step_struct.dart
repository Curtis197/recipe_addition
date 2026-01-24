// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class StepStruct extends FFFirebaseStruct {
  StepStruct({
    String? id,
    String? text,
    String? number,
    String? receipeId,
    int? temproraryReceipeId,
    int? index,
    bool? title,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _text = text,
        _number = number,
        _receipeId = receipeId,
        _temproraryReceipeId = temproraryReceipeId,
        _index = index,
        _title = title,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "text" field.
  String? _text;
  String get text => _text ?? '';
  set text(String? val) => _text = val;

  bool hasText() => _text != null;

  // "number" field.
  String? _number;
  String get number => _number ?? '';
  set number(String? val) => _number = val;

  bool hasNumber() => _number != null;

  // "receipe_id" field.
  String? _receipeId;
  String get receipeId => _receipeId ?? '';
  set receipeId(String? val) => _receipeId = val;

  bool hasReceipeId() => _receipeId != null;

  // "temprorary_receipe_id" field.
  int? _temproraryReceipeId;
  int get temproraryReceipeId => _temproraryReceipeId ?? 0;
  set temproraryReceipeId(int? val) => _temproraryReceipeId = val;

  void incrementTemproraryReceipeId(int amount) =>
      temproraryReceipeId = temproraryReceipeId + amount;

  bool hasTemproraryReceipeId() => _temproraryReceipeId != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  set index(int? val) => _index = val;

  void incrementIndex(int amount) => index = index + amount;

  bool hasIndex() => _index != null;

  // "title" field.
  bool? _title;
  bool get title => _title ?? false;
  set title(bool? val) => _title = val;

  bool hasTitle() => _title != null;

  static StepStruct fromMap(Map<String, dynamic> data) => StepStruct(
        id: data['id'] as String?,
        text: data['text'] as String?,
        number: data['number'] as String?,
        receipeId: data['receipe_id'] as String?,
        temproraryReceipeId: castToType<int>(data['temprorary_receipe_id']),
        index: castToType<int>(data['index']),
        title: data['title'] as bool?,
      );

  static StepStruct? maybeFromMap(dynamic data) =>
      data is Map ? StepStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'text': _text,
        'number': _number,
        'receipe_id': _receipeId,
        'temprorary_receipe_id': _temproraryReceipeId,
        'index': _index,
        'title': _title,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'text': serializeParam(
          _text,
          ParamType.String,
        ),
        'number': serializeParam(
          _number,
          ParamType.String,
        ),
        'receipe_id': serializeParam(
          _receipeId,
          ParamType.String,
        ),
        'temprorary_receipe_id': serializeParam(
          _temproraryReceipeId,
          ParamType.int,
        ),
        'index': serializeParam(
          _index,
          ParamType.int,
        ),
        'title': serializeParam(
          _title,
          ParamType.bool,
        ),
      }.withoutNulls;

  static StepStruct fromSerializableMap(Map<String, dynamic> data) =>
      StepStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        text: deserializeParam(
          data['text'],
          ParamType.String,
          false,
        ),
        number: deserializeParam(
          data['number'],
          ParamType.String,
          false,
        ),
        receipeId: deserializeParam(
          data['receipe_id'],
          ParamType.String,
          false,
        ),
        temproraryReceipeId: deserializeParam(
          data['temprorary_receipe_id'],
          ParamType.int,
          false,
        ),
        index: deserializeParam(
          data['index'],
          ParamType.int,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'StepStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is StepStruct &&
        id == other.id &&
        text == other.text &&
        number == other.number &&
        receipeId == other.receipeId &&
        temproraryReceipeId == other.temproraryReceipeId &&
        index == other.index &&
        title == other.title;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, text, number, receipeId, temproraryReceipeId, index, title]);
}

StepStruct createStepStruct({
  String? id,
  String? text,
  String? number,
  String? receipeId,
  int? temproraryReceipeId,
  int? index,
  bool? title,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StepStruct(
      id: id,
      text: text,
      number: number,
      receipeId: receipeId,
      temproraryReceipeId: temproraryReceipeId,
      index: index,
      title: title,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StepStruct? updateStepStruct(
  StepStruct? step, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    step
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStepStructData(
  Map<String, dynamic> firestoreData,
  StepStruct? step,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (step == null) {
    return;
  }
  if (step.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && step.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final stepData = getStepFirestoreData(step, forFieldValue);
  final nestedData = stepData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = step.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStepFirestoreData(
  StepStruct? step, [
  bool forFieldValue = false,
]) {
  if (step == null) {
    return {};
  }
  final firestoreData = mapToFirestore(step.toMap());

  // Add any Firestore field values
  step.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStepListFirestoreData(
  List<StepStruct>? steps,
) =>
    steps?.map((e) => getStepFirestoreData(e, true)).toList() ?? [];
