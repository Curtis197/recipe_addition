// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class IngredientStruct extends FFFirebaseStruct {
  IngredientStruct({
    String? id,
    String? name,
    String? unit,
    int? quantity,
    int? receipeId,
    String? category,
    String? photoUrl,
    String? type,
    String? temporaryReceipeId,
    int? index,
    bool? title,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _unit = unit,
        _quantity = quantity,
        _receipeId = receipeId,
        _category = category,
        _photoUrl = photoUrl,
        _type = type,
        _temporaryReceipeId = temporaryReceipeId,
        _index = index,
        _title = title,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  set unit(String? val) => _unit = val;

  bool hasUnit() => _unit != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  // "receipe_id" field.
  int? _receipeId;
  int get receipeId => _receipeId ?? 0;
  set receipeId(int? val) => _receipeId = val;

  void incrementReceipeId(int amount) => receipeId = receipeId + amount;

  bool hasReceipeId() => _receipeId != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  set photoUrl(String? val) => _photoUrl = val;

  bool hasPhotoUrl() => _photoUrl != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "temporary_receipe_id" field.
  String? _temporaryReceipeId;
  String get temporaryReceipeId => _temporaryReceipeId ?? '';
  set temporaryReceipeId(String? val) => _temporaryReceipeId = val;

  bool hasTemporaryReceipeId() => _temporaryReceipeId != null;

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

  static IngredientStruct fromMap(Map<String, dynamic> data) =>
      IngredientStruct(
        id: data['id'] as String?,
        name: data['name'] as String?,
        unit: data['unit'] as String?,
        quantity: castToType<int>(data['quantity']),
        receipeId: castToType<int>(data['receipe_id']),
        category: data['category'] as String?,
        photoUrl: data['photo_url'] as String?,
        type: data['type'] as String?,
        temporaryReceipeId: data['temporary_receipe_id'] as String?,
        index: castToType<int>(data['index']),
        title: data['title'] as bool?,
      );

  static IngredientStruct? maybeFromMap(dynamic data) => data is Map
      ? IngredientStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'unit': _unit,
        'quantity': _quantity,
        'receipe_id': _receipeId,
        'category': _category,
        'photo_url': _photoUrl,
        'type': _type,
        'temporary_receipe_id': _temporaryReceipeId,
        'index': _index,
        'title': _title,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'unit': serializeParam(
          _unit,
          ParamType.String,
        ),
        'quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
        'receipe_id': serializeParam(
          _receipeId,
          ParamType.int,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'photo_url': serializeParam(
          _photoUrl,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'temporary_receipe_id': serializeParam(
          _temporaryReceipeId,
          ParamType.String,
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

  static IngredientStruct fromSerializableMap(Map<String, dynamic> data) =>
      IngredientStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        unit: deserializeParam(
          data['unit'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['quantity'],
          ParamType.int,
          false,
        ),
        receipeId: deserializeParam(
          data['receipe_id'],
          ParamType.int,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        photoUrl: deserializeParam(
          data['photo_url'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        temporaryReceipeId: deserializeParam(
          data['temporary_receipe_id'],
          ParamType.String,
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
  String toString() => 'IngredientStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is IngredientStruct &&
        id == other.id &&
        name == other.name &&
        unit == other.unit &&
        quantity == other.quantity &&
        receipeId == other.receipeId &&
        category == other.category &&
        photoUrl == other.photoUrl &&
        type == other.type &&
        temporaryReceipeId == other.temporaryReceipeId &&
        index == other.index &&
        title == other.title;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        unit,
        quantity,
        receipeId,
        category,
        photoUrl,
        type,
        temporaryReceipeId,
        index,
        title
      ]);
}

IngredientStruct createIngredientStruct({
  String? id,
  String? name,
  String? unit,
  int? quantity,
  int? receipeId,
  String? category,
  String? photoUrl,
  String? type,
  String? temporaryReceipeId,
  int? index,
  bool? title,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    IngredientStruct(
      id: id,
      name: name,
      unit: unit,
      quantity: quantity,
      receipeId: receipeId,
      category: category,
      photoUrl: photoUrl,
      type: type,
      temporaryReceipeId: temporaryReceipeId,
      index: index,
      title: title,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

IngredientStruct? updateIngredientStruct(
  IngredientStruct? ingredient, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ingredient
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addIngredientStructData(
  Map<String, dynamic> firestoreData,
  IngredientStruct? ingredient,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ingredient == null) {
    return;
  }
  if (ingredient.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && ingredient.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ingredientData = getIngredientFirestoreData(ingredient, forFieldValue);
  final nestedData = ingredientData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = ingredient.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getIngredientFirestoreData(
  IngredientStruct? ingredient, [
  bool forFieldValue = false,
]) {
  if (ingredient == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ingredient.toMap());

  // Add any Firestore field values
  ingredient.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getIngredientListFirestoreData(
  List<IngredientStruct>? ingredients,
) =>
    ingredients?.map((e) => getIngredientFirestoreData(e, true)).toList() ?? [];
