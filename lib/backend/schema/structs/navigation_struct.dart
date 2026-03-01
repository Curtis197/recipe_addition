// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class NavigationStruct extends FFFirebaseStruct {
  NavigationStruct({
    bool? hasPreviousWeek,
    bool? hasNextWeek,
    String? previousWeekNumber,
    String? previousWeekYear,
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
  String? _previousWeekNumber;
  String get previousWeekNumber => _previousWeekNumber ?? '';
  set previousWeekNumber(String? val) => _previousWeekNumber = val;

  bool hasPreviousWeekNumber() => _previousWeekNumber != null;

  // "previous_week_year" field.
  String? _previousWeekYear;
  String get previousWeekYear => _previousWeekYear ?? '';
  set previousWeekYear(String? val) => _previousWeekYear = val;

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

  static NavigationStruct fromMap(Map<String, dynamic> data) =>
      NavigationStruct(
        hasPreviousWeek: data['has_previous_week'] as bool?,
        hasNextWeek: data['has_next_week'] as bool?,
        previousWeekNumber: data['previous_week_number'] as String?,
        previousWeekYear: data['previous_week_year'] as String?,
        nextWeekNumber: data['next_week_number'] as String?,
        nextWeekYear: data['next_week_year'] as String?,
      );

  static NavigationStruct? maybeFromMap(dynamic data) => data is Map
      ? NavigationStruct.fromMap(data.cast<String, dynamic>())
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
          ParamType.String,
        ),
        'previous_week_year': serializeParam(
          _previousWeekYear,
          ParamType.String,
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

  static NavigationStruct fromSerializableMap(Map<String, dynamic> data) =>
      NavigationStruct(
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
          ParamType.String,
          false,
        ),
        previousWeekYear: deserializeParam(
          data['previous_week_year'],
          ParamType.String,
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
  String toString() => 'NavigationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NavigationStruct &&
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

NavigationStruct createNavigationStruct({
  bool? hasPreviousWeek,
  bool? hasNextWeek,
  String? previousWeekNumber,
  String? previousWeekYear,
  String? nextWeekNumber,
  String? nextWeekYear,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NavigationStruct(
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

NavigationStruct? updateNavigationStruct(
  NavigationStruct? navigation, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    navigation
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNavigationStructData(
  Map<String, dynamic> firestoreData,
  NavigationStruct? navigation,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (navigation == null) {
    return;
  }
  if (navigation.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && navigation.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final navigationData = getNavigationFirestoreData(navigation, forFieldValue);
  final nestedData = navigationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = navigation.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNavigationFirestoreData(
  NavigationStruct? navigation, [
  bool forFieldValue = false,
]) {
  if (navigation == null) {
    return {};
  }
  final firestoreData = mapToFirestore(navigation.toMap());

  // Add any Firestore field values
  navigation.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNavigationListFirestoreData(
  List<NavigationStruct>? navigations,
) =>
    navigations?.map((e) => getNavigationFirestoreData(e, true)).toList() ?? [];
