// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DailyBreakdownStruct extends FFFirebaseStruct {
  DailyBreakdownStruct({
    int? monday,
    int? tuesday,
    int? wednesday,
    int? thursday,
    int? friday,
    int? saturday,
    int? sunday,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _monday = monday,
        _tuesday = tuesday,
        _wednesday = wednesday,
        _thursday = thursday,
        _friday = friday,
        _saturday = saturday,
        _sunday = sunday,
        super(firestoreUtilData);

  // "monday" field.
  int? _monday;
  int get monday => _monday ?? 0;
  set monday(int? val) => _monday = val;

  void incrementMonday(int amount) => monday = monday + amount;

  bool hasMonday() => _monday != null;

  // "tuesday" field.
  int? _tuesday;
  int get tuesday => _tuesday ?? 0;
  set tuesday(int? val) => _tuesday = val;

  void incrementTuesday(int amount) => tuesday = tuesday + amount;

  bool hasTuesday() => _tuesday != null;

  // "wednesday" field.
  int? _wednesday;
  int get wednesday => _wednesday ?? 0;
  set wednesday(int? val) => _wednesday = val;

  void incrementWednesday(int amount) => wednesday = wednesday + amount;

  bool hasWednesday() => _wednesday != null;

  // "thursday" field.
  int? _thursday;
  int get thursday => _thursday ?? 0;
  set thursday(int? val) => _thursday = val;

  void incrementThursday(int amount) => thursday = thursday + amount;

  bool hasThursday() => _thursday != null;

  // "friday" field.
  int? _friday;
  int get friday => _friday ?? 0;
  set friday(int? val) => _friday = val;

  void incrementFriday(int amount) => friday = friday + amount;

  bool hasFriday() => _friday != null;

  // "saturday" field.
  int? _saturday;
  int get saturday => _saturday ?? 0;
  set saturday(int? val) => _saturday = val;

  void incrementSaturday(int amount) => saturday = saturday + amount;

  bool hasSaturday() => _saturday != null;

  // "sunday" field.
  int? _sunday;
  int get sunday => _sunday ?? 0;
  set sunday(int? val) => _sunday = val;

  void incrementSunday(int amount) => sunday = sunday + amount;

  bool hasSunday() => _sunday != null;

  static DailyBreakdownStruct fromMap(Map<String, dynamic> data) =>
      DailyBreakdownStruct(
        monday: castToType<int>(data['monday']),
        tuesday: castToType<int>(data['tuesday']),
        wednesday: castToType<int>(data['wednesday']),
        thursday: castToType<int>(data['thursday']),
        friday: castToType<int>(data['friday']),
        saturday: castToType<int>(data['saturday']),
        sunday: castToType<int>(data['sunday']),
      );

  static DailyBreakdownStruct? maybeFromMap(dynamic data) => data is Map
      ? DailyBreakdownStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'monday': _monday,
        'tuesday': _tuesday,
        'wednesday': _wednesday,
        'thursday': _thursday,
        'friday': _friday,
        'saturday': _saturday,
        'sunday': _sunday,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'monday': serializeParam(
          _monday,
          ParamType.int,
        ),
        'tuesday': serializeParam(
          _tuesday,
          ParamType.int,
        ),
        'wednesday': serializeParam(
          _wednesday,
          ParamType.int,
        ),
        'thursday': serializeParam(
          _thursday,
          ParamType.int,
        ),
        'friday': serializeParam(
          _friday,
          ParamType.int,
        ),
        'saturday': serializeParam(
          _saturday,
          ParamType.int,
        ),
        'sunday': serializeParam(
          _sunday,
          ParamType.int,
        ),
      }.withoutNulls;

  static DailyBreakdownStruct fromSerializableMap(Map<String, dynamic> data) =>
      DailyBreakdownStruct(
        monday: deserializeParam(
          data['monday'],
          ParamType.int,
          false,
        ),
        tuesday: deserializeParam(
          data['tuesday'],
          ParamType.int,
          false,
        ),
        wednesday: deserializeParam(
          data['wednesday'],
          ParamType.int,
          false,
        ),
        thursday: deserializeParam(
          data['thursday'],
          ParamType.int,
          false,
        ),
        friday: deserializeParam(
          data['friday'],
          ParamType.int,
          false,
        ),
        saturday: deserializeParam(
          data['saturday'],
          ParamType.int,
          false,
        ),
        sunday: deserializeParam(
          data['sunday'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DailyBreakdownStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DailyBreakdownStruct &&
        monday == other.monday &&
        tuesday == other.tuesday &&
        wednesday == other.wednesday &&
        thursday == other.thursday &&
        friday == other.friday &&
        saturday == other.saturday &&
        sunday == other.sunday;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([monday, tuesday, wednesday, thursday, friday, saturday, sunday]);
}

DailyBreakdownStruct createDailyBreakdownStruct({
  int? monday,
  int? tuesday,
  int? wednesday,
  int? thursday,
  int? friday,
  int? saturday,
  int? sunday,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DailyBreakdownStruct(
      monday: monday,
      tuesday: tuesday,
      wednesday: wednesday,
      thursday: thursday,
      friday: friday,
      saturday: saturday,
      sunday: sunday,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DailyBreakdownStruct? updateDailyBreakdownStruct(
  DailyBreakdownStruct? dailyBreakdown, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dailyBreakdown
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDailyBreakdownStructData(
  Map<String, dynamic> firestoreData,
  DailyBreakdownStruct? dailyBreakdown,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dailyBreakdown == null) {
    return;
  }
  if (dailyBreakdown.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dailyBreakdown.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dailyBreakdownData =
      getDailyBreakdownFirestoreData(dailyBreakdown, forFieldValue);
  final nestedData =
      dailyBreakdownData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dailyBreakdown.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDailyBreakdownFirestoreData(
  DailyBreakdownStruct? dailyBreakdown, [
  bool forFieldValue = false,
]) {
  if (dailyBreakdown == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dailyBreakdown.toMap());

  // Add any Firestore field values
  dailyBreakdown.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDailyBreakdownListFirestoreData(
  List<DailyBreakdownStruct>? dailyBreakdowns,
) =>
    dailyBreakdowns
        ?.map((e) => getDailyBreakdownFirestoreData(e, true))
        .toList() ??
    [];
