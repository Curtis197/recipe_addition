// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CreatorNavigationStruct extends FFFirebaseStruct {
  CreatorNavigationStruct({
    bool? hasPreviousWeek,
    bool? hasNextWeek,
    int? previousWeekNumber,
    int? previousWeekYear,
    String? nextWeekNumber,
    String? nextWeekYear,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _hasPreviousWeek = hasPreviousWeek,
        _hasNextWeek = hasNextWeek,
        _previousWeekNumber = previousWeekNumber,
        _previousWeekYear = previousWeekYear,
        _nextWeekNumber = nextWeekNumber,
        _nextWeekYear = nextWeekYear,
        super(firestoreUtilData);

  // "has_previous_week" field.
  bool? _hasPreviousWeek;
  bool get hasPreviousWeek => _hasPreviousWeek ?? false;
  set hasPreviousWeek(bool? val) => _hasPreviousWeek = val;

  bool hasHasPreviousWeek() => _hasPreviousWeek != null;

  // "has_next_week" field.
  bool? _hasNextWeek;
  bool get hasNextWeek => _hasNextWeek ?? false;
  set hasNextWeek(bool? val) => _hasNextWeek = val;

  bool hasHasNextWeek() => _hasNextWeek != null;

  // "previous_week_number" field.
  int? _previousWeekNumber;
  int get previousWeekNumber => _previousWeekNumber ?? 0;
  set previousWeekNumber(int? val) => _previousWeekNumber = val;

  void incrementPreviousWeekNumber(int amount) =>
      previousWeekNumber = previousWeekNumber + amount;

  bool hasPreviousWeekNumber() => _previousWeekNumber != null;

  // "previous_week_year" field.
  int? _previousWeekYear;
  int get previousWeekYear => _previousWeekYear ?? 0;
  set previousWeekYear(int? val) => _previousWeekYear = val;

  void incrementPreviousWeekYear(int amount) =>
      previousWeekYear = previousWeekYear + amount;

  bool hasPreviousWeekYear() => _previousWeekYear != null;

  // "next_week_number" field.
  String? _nextWeekNumber;
  String get nextWeekNumber => _nextWeekNumber ?? '';
  set nextWeekNumber(String? val) => _nextWeekNumber = val;

  bool hasNextWeekNumber() => _nextWeekNumber != null;

  // "next_week_year" field.
  String? _nextWeekYear;
  String get nextWeekYear => _nextWeekYear ?? '';
  set nextWeekYear(String? val) => _nextWeekYear = val;

  bool hasNextWeekYear() => _nextWeekYear != null;

  static CreatorNavigationStruct fromMap(Map<String, dynamic> data) =>
      CreatorNavigationStruct(
        hasPreviousWeek: data['has_previous_week'] as bool?,
        hasNextWeek: data['has_next_week'] as bool?,
        previousWeekNumber: castToType<int>(data['previous_week_number']),
        previousWeekYear: castToType<int>(data['previous_week_year']),
        nextWeekNumber: data['next_week_number'] as String?,
        nextWeekYear: data['next_week_year'] as String?,
      );

  static CreatorNavigationStruct? maybeFromMap(dynamic data) => data is Map
      ? CreatorNavigationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'has_previous_week': _hasPreviousWeek,
        'has_next_week': _hasNextWeek,
        'previous_week_number': _previousWeekNumber,
        'previous_week_year': _previousWeekYear,
        'next_week_number': _nextWeekNumber,
        'next_week_year': _nextWeekYear,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'has_previous_week': serializeParam(
          _hasPreviousWeek,
          ParamType.bool,
        ),
        'has_next_week': serializeParam(
          _hasNextWeek,
          ParamType.bool,
        ),
        'previous_week_number': serializeParam(
          _previousWeekNumber,
          ParamType.int,
        ),
        'previous_week_year': serializeParam(
          _previousWeekYear,
          ParamType.int,
        ),
        'next_week_number': serializeParam(
          _nextWeekNumber,
          ParamType.String,
        ),
        'next_week_year': serializeParam(
          _nextWeekYear,
          ParamType.String,
        ),
      }.withoutNulls;

  static CreatorNavigationStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CreatorNavigationStruct(
        hasPreviousWeek: deserializeParam(
          data['has_previous_week'],
          ParamType.bool,
          false,
        ),
        hasNextWeek: deserializeParam(
          data['has_next_week'],
          ParamType.bool,
          false,
        ),
        previousWeekNumber: deserializeParam(
          data['previous_week_number'],
          ParamType.int,
          false,
        ),
        previousWeekYear: deserializeParam(
          data['previous_week_year'],
          ParamType.int,
          false,
        ),
        nextWeekNumber: deserializeParam(
          data['next_week_number'],
          ParamType.String,
          false,
        ),
        nextWeekYear: deserializeParam(
          data['next_week_year'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CreatorNavigationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CreatorNavigationStruct &&
        hasPreviousWeek == other.hasPreviousWeek &&
        hasNextWeek == other.hasNextWeek &&
        previousWeekNumber == other.previousWeekNumber &&
        previousWeekYear == other.previousWeekYear &&
        nextWeekNumber == other.nextWeekNumber &&
        nextWeekYear == other.nextWeekYear;
  }

  @override
  int get hashCode => const ListEquality().hash([
        hasPreviousWeek,
        hasNextWeek,
        previousWeekNumber,
        previousWeekYear,
        nextWeekNumber,
        nextWeekYear
      ]);
}

CreatorNavigationStruct createCreatorNavigationStruct({
  bool? hasPreviousWeek,
  bool? hasNextWeek,
  int? previousWeekNumber,
  int? previousWeekYear,
  String? nextWeekNumber,
  String? nextWeekYear,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CreatorNavigationStruct(
      hasPreviousWeek: hasPreviousWeek,
      hasNextWeek: hasNextWeek,
      previousWeekNumber: previousWeekNumber,
      previousWeekYear: previousWeekYear,
      nextWeekNumber: nextWeekNumber,
      nextWeekYear: nextWeekYear,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CreatorNavigationStruct? updateCreatorNavigationStruct(
  CreatorNavigationStruct? creatorNavigation, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    creatorNavigation
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCreatorNavigationStructData(
  Map<String, dynamic> firestoreData,
  CreatorNavigationStruct? creatorNavigation,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (creatorNavigation == null) {
    return;
  }
  if (creatorNavigation.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && creatorNavigation.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final creatorNavigationData =
      getCreatorNavigationFirestoreData(creatorNavigation, forFieldValue);
  final nestedData =
      creatorNavigationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = creatorNavigation.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCreatorNavigationFirestoreData(
  CreatorNavigationStruct? creatorNavigation, [
  bool forFieldValue = false,
]) {
  if (creatorNavigation == null) {
    return {};
  }
  final firestoreData = mapToFirestore(creatorNavigation.toMap());

  // Add any Firestore field values
  creatorNavigation.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCreatorNavigationListFirestoreData(
  List<CreatorNavigationStruct>? creatorNavigations,
) =>
    creatorNavigations
        ?.map((e) => getCreatorNavigationFirestoreData(e, true))
        .toList() ??
    [];
