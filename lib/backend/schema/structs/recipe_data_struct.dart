// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecipeDataStruct extends FFFirebaseStruct {
  RecipeDataStruct({
    bool? success,
    RecipeStruct? recipe,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _success = success,
        _recipe = recipe,
        super(firestoreUtilData);

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  set success(bool? val) => _success = val;

  bool hasSuccess() => _success != null;

  // "recipe" field.
  RecipeStruct? _recipe;
  RecipeStruct get recipe => _recipe ?? RecipeStruct();
  set recipe(RecipeStruct? val) => _recipe = val;

  void updateRecipe(Function(RecipeStruct) updateFn) {
    updateFn(_recipe ??= RecipeStruct());
  }

  bool hasRecipe() => _recipe != null;

  static RecipeDataStruct fromMap(Map<String, dynamic> data) =>
      RecipeDataStruct(
        success: data['success'] as bool?,
        recipe: data['recipe'] is RecipeStruct
            ? data['recipe']
            : RecipeStruct.maybeFromMap(data['recipe']),
      );

  static RecipeDataStruct? maybeFromMap(dynamic data) => data is Map
      ? RecipeDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'success': _success,
        'recipe': _recipe?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'success': serializeParam(
          _success,
          ParamType.bool,
        ),
        'recipe': serializeParam(
          _recipe,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static RecipeDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      RecipeDataStruct(
        success: deserializeParam(
          data['success'],
          ParamType.bool,
          false,
        ),
        recipe: deserializeStructParam(
          data['recipe'],
          ParamType.DataStruct,
          false,
          structBuilder: RecipeStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'RecipeDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RecipeDataStruct &&
        success == other.success &&
        recipe == other.recipe;
  }

  @override
  int get hashCode => const ListEquality().hash([success, recipe]);
}

RecipeDataStruct createRecipeDataStruct({
  bool? success,
  RecipeStruct? recipe,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RecipeDataStruct(
      success: success,
      recipe: recipe ?? (clearUnsetFields ? RecipeStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RecipeDataStruct? updateRecipeDataStruct(
  RecipeDataStruct? recipeData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    recipeData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRecipeDataStructData(
  Map<String, dynamic> firestoreData,
  RecipeDataStruct? recipeData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (recipeData == null) {
    return;
  }
  if (recipeData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && recipeData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final recipeDataData = getRecipeDataFirestoreData(recipeData, forFieldValue);
  final nestedData = recipeDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = recipeData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRecipeDataFirestoreData(
  RecipeDataStruct? recipeData, [
  bool forFieldValue = false,
]) {
  if (recipeData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(recipeData.toMap());

  // Handle nested data for "recipe" field.
  addRecipeStructData(
    firestoreData,
    recipeData.hasRecipe() ? recipeData.recipe : null,
    'recipe',
    forFieldValue,
  );

  // Add any Firestore field values
  recipeData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRecipeDataListFirestoreData(
  List<RecipeDataStruct>? recipeDatas,
) =>
    recipeDatas?.map((e) => getRecipeDataFirestoreData(e, true)).toList() ?? [];
