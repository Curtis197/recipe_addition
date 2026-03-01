// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GetRecipesPerformancesStruct extends FFFirebaseStruct {
  GetRecipesPerformancesStruct({
    bool? success,
    List<RecipesPerformancesStruct>? recipesPerformances,
    int? periodDays,
    int? totalRecipes,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _success = success,
        _recipesPerformances = recipesPerformances,
        _periodDays = periodDays,
        _totalRecipes = totalRecipes,
        super(firestoreUtilData);

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  set success(bool? val) => _success = val;

  bool hasSuccess() => _success != null;

  // "recipes_performances" field.
  List<RecipesPerformancesStruct>? _recipesPerformances;
  List<RecipesPerformancesStruct> get recipesPerformances =>
      _recipesPerformances ?? const [];
  set recipesPerformances(List<RecipesPerformancesStruct>? val) =>
      _recipesPerformances = val;

  void updateRecipesPerformances(
      Function(List<RecipesPerformancesStruct>) updateFn) {
    updateFn(_recipesPerformances ??= []);
  }

  bool hasRecipesPerformances() => _recipesPerformances != null;

  // "period_days" field.
  int? _periodDays;
  int get periodDays => _periodDays ?? 0;
  set periodDays(int? val) => _periodDays = val;

  void incrementPeriodDays(int amount) => periodDays = periodDays + amount;

  bool hasPeriodDays() => _periodDays != null;

  // "total_recipes" field.
  int? _totalRecipes;
  int get totalRecipes => _totalRecipes ?? 0;
  set totalRecipes(int? val) => _totalRecipes = val;

  void incrementTotalRecipes(int amount) =>
      totalRecipes = totalRecipes + amount;

  bool hasTotalRecipes() => _totalRecipes != null;

  static GetRecipesPerformancesStruct fromMap(Map<String, dynamic> data) =>
      GetRecipesPerformancesStruct(
        success: data['success'] as bool?,
        recipesPerformances: getStructList(
          data['recipes_performances'],
          RecipesPerformancesStruct.fromMap,
        ),
        periodDays: castToType<int>(data['period_days']),
        totalRecipes: castToType<int>(data['total_recipes']),
      );

  static GetRecipesPerformancesStruct? maybeFromMap(dynamic data) => data is Map
      ? GetRecipesPerformancesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'success': _success,
        'recipes_performances':
            _recipesPerformances?.map((e) => e.toMap()).toList(),
        'period_days': _periodDays,
        'total_recipes': _totalRecipes,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'success': serializeParam(
          _success,
          ParamType.bool,
        ),
        'recipes_performances': serializeParam(
          _recipesPerformances,
          ParamType.DataStruct,
          isList: true,
        ),
        'period_days': serializeParam(
          _periodDays,
          ParamType.int,
        ),
        'total_recipes': serializeParam(
          _totalRecipes,
          ParamType.int,
        ),
      }.withoutNulls;

  static GetRecipesPerformancesStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      GetRecipesPerformancesStruct(
        success: deserializeParam(
          data['success'],
          ParamType.bool,
          false,
        ),
        recipesPerformances: deserializeStructParam<RecipesPerformancesStruct>(
          data['recipes_performances'],
          ParamType.DataStruct,
          true,
          structBuilder: RecipesPerformancesStruct.fromSerializableMap,
        ),
        periodDays: deserializeParam(
          data['period_days'],
          ParamType.int,
          false,
        ),
        totalRecipes: deserializeParam(
          data['total_recipes'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'GetRecipesPerformancesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is GetRecipesPerformancesStruct &&
        success == other.success &&
        listEquality.equals(recipesPerformances, other.recipesPerformances) &&
        periodDays == other.periodDays &&
        totalRecipes == other.totalRecipes;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([success, recipesPerformances, periodDays, totalRecipes]);
}

GetRecipesPerformancesStruct createGetRecipesPerformancesStruct({
  bool? success,
  int? periodDays,
  int? totalRecipes,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    GetRecipesPerformancesStruct(
      success: success,
      periodDays: periodDays,
      totalRecipes: totalRecipes,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

GetRecipesPerformancesStruct? updateGetRecipesPerformancesStruct(
  GetRecipesPerformancesStruct? getRecipesPerformances, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    getRecipesPerformances
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addGetRecipesPerformancesStructData(
  Map<String, dynamic> firestoreData,
  GetRecipesPerformancesStruct? getRecipesPerformances,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (getRecipesPerformances == null) {
    return;
  }
  if (getRecipesPerformances.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      getRecipesPerformances.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final getRecipesPerformancesData = getGetRecipesPerformancesFirestoreData(
      getRecipesPerformances, forFieldValue);
  final nestedData =
      getRecipesPerformancesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      getRecipesPerformances.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getGetRecipesPerformancesFirestoreData(
  GetRecipesPerformancesStruct? getRecipesPerformances, [
  bool forFieldValue = false,
]) {
  if (getRecipesPerformances == null) {
    return {};
  }
  final firestoreData = mapToFirestore(getRecipesPerformances.toMap());

  // Add any Firestore field values
  getRecipesPerformances.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getGetRecipesPerformancesListFirestoreData(
  List<GetRecipesPerformancesStruct>? getRecipesPerformancess,
) =>
    getRecipesPerformancess
        ?.map((e) => getGetRecipesPerformancesFirestoreData(e, true))
        .toList() ??
    [];
