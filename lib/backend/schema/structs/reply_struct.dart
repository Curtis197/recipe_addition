// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ReplyStruct extends FFFirebaseStruct {
  ReplyStruct({
    String? reply,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _reply = reply,
        super(firestoreUtilData);

  // "reply" field.
  String? _reply;
  String get reply => _reply ?? '';
  set reply(String? val) => _reply = val;

  bool hasReply() => _reply != null;

  static ReplyStruct fromMap(Map<String, dynamic> data) => ReplyStruct(
        reply: data['reply'] as String?,
      );

  static ReplyStruct? maybeFromMap(dynamic data) =>
      data is Map ? ReplyStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'reply': _reply,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'reply': serializeParam(
          _reply,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReplyStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReplyStruct(
        reply: deserializeParam(
          data['reply'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReplyStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReplyStruct && reply == other.reply;
  }

  @override
  int get hashCode => const ListEquality().hash([reply]);
}

ReplyStruct createReplyStruct({
  String? reply,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ReplyStruct(
      reply: reply,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ReplyStruct? updateReplyStruct(
  ReplyStruct? replyStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    replyStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addReplyStructData(
  Map<String, dynamic> firestoreData,
  ReplyStruct? replyStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (replyStruct == null) {
    return;
  }
  if (replyStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && replyStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final replyStructData = getReplyFirestoreData(replyStruct, forFieldValue);
  final nestedData =
      replyStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = replyStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getReplyFirestoreData(
  ReplyStruct? replyStruct, [
  bool forFieldValue = false,
]) {
  if (replyStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(replyStruct.toMap());

  // Add any Firestore field values
  replyStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getReplyListFirestoreData(
  List<ReplyStruct>? replyStructs,
) =>
    replyStructs?.map((e) => getReplyFirestoreData(e, true)).toList() ?? [];
