// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllRecipesStruct extends FFFirebaseStruct {
  AllRecipesStruct({
    int? id,
    String? name,
    String? description,
    int? timeOfCookingMin,
    int? timeOfCookingHour,
    String? difficulty,
    String? createdAt,
    String? status,
    int? totalLikes,
    int? totalEarnings,
    int? dailyConsumers,
    List<String>? type,
    bool? temporary,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _description = description,
        _timeOfCookingMin = timeOfCookingMin,
        _timeOfCookingHour = timeOfCookingHour,
        _difficulty = difficulty,
        _createdAt = createdAt,
        _status = status,
        _totalLikes = totalLikes,
        _totalEarnings = totalEarnings,
        _dailyConsumers = dailyConsumers,
        _type = type,
        _temporary = temporary,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "time_of_cooking_min" field.
  int? _timeOfCookingMin;
  int get timeOfCookingMin => _timeOfCookingMin ?? 0;
  set timeOfCookingMin(int? val) => _timeOfCookingMin = val;

  void incrementTimeOfCookingMin(int amount) =>
      timeOfCookingMin = timeOfCookingMin + amount;

  bool hasTimeOfCookingMin() => _timeOfCookingMin != null;

  // "time_of_cooking_hour" field.
  int? _timeOfCookingHour;
  int get timeOfCookingHour => _timeOfCookingHour ?? 0;
  set timeOfCookingHour(int? val) => _timeOfCookingHour = val;

  void incrementTimeOfCookingHour(int amount) =>
      timeOfCookingHour = timeOfCookingHour + amount;

  bool hasTimeOfCookingHour() => _timeOfCookingHour != null;

  // "difficulty" field.
  String? _difficulty;
  String get difficulty => _difficulty ?? '';
  set difficulty(String? val) => _difficulty = val;

  bool hasDifficulty() => _difficulty != null;

  // "created_at" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "total_likes" field.
  int? _totalLikes;
  int get totalLikes => _totalLikes ?? 0;
  set totalLikes(int? val) => _totalLikes = val;

  void incrementTotalLikes(int amount) => totalLikes = totalLikes + amount;

  bool hasTotalLikes() => _totalLikes != null;

  // "total_earnings" field.
  int? _totalEarnings;
  int get totalEarnings => _totalEarnings ?? 0;
  set totalEarnings(int? val) => _totalEarnings = val;

  void incrementTotalEarnings(int amount) =>
      totalEarnings = totalEarnings + amount;

  bool hasTotalEarnings() => _totalEarnings != null;

  // "daily_consumers" field.
  int? _dailyConsumers;
  int get dailyConsumers => _dailyConsumers ?? 0;
  set dailyConsumers(int? val) => _dailyConsumers = val;

  void incrementDailyConsumers(int amount) =>
      dailyConsumers = dailyConsumers + amount;

  bool hasDailyConsumers() => _dailyConsumers != null;

  // "type" field.
  List<String>? _type;
  List<String> get type => _type ?? const [];
  set type(List<String>? val) => _type = val;

  void updateType(Function(List<String>) updateFn) {
    updateFn(_type ??= []);
  }

  bool hasType() => _type != null;

  // "temporary" field.
  bool? _temporary;
  bool get temporary => _temporary ?? false;
  set temporary(bool? val) => _temporary = val;

  bool hasTemporary() => _temporary != null;

  static AllRecipesStruct fromMap(Map<String, dynamic> data) =>
      AllRecipesStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        description: data['description'] as String?,
        timeOfCookingMin: castToType<int>(data['time_of_cooking_min']),
        timeOfCookingHour: castToType<int>(data['time_of_cooking_hour']),
        difficulty: data['difficulty'] as String?,
        createdAt: data['created_at'] as String?,
        status: data['status'] as String?,
        totalLikes: castToType<int>(data['total_likes']),
        totalEarnings: castToType<int>(data['total_earnings']),
        dailyConsumers: castToType<int>(data['daily_consumers']),
        type: getDataList(data['type']),
        temporary: data['temporary'] as bool?,
      );

  static AllRecipesStruct? maybeFromMap(dynamic data) => data is Map
      ? AllRecipesStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'description': _description,
        'time_of_cooking_min': _timeOfCookingMin,
        'time_of_cooking_hour': _timeOfCookingHour,
        'difficulty': _difficulty,
        'created_at': _createdAt,
        'status': _status,
        'total_likes': _totalLikes,
        'total_earnings': _totalEarnings,
        'daily_consumers': _dailyConsumers,
        'type': _type,
        'temporary': _temporary,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'time_of_cooking_min': serializeParam(
          _timeOfCookingMin,
          ParamType.int,
        ),
        'time_of_cooking_hour': serializeParam(
          _timeOfCookingHour,
          ParamType.int,
        ),
        'difficulty': serializeParam(
          _difficulty,
          ParamType.String,
        ),
        'created_at': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'total_likes': serializeParam(
          _totalLikes,
          ParamType.int,
        ),
        'total_earnings': serializeParam(
          _totalEarnings,
          ParamType.int,
        ),
        'daily_consumers': serializeParam(
          _dailyConsumers,
          ParamType.int,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
          isList: true,
        ),
        'temporary': serializeParam(
          _temporary,
          ParamType.bool,
        ),
      }.withoutNulls;

  static AllRecipesStruct fromSerializableMap(Map<String, dynamic> data) =>
      AllRecipesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        timeOfCookingMin: deserializeParam(
          data['time_of_cooking_min'],
          ParamType.int,
          false,
        ),
        timeOfCookingHour: deserializeParam(
          data['time_of_cooking_hour'],
          ParamType.int,
          false,
        ),
        difficulty: deserializeParam(
          data['difficulty'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['created_at'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        totalLikes: deserializeParam(
          data['total_likes'],
          ParamType.int,
          false,
        ),
        totalEarnings: deserializeParam(
          data['total_earnings'],
          ParamType.int,
          false,
        ),
        dailyConsumers: deserializeParam(
          data['daily_consumers'],
          ParamType.int,
          false,
        ),
        type: deserializeParam<String>(
          data['type'],
          ParamType.String,
          true,
        ),
        temporary: deserializeParam(
          data['temporary'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'AllRecipesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is AllRecipesStruct &&
        id == other.id &&
        name == other.name &&
        description == other.description &&
        timeOfCookingMin == other.timeOfCookingMin &&
        timeOfCookingHour == other.timeOfCookingHour &&
        difficulty == other.difficulty &&
        createdAt == other.createdAt &&
        status == other.status &&
        totalLikes == other.totalLikes &&
        totalEarnings == other.totalEarnings &&
        dailyConsumers == other.dailyConsumers &&
        listEquality.equals(type, other.type) &&
        temporary == other.temporary;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        name,
        description,
        timeOfCookingMin,
        timeOfCookingHour,
        difficulty,
        createdAt,
        status,
        totalLikes,
        totalEarnings,
        dailyConsumers,
        type,
        temporary
      ]);
}

AllRecipesStruct createAllRecipesStruct({
  int? id,
  String? name,
  String? description,
  int? timeOfCookingMin,
  int? timeOfCookingHour,
  String? difficulty,
  String? createdAt,
  String? status,
  int? totalLikes,
  int? totalEarnings,
  int? dailyConsumers,
  bool? temporary,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AllRecipesStruct(
      id: id,
      name: name,
      description: description,
      timeOfCookingMin: timeOfCookingMin,
      timeOfCookingHour: timeOfCookingHour,
      difficulty: difficulty,
      createdAt: createdAt,
      status: status,
      totalLikes: totalLikes,
      totalEarnings: totalEarnings,
      dailyConsumers: dailyConsumers,
      temporary: temporary,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AllRecipesStruct? updateAllRecipesStruct(
  AllRecipesStruct? allRecipes, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    allRecipes
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAllRecipesStructData(
  Map<String, dynamic> firestoreData,
  AllRecipesStruct? allRecipes,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (allRecipes == null) {
    return;
  }
  if (allRecipes.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && allRecipes.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final allRecipesData = getAllRecipesFirestoreData(allRecipes, forFieldValue);
  final nestedData = allRecipesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = allRecipes.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAllRecipesFirestoreData(
  AllRecipesStruct? allRecipes, [
  bool forFieldValue = false,
]) {
  if (allRecipes == null) {
    return {};
  }
  final firestoreData = mapToFirestore(allRecipes.toMap());

  // Add any Firestore field values
  allRecipes.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAllRecipesListFirestoreData(
  List<AllRecipesStruct>? allRecipess,
) =>
    allRecipess?.map((e) => getAllRecipesFirestoreData(e, true)).toList() ?? [];
