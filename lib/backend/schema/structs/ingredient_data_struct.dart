// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class IngredientDataStruct extends FFFirebaseStruct {
  IngredientDataStruct({
    String? ingredientId,
    int? updatedIndex,
    bool? success,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _ingredientId = ingredientId,
        _updatedIndex = updatedIndex,
        _success = success,
        super(firestoreUtilData);

  // "ingredient_id" field.
  String? _ingredientId;
  String get ingredientId => _ingredientId ?? '';
  set ingredientId(String? val) => _ingredientId = val;

  bool hasIngredientId() => _ingredientId != null;

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

  static IngredientDataStruct fromMap(Map<String, dynamic> data) =>
      IngredientDataStruct(
        ingredientId: data['ingredient_id'] as String?,
        updatedIndex: castToType<int>(data['updated_index']),
        success: data['success'] as bool?,
      );

  static IngredientDataStruct? maybeFromMap(dynamic data) => data is Map
      ? IngredientDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ingredient_id': _ingredientId,
        'updated_index': _updatedIndex,
        'success': _success,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ingredient_id': serializeParam(
          _ingredientId,
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

  static IngredientDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      IngredientDataStruct(
        ingredientId: deserializeParam(
          data['ingredient_id'],
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
  String toString() => 'IngredientDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IngredientDataStruct &&
        ingredientId == other.ingredientId &&
        updatedIndex == other.updatedIndex &&
        success == other.success;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([ingredientId, updatedIndex, success]);
}

IngredientDataStruct createIngredientDataStruct({
  String? ingredientId,
  int? updatedIndex,
  bool? success,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    IngredientDataStruct(
      ingredientId: ingredientId,
      updatedIndex: updatedIndex,
      success: success,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

IngredientDataStruct? updateIngredientDataStruct(
  IngredientDataStruct? ingredientData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ingredientData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addIngredientDataStructData(
  Map<String, dynamic> firestoreData,
  IngredientDataStruct? ingredientData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ingredientData == null) {
    return;
  }
  if (ingredientData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && ingredientData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ingredientDataData =
      getIngredientDataFirestoreData(ingredientData, forFieldValue);
  final nestedData =
      ingredientDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = ingredientData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getIngredientDataFirestoreData(
  IngredientDataStruct? ingredientData, [
  bool forFieldValue = false,
]) {
  if (ingredientData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ingredientData.toMap());

  // Add any Firestore field values
  ingredientData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getIngredientDataListFirestoreData(
  List<IngredientDataStruct>? ingredientDatas,
) =>
    ingredientDatas
        ?.map((e) => getIngredientDataFirestoreData(e, true))
        .toList() ??
    [];
