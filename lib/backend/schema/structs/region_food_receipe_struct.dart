// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class RegionFoodReceipeStruct extends FFFirebaseStruct {
  RegionFoodReceipeStruct({
    int? receipeId,
    String? receipeName,
    int? consumptionCount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _receipeId = receipeId,
        _receipeName = receipeName,
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

  // "consumption_count" field.
  int? _consumptionCount;
  int get consumptionCount => _consumptionCount ?? 0;
  set consumptionCount(int? val) => _consumptionCount = val;

  void incrementConsumptionCount(int amount) =>
      consumptionCount = consumptionCount + amount;

  bool hasConsumptionCount() => _consumptionCount != null;

  static RegionFoodReceipeStruct fromMap(Map<String, dynamic> data) =>
      RegionFoodReceipeStruct(
        receipeId: castToType<int>(data['receipe_id']),
        receipeName: data['receipe_name'] as String?,
        consumptionCount: castToType<int>(data['consumption_count']),
      );

  static RegionFoodReceipeStruct? maybeFromMap(dynamic data) => data is Map
      ? RegionFoodReceipeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'receipe_id': _receipeId,
        'receipe_name': _receipeName,
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
        'consumption_count': serializeParam(
          _consumptionCount,
          ParamType.int,
        ),
      }.withoutNulls;

  static RegionFoodReceipeStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RegionFoodReceipeStruct(
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
      );

  @override
  String toString() => 'RegionFoodReceipeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RegionFoodReceipeStruct &&
        receipeId == other.receipeId &&
        receipeName == other.receipeName &&
        consumptionCount == other.consumptionCount;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([receipeId, receipeName, consumptionCount]);
}

RegionFoodReceipeStruct createRegionFoodReceipeStruct({
  int? receipeId,
  String? receipeName,
  int? consumptionCount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RegionFoodReceipeStruct(
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

RegionFoodReceipeStruct? updateRegionFoodReceipeStruct(
  RegionFoodReceipeStruct? regionFoodReceipe, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    regionFoodReceipe
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRegionFoodReceipeStructData(
  Map<String, dynamic> firestoreData,
  RegionFoodReceipeStruct? regionFoodReceipe,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (regionFoodReceipe == null) {
    return;
  }
  if (regionFoodReceipe.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && regionFoodReceipe.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final regionFoodReceipeData =
      getRegionFoodReceipeFirestoreData(regionFoodReceipe, forFieldValue);
  final nestedData =
      regionFoodReceipeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = regionFoodReceipe.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRegionFoodReceipeFirestoreData(
  RegionFoodReceipeStruct? regionFoodReceipe, [
  bool forFieldValue = false,
]) {
  if (regionFoodReceipe == null) {
    return {};
  }
  final firestoreData = mapToFirestore(regionFoodReceipe.toMap());

  // Add any Firestore field values
  regionFoodReceipe.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRegionFoodReceipeListFirestoreData(
  List<RegionFoodReceipeStruct>? regionFoodReceipes,
) =>
    regionFoodReceipes
        ?.map((e) => getRegionFoodReceipeFirestoreData(e, true))
        .toList() ??
    [];
