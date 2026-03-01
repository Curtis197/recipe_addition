// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CreatorRecipesStruct extends FFFirebaseStruct {
  CreatorRecipesStruct({
    bool? success,
    List<AllRecipesStruct>? allRecipes,
    int? totalCount,
    int? publishedCount,
    int? temporaryCount,
    CreatorStatsStruct? creatorStats,
    FiltersAppliedStruct? filtersApplied,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _success = success,
        _allRecipes = allRecipes,
        _totalCount = totalCount,
        _publishedCount = publishedCount,
        _temporaryCount = temporaryCount,
        _creatorStats = creatorStats,
        _filtersApplied = filtersApplied,
        super(firestoreUtilData);

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  set success(bool? val) => _success = val;

  bool hasSuccess() => _success != null;

  // "all_recipes" field.
  List<AllRecipesStruct>? _allRecipes;
  List<AllRecipesStruct> get allRecipes => _allRecipes ?? const [];
  set allRecipes(List<AllRecipesStruct>? val) => _allRecipes = val;

  void updateAllRecipes(Function(List<AllRecipesStruct>) updateFn) {
    updateFn(_allRecipes ??= []);
  }

  bool hasAllRecipes() => _allRecipes != null;

  // "total_count" field.
  int? _totalCount;
  int get totalCount => _totalCount ?? 0;
  set totalCount(int? val) => _totalCount = val;

  void incrementTotalCount(int amount) => totalCount = totalCount + amount;

  bool hasTotalCount() => _totalCount != null;

  // "published_count" field.
  int? _publishedCount;
  int get publishedCount => _publishedCount ?? 0;
  set publishedCount(int? val) => _publishedCount = val;

  void incrementPublishedCount(int amount) =>
      publishedCount = publishedCount + amount;

  bool hasPublishedCount() => _publishedCount != null;

  // "temporary_count" field.
  int? _temporaryCount;
  int get temporaryCount => _temporaryCount ?? 0;
  set temporaryCount(int? val) => _temporaryCount = val;

  void incrementTemporaryCount(int amount) =>
      temporaryCount = temporaryCount + amount;

  bool hasTemporaryCount() => _temporaryCount != null;

  // "creator_stats" field.
  CreatorStatsStruct? _creatorStats;
  CreatorStatsStruct get creatorStats => _creatorStats ?? CreatorStatsStruct();
  set creatorStats(CreatorStatsStruct? val) => _creatorStats = val;

  void updateCreatorStats(Function(CreatorStatsStruct) updateFn) {
    updateFn(_creatorStats ??= CreatorStatsStruct());
  }

  bool hasCreatorStats() => _creatorStats != null;

  // "filters_applied" field.
  FiltersAppliedStruct? _filtersApplied;
  FiltersAppliedStruct get filtersApplied =>
      _filtersApplied ?? FiltersAppliedStruct();
  set filtersApplied(FiltersAppliedStruct? val) => _filtersApplied = val;

  void updateFiltersApplied(Function(FiltersAppliedStruct) updateFn) {
    updateFn(_filtersApplied ??= FiltersAppliedStruct());
  }

  bool hasFiltersApplied() => _filtersApplied != null;

  static CreatorRecipesStruct fromMap(Map<String, dynamic> data) =>
      CreatorRecipesStruct(
        success: data['success'] as bool?,
        allRecipes: getStructList(
          data['all_recipes'],
          AllRecipesStruct.fromMap,
        ),
        totalCount: castToType<int>(data['total_count']),
        publishedCount: castToType<int>(data['published_count']),
        temporaryCount: castToType<int>(data['temporary_count']),
        creatorStats: data['creator_stats'] is CreatorStatsStruct
            ? data['creator_stats']
            : CreatorStatsStruct.maybeFromMap(data['creator_stats']),
        filtersApplied: data['filters_applied'] is FiltersAppliedStruct
            ? data['filters_applied']
            : FiltersAppliedStruct.maybeFromMap(data['filters_applied']),
      );

  static CreatorRecipesStruct? maybeFromMap(dynamic data) => data is Map
      ? CreatorRecipesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'success': _success,
        'all_recipes': _allRecipes?.map((e) => e.toMap()).toList(),
        'total_count': _totalCount,
        'published_count': _publishedCount,
        'temporary_count': _temporaryCount,
        'creator_stats': _creatorStats?.toMap(),
        'filters_applied': _filtersApplied?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'success': serializeParam(
          _success,
          ParamType.bool,
        ),
        'all_recipes': serializeParam(
          _allRecipes,
          ParamType.DataStruct,
          isList: true,
        ),
        'total_count': serializeParam(
          _totalCount,
          ParamType.int,
        ),
        'published_count': serializeParam(
          _publishedCount,
          ParamType.int,
        ),
        'temporary_count': serializeParam(
          _temporaryCount,
          ParamType.int,
        ),
        'creator_stats': serializeParam(
          _creatorStats,
          ParamType.DataStruct,
        ),
        'filters_applied': serializeParam(
          _filtersApplied,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static CreatorRecipesStruct fromSerializableMap(Map<String, dynamic> data) =>
      CreatorRecipesStruct(
        success: deserializeParam(
          data['success'],
          ParamType.bool,
          false,
        ),
        allRecipes: deserializeStructParam<AllRecipesStruct>(
          data['all_recipes'],
          ParamType.DataStruct,
          true,
          structBuilder: AllRecipesStruct.fromSerializableMap,
        ),
        totalCount: deserializeParam(
          data['total_count'],
          ParamType.int,
          false,
        ),
        publishedCount: deserializeParam(
          data['published_count'],
          ParamType.int,
          false,
        ),
        temporaryCount: deserializeParam(
          data['temporary_count'],
          ParamType.int,
          false,
        ),
        creatorStats: deserializeStructParam(
          data['creator_stats'],
          ParamType.DataStruct,
          false,
          structBuilder: CreatorStatsStruct.fromSerializableMap,
        ),
        filtersApplied: deserializeStructParam(
          data['filters_applied'],
          ParamType.DataStruct,
          false,
          structBuilder: FiltersAppliedStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CreatorRecipesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CreatorRecipesStruct &&
        success == other.success &&
        listEquality.equals(allRecipes, other.allRecipes) &&
        totalCount == other.totalCount &&
        publishedCount == other.publishedCount &&
        temporaryCount == other.temporaryCount &&
        creatorStats == other.creatorStats &&
        filtersApplied == other.filtersApplied;
  }

  @override
  int get hashCode => const ListEquality().hash([
        success,
        allRecipes,
        totalCount,
        publishedCount,
        temporaryCount,
        creatorStats,
        filtersApplied
      ]);
}

CreatorRecipesStruct createCreatorRecipesStruct({
  bool? success,
  int? totalCount,
  int? publishedCount,
  int? temporaryCount,
  CreatorStatsStruct? creatorStats,
  FiltersAppliedStruct? filtersApplied,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CreatorRecipesStruct(
      success: success,
      totalCount: totalCount,
      publishedCount: publishedCount,
      temporaryCount: temporaryCount,
      creatorStats:
          creatorStats ?? (clearUnsetFields ? CreatorStatsStruct() : null),
      filtersApplied:
          filtersApplied ?? (clearUnsetFields ? FiltersAppliedStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CreatorRecipesStruct? updateCreatorRecipesStruct(
  CreatorRecipesStruct? creatorRecipes, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    creatorRecipes
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCreatorRecipesStructData(
  Map<String, dynamic> firestoreData,
  CreatorRecipesStruct? creatorRecipes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (creatorRecipes == null) {
    return;
  }
  if (creatorRecipes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && creatorRecipes.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final creatorRecipesData =
      getCreatorRecipesFirestoreData(creatorRecipes, forFieldValue);
  final nestedData =
      creatorRecipesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = creatorRecipes.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCreatorRecipesFirestoreData(
  CreatorRecipesStruct? creatorRecipes, [
  bool forFieldValue = false,
]) {
  if (creatorRecipes == null) {
    return {};
  }
  final firestoreData = mapToFirestore(creatorRecipes.toMap());

  // Handle nested data for "creator_stats" field.
  addCreatorStatsStructData(
    firestoreData,
    creatorRecipes.hasCreatorStats() ? creatorRecipes.creatorStats : null,
    'creator_stats',
    forFieldValue,
  );

  // Handle nested data for "filters_applied" field.
  addFiltersAppliedStructData(
    firestoreData,
    creatorRecipes.hasFiltersApplied() ? creatorRecipes.filtersApplied : null,
    'filters_applied',
    forFieldValue,
  );

  // Add any Firestore field values
  creatorRecipes.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCreatorRecipesListFirestoreData(
  List<CreatorRecipesStruct>? creatorRecipess,
) =>
    creatorRecipess
        ?.map((e) => getCreatorRecipesFirestoreData(e, true))
        .toList() ??
    [];
