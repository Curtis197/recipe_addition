// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class FiltersAppliedStruct extends FFFirebaseStruct {
  FiltersAppliedStruct({
    String? filter,
    String? sortBy,
    String? searchName,
    String? foodRegion,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _filter = filter,
        _sortBy = sortBy,
        _searchName = searchName,
        _foodRegion = foodRegion,
        super(firestoreUtilData);

  // "filter" field.
  String? _filter;
  String get filter => _filter ?? '';
  set filter(String? val) => _filter = val;

  bool hasFilter() => _filter != null;

  // "sort_by" field.
  String? _sortBy;
  String get sortBy => _sortBy ?? '';
  set sortBy(String? val) => _sortBy = val;

  bool hasSortBy() => _sortBy != null;

  // "search_name" field.
  String? _searchName;
  String get searchName => _searchName ?? '';
  set searchName(String? val) => _searchName = val;

  bool hasSearchName() => _searchName != null;

  // "food_region" field.
  String? _foodRegion;
  String get foodRegion => _foodRegion ?? '';
  set foodRegion(String? val) => _foodRegion = val;

  bool hasFoodRegion() => _foodRegion != null;

  static FiltersAppliedStruct fromMap(Map<String, dynamic> data) =>
      FiltersAppliedStruct(
        filter: data['filter'] as String?,
        sortBy: data['sort_by'] as String?,
        searchName: data['search_name'] as String?,
        foodRegion: data['food_region'] as String?,
      );

  static FiltersAppliedStruct? maybeFromMap(dynamic data) => data is Map
      ? FiltersAppliedStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'filter': _filter,
        'sort_by': _sortBy,
        'search_name': _searchName,
        'food_region': _foodRegion,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'filter': serializeParam(
          _filter,
          ParamType.String,
        ),
        'sort_by': serializeParam(
          _sortBy,
          ParamType.String,
        ),
        'search_name': serializeParam(
          _searchName,
          ParamType.String,
        ),
        'food_region': serializeParam(
          _foodRegion,
          ParamType.String,
        ),
      }.withoutNulls;

  static FiltersAppliedStruct fromSerializableMap(Map<String, dynamic> data) =>
      FiltersAppliedStruct(
        filter: deserializeParam(
          data['filter'],
          ParamType.String,
          false,
        ),
        sortBy: deserializeParam(
          data['sort_by'],
          ParamType.String,
          false,
        ),
        searchName: deserializeParam(
          data['search_name'],
          ParamType.String,
          false,
        ),
        foodRegion: deserializeParam(
          data['food_region'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'FiltersAppliedStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FiltersAppliedStruct &&
        filter == other.filter &&
        sortBy == other.sortBy &&
        searchName == other.searchName &&
        foodRegion == other.foodRegion;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([filter, sortBy, searchName, foodRegion]);
}

FiltersAppliedStruct createFiltersAppliedStruct({
  String? filter,
  String? sortBy,
  String? searchName,
  String? foodRegion,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    FiltersAppliedStruct(
      filter: filter,
      sortBy: sortBy,
      searchName: searchName,
      foodRegion: foodRegion,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

FiltersAppliedStruct? updateFiltersAppliedStruct(
  FiltersAppliedStruct? filtersApplied, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    filtersApplied
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addFiltersAppliedStructData(
  Map<String, dynamic> firestoreData,
  FiltersAppliedStruct? filtersApplied,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (filtersApplied == null) {
    return;
  }
  if (filtersApplied.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && filtersApplied.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final filtersAppliedData =
      getFiltersAppliedFirestoreData(filtersApplied, forFieldValue);
  final nestedData =
      filtersAppliedData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = filtersApplied.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getFiltersAppliedFirestoreData(
  FiltersAppliedStruct? filtersApplied, [
  bool forFieldValue = false,
]) {
  if (filtersApplied == null) {
    return {};
  }
  final firestoreData = mapToFirestore(filtersApplied.toMap());

  // Add any Firestore field values
  filtersApplied.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getFiltersAppliedListFirestoreData(
  List<FiltersAppliedStruct>? filtersApplieds,
) =>
    filtersApplieds
        ?.map((e) => getFiltersAppliedFirestoreData(e, true))
        .toList() ??
    [];
