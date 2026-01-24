// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ReceipeCountStruct extends FFFirebaseStruct {
  ReceipeCountStruct({
    int? receipeId,
    String? receipeName,
    String? creatorId,
    int? consumptionCount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _receipeId = receipeId,
        _receipeName = receipeName,
        _creatorId = creatorId,
        _consumptionCount = consumptionCount,
        super(firestoreUtilData);

  // "receipe_id" field.
  int? _receipeId;
  int get receipeId => _receipeId ?? 0;
  set receipeId(int? val) => _receipeId = val;

  void incrementReceipeId(int amount) => receipeId = receipeId + amount;

  bool hasReceipeId() => _receipeId != null;

  // "receipe_name" field.
  String? _receipeName;
  String get receipeName => _receipeName ?? '';
  set receipeName(String? val) => _receipeName = val;

  bool hasReceipeName() => _receipeName != null;

  // "creator_id" field.
  String? _creatorId;
  String get creatorId => _creatorId ?? '';
  set creatorId(String? val) => _creatorId = val;

  bool hasCreatorId() => _creatorId != null;

  // "consumption_count" field.
  int? _consumptionCount;
  int get consumptionCount => _consumptionCount ?? 0;
  set consumptionCount(int? val) => _consumptionCount = val;

  void incrementConsumptionCount(int amount) =>
      consumptionCount = consumptionCount + amount;

  bool hasConsumptionCount() => _consumptionCount != null;

  static ReceipeCountStruct fromMap(Map<String, dynamic> data) =>
      ReceipeCountStruct(
        receipeId: castToType<int>(data['receipe_id']),
        receipeName: data['receipe_name'] as String?,
        creatorId: data['creator_id'] as String?,
        consumptionCount: castToType<int>(data['consumption_count']),
      );

  static ReceipeCountStruct? maybeFromMap(dynamic data) => data is Map
      ? ReceipeCountStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'receipe_id': _receipeId,
        'receipe_name': _receipeName,
        'creator_id': _creatorId,
        'consumption_count': _consumptionCount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'receipe_id': serializeParam(
          _receipeId,
          ParamType.int,
        ),
        'receipe_name': serializeParam(
          _receipeName,
          ParamType.String,
        ),
        'creator_id': serializeParam(
          _creatorId,
          ParamType.String,
        ),
        'consumption_count': serializeParam(
          _consumptionCount,
          ParamType.int,
        ),
      }.withoutNulls;

  static ReceipeCountStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReceipeCountStruct(
        receipeId: deserializeParam(
          data['receipe_id'],
          ParamType.int,
          false,
        ),
        receipeName: deserializeParam(
          data['receipe_name'],
          ParamType.String,
          false,
        ),
        creatorId: deserializeParam(
          data['creator_id'],
          ParamType.String,
          false,
        ),
        consumptionCount: deserializeParam(
          data['consumption_count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ReceipeCountStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReceipeCountStruct &&
        receipeId == other.receipeId &&
        receipeName == other.receipeName &&
        creatorId == other.creatorId &&
        consumptionCount == other.consumptionCount;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([receipeId, receipeName, creatorId, consumptionCount]);
}

ReceipeCountStruct createReceipeCountStruct({
  int? receipeId,
  String? receipeName,
  String? creatorId,
  int? consumptionCount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ReceipeCountStruct(
      receipeId: receipeId,
      receipeName: receipeName,
      creatorId: creatorId,
      consumptionCount: consumptionCount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ReceipeCountStruct? updateReceipeCountStruct(
  ReceipeCountStruct? receipeCount, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    receipeCount
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addReceipeCountStructData(
  Map<String, dynamic> firestoreData,
  ReceipeCountStruct? receipeCount,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (receipeCount == null) {
    return;
  }
  if (receipeCount.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && receipeCount.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final receipeCountData =
      getReceipeCountFirestoreData(receipeCount, forFieldValue);
  final nestedData =
      receipeCountData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = receipeCount.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getReceipeCountFirestoreData(
  ReceipeCountStruct? receipeCount, [
  bool forFieldValue = false,
]) {
  if (receipeCount == null) {
    return {};
  }
  final firestoreData = mapToFirestore(receipeCount.toMap());

  // Add any Firestore field values
  receipeCount.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getReceipeCountListFirestoreData(
  List<ReceipeCountStruct>? receipeCounts,
) =>
    receipeCounts?.map((e) => getReceipeCountFirestoreData(e, true)).toList() ??
    [];
