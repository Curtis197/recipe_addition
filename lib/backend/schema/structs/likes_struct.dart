// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class LikesStruct extends FFFirebaseStruct {
  LikesStruct({
    int? current,
    int? previous,
    double? trend,
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
  double? _trend;
  double get trend => _trend ?? 0.0;
  set trend(double? val) => _trend = val;

  void incrementTrend(double amount) => trend = trend + amount;

  bool hasTrend() => _trend != null;

  static LikesStruct fromMap(Map<String, dynamic> data) => LikesStruct(
        current: castToType<int>(data['current']),
        previous: castToType<int>(data['previous']),
        trend: castToType<double>(data['trend']),
      );

  static LikesStruct? maybeFromMap(dynamic data) =>
      data is Map ? LikesStruct.fromMap(data.cast<String, dynamic>()) : null;

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
          ParamType.double,
        ),
      }.withoutNulls;

  static LikesStruct fromSerializableMap(Map<String, dynamic> data) =>
      LikesStruct(
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
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'LikesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LikesStruct &&
        current == other.current &&
        previous == other.previous &&
        trend == other.trend;
  }

  @override
  int get hashCode => const ListEquality().hash([current, previous, trend]);
}

LikesStruct createLikesStruct({
  int? current,
  int? previous,
  double? trend,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LikesStruct(
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

LikesStruct? updateLikesStruct(
  LikesStruct? likes, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    likes
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLikesStructData(
  Map<String, dynamic> firestoreData,
  LikesStruct? likes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (likes == null) {
    return;
  }
  if (likes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && likes.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final likesData = getLikesFirestoreData(likes, forFieldValue);
  final nestedData = likesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = likes.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLikesFirestoreData(
  LikesStruct? likes, [
  bool forFieldValue = false,
]) {
  if (likes == null) {
    return {};
  }
  final firestoreData = mapToFirestore(likes.toMap());

  // Add any Firestore field values
  likes.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLikesListFirestoreData(
  List<LikesStruct>? likess,
) =>
    likess?.map((e) => getLikesFirestoreData(e, true)).toList() ?? [];
