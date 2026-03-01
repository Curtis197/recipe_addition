// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class RecipesPublishedStruct extends FFFirebaseStruct {
  RecipesPublishedStruct({
    int? current,
    int? previous,
    int? trend,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _current = current,
        _previous = previous,
        _trend = trend,
        super(firestoreUtilData);

  // "current" field.
  int? _current;
  int get current => _current ?? 0;
  set current(int? val) => _current = val;

  void incrementCurrent(int amount) => current = current + amount;

  bool hasCurrent() => _current != null;

  // "previous" field.
  int? _previous;
  int get previous => _previous ?? 0;
  set previous(int? val) => _previous = val;

  void incrementPrevious(int amount) => previous = previous + amount;

  bool hasPrevious() => _previous != null;

  // "trend" field.
  int? _trend;
  int get trend => _trend ?? 0;
  set trend(int? val) => _trend = val;

  void incrementTrend(int amount) => trend = trend + amount;

  bool hasTrend() => _trend != null;

  static RecipesPublishedStruct fromMap(Map<String, dynamic> data) =>
      RecipesPublishedStruct(
        current: castToType<int>(data['current']),
        previous: castToType<int>(data['previous']),
        trend: castToType<int>(data['trend']),
      );

  static RecipesPublishedStruct? maybeFromMap(dynamic data) => data is Map
      ? RecipesPublishedStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'current': _current,
        'previous': _previous,
        'trend': _trend,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'current': serializeParam(
          _current,
          ParamType.int,
        ),
        'previous': serializeParam(
          _previous,
          ParamType.int,
        ),
        'trend': serializeParam(
          _trend,
          ParamType.int,
        ),
      }.withoutNulls;

  static RecipesPublishedStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RecipesPublishedStruct(
        current: deserializeParam(
          data['current'],
          ParamType.int,
          false,
        ),
        previous: deserializeParam(
          data['previous'],
          ParamType.int,
          false,
        ),
        trend: deserializeParam(
          data['trend'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RecipesPublishedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RecipesPublishedStruct &&
        current == other.current &&
        previous == other.previous &&
        trend == other.trend;
  }

  @override
  int get hashCode => const ListEquality().hash([current, previous, trend]);
}

RecipesPublishedStruct createRecipesPublishedStruct({
  int? current,
  int? previous,
  int? trend,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RecipesPublishedStruct(
      current: current,
      previous: previous,
      trend: trend,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RecipesPublishedStruct? updateRecipesPublishedStruct(
  RecipesPublishedStruct? recipesPublished, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    recipesPublished
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRecipesPublishedStructData(
  Map<String, dynamic> firestoreData,
  RecipesPublishedStruct? recipesPublished,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (recipesPublished == null) {
    return;
  }
  if (recipesPublished.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && recipesPublished.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final recipesPublishedData =
      getRecipesPublishedFirestoreData(recipesPublished, forFieldValue);
  final nestedData =
      recipesPublishedData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = recipesPublished.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRecipesPublishedFirestoreData(
  RecipesPublishedStruct? recipesPublished, [
  bool forFieldValue = false,
]) {
  if (recipesPublished == null) {
    return {};
  }
  final firestoreData = mapToFirestore(recipesPublished.toMap());

  // Add any Firestore field values
  recipesPublished.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRecipesPublishedListFirestoreData(
  List<RecipesPublishedStruct>? recipesPublisheds,
) =>
    recipesPublisheds
        ?.map((e) => getRecipesPublishedFirestoreData(e, true))
        .toList() ??
    [];
