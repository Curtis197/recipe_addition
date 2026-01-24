// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class IngredientsStruct extends FFFirebaseStruct {
  IngredientsStruct({
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

  static IngredientsStruct fromMap(Map<String, dynamic> data) =>
      IngredientsStruct(
        ingredientId: data['ingredient_id'] as String?,
        updatedIndex: castToType<int>(data['updated_index']),
        success: data['success'] as bool?,
      );

  static IngredientsStruct? maybeFromMap(dynamic data) => data is Map
      ? IngredientsStruct.fromMap(data.cast<String, dynamic>())
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

  static IngredientsStruct fromSerializableMap(Map<String, dynamic> data) =>
      IngredientsStruct(
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
  String toString() => 'IngredientsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IngredientsStruct &&
        ingredientId == other.ingredientId &&
        updatedIndex == other.updatedIndex &&
        success == other.success;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([ingredientId, updatedIndex, success]);
}

IngredientsStruct createIngredientsStruct({
  String? ingredientId,
  int? updatedIndex,
  bool? success,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    IngredientsStruct(
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

IngredientsStruct? updateIngredientsStruct(
  IngredientsStruct? ingredients, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ingredients
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addIngredientsStructData(
  Map<String, dynamic> firestoreData,
  IngredientsStruct? ingredients,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ingredients == null) {
    return;
  }
  if (ingredients.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && ingredients.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ingredientsData =
      getIngredientsFirestoreData(ingredients, forFieldValue);
  final nestedData =
      ingredientsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = ingredients.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getIngredientsFirestoreData(
  IngredientsStruct? ingredients, [
  bool forFieldValue = false,
]) {
  if (ingredients == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ingredients.toMap());

  // Add any Firestore field values
  ingredients.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getIngredientsListFirestoreData(
  List<IngredientsStruct>? ingredientss,
) =>
    ingredientss?.map((e) => getIngredientsFirestoreData(e, true)).toList() ??
    [];
