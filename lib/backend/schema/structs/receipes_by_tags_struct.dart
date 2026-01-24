// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReceipesByTagsStruct extends FFFirebaseStruct {
  ReceipesByTagsStruct({
    int? receipeId,
    String? receipeName,
    int? consumptionCount,
    List<TagsStruct>? tags,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _receipeId = receipeId,
        _receipeName = receipeName,
        _consumptionCount = consumptionCount,
        _tags = tags,
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

  // "consumption_count" field.
  int? _consumptionCount;
  int get consumptionCount => _consumptionCount ?? 0;
  set consumptionCount(int? val) => _consumptionCount = val;

  void incrementConsumptionCount(int amount) =>
      consumptionCount = consumptionCount + amount;

  bool hasConsumptionCount() => _consumptionCount != null;

  // "tags" field.
  List<TagsStruct>? _tags;
  List<TagsStruct> get tags => _tags ?? const [];
  set tags(List<TagsStruct>? val) => _tags = val;

  void updateTags(Function(List<TagsStruct>) updateFn) {
    updateFn(_tags ??= []);
  }

  bool hasTags() => _tags != null;

  static ReceipesByTagsStruct fromMap(Map<String, dynamic> data) =>
      ReceipesByTagsStruct(
        receipeId: castToType<int>(data['receipe_id']),
        receipeName: data['receipe_name'] as String?,
        consumptionCount: castToType<int>(data['consumption_count']),
        tags: getStructList(
          data['tags'],
          TagsStruct.fromMap,
        ),
      );

  static ReceipesByTagsStruct? maybeFromMap(dynamic data) => data is Map
      ? ReceipesByTagsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'receipe_id': _receipeId,
        'receipe_name': _receipeName,
        'consumption_count': _consumptionCount,
        'tags': _tags?.map((e) => e.toMap()).toList(),
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
        'consumption_count': serializeParam(
          _consumptionCount,
          ParamType.int,
        ),
        'tags': serializeParam(
          _tags,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ReceipesByTagsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReceipesByTagsStruct(
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
        consumptionCount: deserializeParam(
          data['consumption_count'],
          ParamType.int,
          false,
        ),
        tags: deserializeStructParam<TagsStruct>(
          data['tags'],
          ParamType.DataStruct,
          true,
          structBuilder: TagsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ReceipesByTagsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ReceipesByTagsStruct &&
        receipeId == other.receipeId &&
        receipeName == other.receipeName &&
        consumptionCount == other.consumptionCount &&
        listEquality.equals(tags, other.tags);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([receipeId, receipeName, consumptionCount, tags]);
}

ReceipesByTagsStruct createReceipesByTagsStruct({
  int? receipeId,
  String? receipeName,
  int? consumptionCount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ReceipesByTagsStruct(
      receipeId: receipeId,
      receipeName: receipeName,
      consumptionCount: consumptionCount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ReceipesByTagsStruct? updateReceipesByTagsStruct(
  ReceipesByTagsStruct? receipesByTags, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    receipesByTags
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addReceipesByTagsStructData(
  Map<String, dynamic> firestoreData,
  ReceipesByTagsStruct? receipesByTags,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (receipesByTags == null) {
    return;
  }
  if (receipesByTags.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && receipesByTags.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final receipesByTagsData =
      getReceipesByTagsFirestoreData(receipesByTags, forFieldValue);
  final nestedData =
      receipesByTagsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = receipesByTags.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getReceipesByTagsFirestoreData(
  ReceipesByTagsStruct? receipesByTags, [
  bool forFieldValue = false,
]) {
  if (receipesByTags == null) {
    return {};
  }
  final firestoreData = mapToFirestore(receipesByTags.toMap());

  // Add any Firestore field values
  receipesByTags.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getReceipesByTagsListFirestoreData(
  List<ReceipesByTagsStruct>? receipesByTagss,
) =>
    receipesByTagss
        ?.map((e) => getReceipesByTagsFirestoreData(e, true))
        .toList() ??
    [];
