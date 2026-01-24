// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TagStruct extends FFFirebaseStruct {
  TagStruct({
    String? tagName,
    String? tagColor,
    int? totalConsumptionCount,
    int? recipeCount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _tagName = tagName,
        _tagColor = tagColor,
        _totalConsumptionCount = totalConsumptionCount,
        _recipeCount = recipeCount,
        super(firestoreUtilData);

  // "tag_name" field.
  String? _tagName;
  String get tagName => _tagName ?? '';
  set tagName(String? val) => _tagName = val;

  bool hasTagName() => _tagName != null;

  // "tag_color" field.
  String? _tagColor;
  String get tagColor => _tagColor ?? '';
  set tagColor(String? val) => _tagColor = val;

  bool hasTagColor() => _tagColor != null;

  // "total_consumption_count" field.
  int? _totalConsumptionCount;
  int get totalConsumptionCount => _totalConsumptionCount ?? 0;
  set totalConsumptionCount(int? val) => _totalConsumptionCount = val;

  void incrementTotalConsumptionCount(int amount) =>
      totalConsumptionCount = totalConsumptionCount + amount;

  bool hasTotalConsumptionCount() => _totalConsumptionCount != null;

  // "recipe_count" field.
  int? _recipeCount;
  int get recipeCount => _recipeCount ?? 0;
  set recipeCount(int? val) => _recipeCount = val;

  void incrementRecipeCount(int amount) => recipeCount = recipeCount + amount;

  bool hasRecipeCount() => _recipeCount != null;

  static TagStruct fromMap(Map<String, dynamic> data) => TagStruct(
        tagName: data['tag_name'] as String?,
        tagColor: data['tag_color'] as String?,
        totalConsumptionCount: castToType<int>(data['total_consumption_count']),
        recipeCount: castToType<int>(data['recipe_count']),
      );

  static TagStruct? maybeFromMap(dynamic data) =>
      data is Map ? TagStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'tag_name': _tagName,
        'tag_color': _tagColor,
        'total_consumption_count': _totalConsumptionCount,
        'recipe_count': _recipeCount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tag_name': serializeParam(
          _tagName,
          ParamType.String,
        ),
        'tag_color': serializeParam(
          _tagColor,
          ParamType.String,
        ),
        'total_consumption_count': serializeParam(
          _totalConsumptionCount,
          ParamType.int,
        ),
        'recipe_count': serializeParam(
          _recipeCount,
          ParamType.int,
        ),
      }.withoutNulls;

  static TagStruct fromSerializableMap(Map<String, dynamic> data) => TagStruct(
        tagName: deserializeParam(
          data['tag_name'],
          ParamType.String,
          false,
        ),
        tagColor: deserializeParam(
          data['tag_color'],
          ParamType.String,
          false,
        ),
        totalConsumptionCount: deserializeParam(
          data['total_consumption_count'],
          ParamType.int,
          false,
        ),
        recipeCount: deserializeParam(
          data['recipe_count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TagStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TagStruct &&
        tagName == other.tagName &&
        tagColor == other.tagColor &&
        totalConsumptionCount == other.totalConsumptionCount &&
        recipeCount == other.recipeCount;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([tagName, tagColor, totalConsumptionCount, recipeCount]);
}

TagStruct createTagStruct({
  String? tagName,
  String? tagColor,
  int? totalConsumptionCount,
  int? recipeCount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TagStruct(
      tagName: tagName,
      tagColor: tagColor,
      totalConsumptionCount: totalConsumptionCount,
      recipeCount: recipeCount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TagStruct? updateTagStruct(
  TagStruct? tag, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    tag
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTagStructData(
  Map<String, dynamic> firestoreData,
  TagStruct? tag,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tag == null) {
    return;
  }
  if (tag.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && tag.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final tagData = getTagFirestoreData(tag, forFieldValue);
  final nestedData = tagData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = tag.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTagFirestoreData(
  TagStruct? tag, [
  bool forFieldValue = false,
]) {
  if (tag == null) {
    return {};
  }
  final firestoreData = mapToFirestore(tag.toMap());

  // Add any Firestore field values
  tag.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTagListFirestoreData(
  List<TagStruct>? tags,
) =>
    tags?.map((e) => getTagFirestoreData(e, true)).toList() ?? [];
