// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ConsumersStruct extends FFFirebaseStruct {
  ConsumersStruct({
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

  static ConsumersStruct fromMap(Map<String, dynamic> data) => ConsumersStruct(
        current: castToType<int>(data['current']),
        previous: castToType<int>(data['previous']),
        trend: castToType<int>(data['trend']),
      );

  static ConsumersStruct? maybeFromMap(dynamic data) => data is Map
      ? ConsumersStruct.fromMap(data.cast<String, dynamic>())
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

  static ConsumersStruct fromSerializableMap(Map<String, dynamic> data) =>
      ConsumersStruct(
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
  String toString() => 'ConsumersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ConsumersStruct &&
        current == other.current &&
        previous == other.previous &&
        trend == other.trend;
  }

  @override
  int get hashCode => const ListEquality().hash([current, previous, trend]);
}

ConsumersStruct createConsumersStruct({
  int? current,
  int? previous,
  int? trend,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ConsumersStruct(
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

ConsumersStruct? updateConsumersStruct(
  ConsumersStruct? consumers, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    consumers
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addConsumersStructData(
  Map<String, dynamic> firestoreData,
  ConsumersStruct? consumers,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (consumers == null) {
    return;
  }
  if (consumers.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && consumers.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final consumersData = getConsumersFirestoreData(consumers, forFieldValue);
  final nestedData = consumersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = consumers.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getConsumersFirestoreData(
  ConsumersStruct? consumers, [
  bool forFieldValue = false,
]) {
  if (consumers == null) {
    return {};
  }
  final firestoreData = mapToFirestore(consumers.toMap());

  // Add any Firestore field values
  consumers.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getConsumersListFirestoreData(
  List<ConsumersStruct>? consumerss,
) =>
    consumerss?.map((e) => getConsumersFirestoreData(e, true)).toList() ?? [];
