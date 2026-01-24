// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class RegionStruct extends FFFirebaseStruct {
  RegionStruct({
    String? foodRegion,
    int? totalConsumptionCount,
    int? recipeCount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _foodRegion = foodRegion,
        _totalConsumptionCount = totalConsumptionCount,
        _recipeCount = recipeCount,
        super(firestoreUtilData);

  // "food_region" field.
  String? _foodRegion;
  String get foodRegion => _foodRegion ?? '';
  set foodRegion(String? val) => _foodRegion = val;

  bool hasFoodRegion() => _foodRegion != null;

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

  static RegionStruct fromMap(Map<String, dynamic> data) => RegionStruct(
        foodRegion: data['food_region'] as String?,
        totalConsumptionCount: castToType<int>(data['total_consumption_count']),
        recipeCount: castToType<int>(data['recipe_count']),
      );

  static RegionStruct? maybeFromMap(dynamic data) =>
      data is Map ? RegionStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'food_region': _foodRegion,
        'total_consumption_count': _totalConsumptionCount,
        'recipe_count': _recipeCount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'food_region': serializeParam(
          _foodRegion,
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

  static RegionStruct fromSerializableMap(Map<String, dynamic> data) =>
      RegionStruct(
        foodRegion: deserializeParam(
          data['food_region'],
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
  String toString() => 'RegionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RegionStruct &&
        foodRegion == other.foodRegion &&
        totalConsumptionCount == other.totalConsumptionCount &&
        recipeCount == other.recipeCount;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([foodRegion, totalConsumptionCount, recipeCount]);
}

RegionStruct createRegionStruct({
  String? foodRegion,
  int? totalConsumptionCount,
  int? recipeCount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RegionStruct(
      foodRegion: foodRegion,
      totalConsumptionCount: totalConsumptionCount,
      recipeCount: recipeCount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RegionStruct? updateRegionStruct(
  RegionStruct? region, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    region
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRegionStructData(
  Map<String, dynamic> firestoreData,
  RegionStruct? region,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (region == null) {
    return;
  }
  if (region.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && region.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final regionData = getRegionFirestoreData(region, forFieldValue);
  final nestedData = regionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = region.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRegionFirestoreData(
  RegionStruct? region, [
  bool forFieldValue = false,
]) {
  if (region == null) {
    return {};
  }
  final firestoreData = mapToFirestore(region.toMap());

  // Add any Firestore field values
  region.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRegionListFirestoreData(
  List<RegionStruct>? regions,
) =>
    regions?.map((e) => getRegionFirestoreData(e, true)).toList() ?? [];
