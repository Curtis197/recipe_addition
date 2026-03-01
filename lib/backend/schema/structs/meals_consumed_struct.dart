// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MealsConsumedStruct extends FFFirebaseStruct {
  MealsConsumedStruct({
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

  static MealsConsumedStruct fromMap(Map<String, dynamic> data) =>
      MealsConsumedStruct(
        current: castToType<int>(data['current']),
        previous: castToType<int>(data['previous']),
        trend: castToType<int>(data['trend']),
      );

  static MealsConsumedStruct? maybeFromMap(dynamic data) => data is Map
      ? MealsConsumedStruct.fromMap(data.cast<String, dynamic>())
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

  static MealsConsumedStruct fromSerializableMap(Map<String, dynamic> data) =>
      MealsConsumedStruct(
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
  String toString() => 'MealsConsumedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MealsConsumedStruct &&
        current == other.current &&
        previous == other.previous &&
        trend == other.trend;
  }

  @override
  int get hashCode => const ListEquality().hash([current, previous, trend]);
}

MealsConsumedStruct createMealsConsumedStruct({
  int? current,
  int? previous,
  int? trend,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MealsConsumedStruct(
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

MealsConsumedStruct? updateMealsConsumedStruct(
  MealsConsumedStruct? mealsConsumed, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    mealsConsumed
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMealsConsumedStructData(
  Map<String, dynamic> firestoreData,
  MealsConsumedStruct? mealsConsumed,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (mealsConsumed == null) {
    return;
  }
  if (mealsConsumed.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && mealsConsumed.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final mealsConsumedData =
      getMealsConsumedFirestoreData(mealsConsumed, forFieldValue);
  final nestedData =
      mealsConsumedData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = mealsConsumed.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMealsConsumedFirestoreData(
  MealsConsumedStruct? mealsConsumed, [
  bool forFieldValue = false,
]) {
  if (mealsConsumed == null) {
    return {};
  }
  final firestoreData = mapToFirestore(mealsConsumed.toMap());

  // Add any Firestore field values
  mealsConsumed.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMealsConsumedListFirestoreData(
  List<MealsConsumedStruct>? mealsConsumeds,
) =>
    mealsConsumeds
        ?.map((e) => getMealsConsumedFirestoreData(e, true))
        .toList() ??
    [];
