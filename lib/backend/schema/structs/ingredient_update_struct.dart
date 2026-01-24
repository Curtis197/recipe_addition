// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IngredientUpdateStruct extends FFFirebaseStruct {
  IngredientUpdateStruct({
    bool? success,
    String? message,
    int? recipeId,
    String? recipeFieldUsed,
    OperationsStruct? operations,
    int? totalExistingBefore,
    int? totalProvided,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _success = success,
        _message = message,
        _recipeId = recipeId,
        _recipeFieldUsed = recipeFieldUsed,
        _operations = operations,
        _totalExistingBefore = totalExistingBefore,
        _totalProvided = totalProvided,
        super(firestoreUtilData);

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  set success(bool? val) => _success = val;

  bool hasSuccess() => _success != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  set message(String? val) => _message = val;

  bool hasMessage() => _message != null;

  // "recipe_id" field.
  int? _recipeId;
  int get recipeId => _recipeId ?? 0;
  set recipeId(int? val) => _recipeId = val;

  void incrementRecipeId(int amount) => recipeId = recipeId + amount;

  bool hasRecipeId() => _recipeId != null;

  // "recipe_field_used" field.
  String? _recipeFieldUsed;
  String get recipeFieldUsed => _recipeFieldUsed ?? '';
  set recipeFieldUsed(String? val) => _recipeFieldUsed = val;

  bool hasRecipeFieldUsed() => _recipeFieldUsed != null;

  // "operations" field.
  OperationsStruct? _operations;
  OperationsStruct get operations => _operations ?? OperationsStruct();
  set operations(OperationsStruct? val) => _operations = val;

  void updateOperations(Function(OperationsStruct) updateFn) {
    updateFn(_operations ??= OperationsStruct());
  }

  bool hasOperations() => _operations != null;

  // "total_existing_before" field.
  int? _totalExistingBefore;
  int get totalExistingBefore => _totalExistingBefore ?? 0;
  set totalExistingBefore(int? val) => _totalExistingBefore = val;

  void incrementTotalExistingBefore(int amount) =>
      totalExistingBefore = totalExistingBefore + amount;

  bool hasTotalExistingBefore() => _totalExistingBefore != null;

  // "total_provided" field.
  int? _totalProvided;
  int get totalProvided => _totalProvided ?? 0;
  set totalProvided(int? val) => _totalProvided = val;

  void incrementTotalProvided(int amount) =>
      totalProvided = totalProvided + amount;

  bool hasTotalProvided() => _totalProvided != null;

  static IngredientUpdateStruct fromMap(Map<String, dynamic> data) =>
      IngredientUpdateStruct(
        success: data['success'] as bool?,
        message: data['message'] as String?,
        recipeId: castToType<int>(data['recipe_id']),
        recipeFieldUsed: data['recipe_field_used'] as String?,
        operations: data['operations'] is OperationsStruct
            ? data['operations']
            : OperationsStruct.maybeFromMap(data['operations']),
        totalExistingBefore: castToType<int>(data['total_existing_before']),
        totalProvided: castToType<int>(data['total_provided']),
      );

  static IngredientUpdateStruct? maybeFromMap(dynamic data) => data is Map
      ? IngredientUpdateStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'success': _success,
        'message': _message,
        'recipe_id': _recipeId,
        'recipe_field_used': _recipeFieldUsed,
        'operations': _operations?.toMap(),
        'total_existing_before': _totalExistingBefore,
        'total_provided': _totalProvided,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'success': serializeParam(
          _success,
          ParamType.bool,
        ),
        'message': serializeParam(
          _message,
          ParamType.String,
        ),
        'recipe_id': serializeParam(
          _recipeId,
          ParamType.int,
        ),
        'recipe_field_used': serializeParam(
          _recipeFieldUsed,
          ParamType.String,
        ),
        'operations': serializeParam(
          _operations,
          ParamType.DataStruct,
        ),
        'total_existing_before': serializeParam(
          _totalExistingBefore,
          ParamType.int,
        ),
        'total_provided': serializeParam(
          _totalProvided,
          ParamType.int,
        ),
      }.withoutNulls;

  static IngredientUpdateStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      IngredientUpdateStruct(
        success: deserializeParam(
          data['success'],
          ParamType.bool,
          false,
        ),
        message: deserializeParam(
          data['message'],
          ParamType.String,
          false,
        ),
        recipeId: deserializeParam(
          data['recipe_id'],
          ParamType.int,
          false,
        ),
        recipeFieldUsed: deserializeParam(
          data['recipe_field_used'],
          ParamType.String,
          false,
        ),
        operations: deserializeStructParam(
          data['operations'],
          ParamType.DataStruct,
          false,
          structBuilder: OperationsStruct.fromSerializableMap,
        ),
        totalExistingBefore: deserializeParam(
          data['total_existing_before'],
          ParamType.int,
          false,
        ),
        totalProvided: deserializeParam(
          data['total_provided'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'IngredientUpdateStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IngredientUpdateStruct &&
        success == other.success &&
        message == other.message &&
        recipeId == other.recipeId &&
        recipeFieldUsed == other.recipeFieldUsed &&
        operations == other.operations &&
        totalExistingBefore == other.totalExistingBefore &&
        totalProvided == other.totalProvided;
  }

  @override
  int get hashCode => const ListEquality().hash([
        success,
        message,
        recipeId,
        recipeFieldUsed,
        operations,
        totalExistingBefore,
        totalProvided
      ]);
}

IngredientUpdateStruct createIngredientUpdateStruct({
  bool? success,
  String? message,
  int? recipeId,
  String? recipeFieldUsed,
  OperationsStruct? operations,
  int? totalExistingBefore,
  int? totalProvided,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    IngredientUpdateStruct(
      success: success,
      message: message,
      recipeId: recipeId,
      recipeFieldUsed: recipeFieldUsed,
      operations: operations ?? (clearUnsetFields ? OperationsStruct() : null),
      totalExistingBefore: totalExistingBefore,
      totalProvided: totalProvided,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

IngredientUpdateStruct? updateIngredientUpdateStruct(
  IngredientUpdateStruct? ingredientUpdate, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ingredientUpdate
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addIngredientUpdateStructData(
  Map<String, dynamic> firestoreData,
  IngredientUpdateStruct? ingredientUpdate,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ingredientUpdate == null) {
    return;
  }
  if (ingredientUpdate.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && ingredientUpdate.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ingredientUpdateData =
      getIngredientUpdateFirestoreData(ingredientUpdate, forFieldValue);
  final nestedData =
      ingredientUpdateData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = ingredientUpdate.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getIngredientUpdateFirestoreData(
  IngredientUpdateStruct? ingredientUpdate, [
  bool forFieldValue = false,
]) {
  if (ingredientUpdate == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ingredientUpdate.toMap());

  // Handle nested data for "operations" field.
  addOperationsStructData(
    firestoreData,
    ingredientUpdate.hasOperations() ? ingredientUpdate.operations : null,
    'operations',
    forFieldValue,
  );

  // Add any Firestore field values
  ingredientUpdate.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getIngredientUpdateListFirestoreData(
  List<IngredientUpdateStruct>? ingredientUpdates,
) =>
    ingredientUpdates
        ?.map((e) => getIngredientUpdateFirestoreData(e, true))
        .toList() ??
    [];
