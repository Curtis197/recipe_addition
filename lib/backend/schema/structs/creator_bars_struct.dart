// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CreatorBarsStruct extends FFFirebaseStruct {
  CreatorBarsStruct({
    String? dayOfWeek,
    String? dayName,
    String? date,
    int? dailyConsumers,
    int? dailyEarnings,
    int? barHeightPercent,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _dayOfWeek = dayOfWeek,
        _dayName = dayName,
        _date = date,
        _dailyConsumers = dailyConsumers,
        _dailyEarnings = dailyEarnings,
        _barHeightPercent = barHeightPercent,
        super(firestoreUtilData);

  // "day_of_week" field.
  String? _dayOfWeek;
  String get dayOfWeek => _dayOfWeek ?? '';
  set dayOfWeek(String? val) => _dayOfWeek = val;

  bool hasDayOfWeek() => _dayOfWeek != null;

  // "day_name" field.
  String? _dayName;
  String get dayName => _dayName ?? '';
  set dayName(String? val) => _dayName = val;

  bool hasDayName() => _dayName != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;

  bool hasDate() => _date != null;

  // "daily_consumers" field.
  int? _dailyConsumers;
  int get dailyConsumers => _dailyConsumers ?? 0;
  set dailyConsumers(int? val) => _dailyConsumers = val;

  void incrementDailyConsumers(int amount) =>
      dailyConsumers = dailyConsumers + amount;

  bool hasDailyConsumers() => _dailyConsumers != null;

  // "daily_earnings" field.
  int? _dailyEarnings;
  int get dailyEarnings => _dailyEarnings ?? 0;
  set dailyEarnings(int? val) => _dailyEarnings = val;

  void incrementDailyEarnings(int amount) =>
      dailyEarnings = dailyEarnings + amount;

  bool hasDailyEarnings() => _dailyEarnings != null;

  // "bar_height_percent" field.
  int? _barHeightPercent;
  int get barHeightPercent => _barHeightPercent ?? 0;
  set barHeightPercent(int? val) => _barHeightPercent = val;

  void incrementBarHeightPercent(int amount) =>
      barHeightPercent = barHeightPercent + amount;

  bool hasBarHeightPercent() => _barHeightPercent != null;

  static CreatorBarsStruct fromMap(Map<String, dynamic> data) =>
      CreatorBarsStruct(
        dayOfWeek: data['day_of_week'] as String?,
        dayName: data['day_name'] as String?,
        date: data['date'] as String?,
        dailyConsumers: castToType<int>(data['daily_consumers']),
        dailyEarnings: castToType<int>(data['daily_earnings']),
        barHeightPercent: castToType<int>(data['bar_height_percent']),
      );

  static CreatorBarsStruct? maybeFromMap(dynamic data) => data is Map
      ? CreatorBarsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'day_of_week': _dayOfWeek,
        'day_name': _dayName,
        'date': _date,
        'daily_consumers': _dailyConsumers,
        'daily_earnings': _dailyEarnings,
        'bar_height_percent': _barHeightPercent,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'day_of_week': serializeParam(
          _dayOfWeek,
          ParamType.String,
        ),
        'day_name': serializeParam(
          _dayName,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'daily_consumers': serializeParam(
          _dailyConsumers,
          ParamType.int,
        ),
        'daily_earnings': serializeParam(
          _dailyEarnings,
          ParamType.int,
        ),
        'bar_height_percent': serializeParam(
          _barHeightPercent,
          ParamType.int,
        ),
      }.withoutNulls;

  static CreatorBarsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CreatorBarsStruct(
        dayOfWeek: deserializeParam(
          data['day_of_week'],
          ParamType.String,
          false,
        ),
        dayName: deserializeParam(
          data['day_name'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        dailyConsumers: deserializeParam(
          data['daily_consumers'],
          ParamType.int,
          false,
        ),
        dailyEarnings: deserializeParam(
          data['daily_earnings'],
          ParamType.int,
          false,
        ),
        barHeightPercent: deserializeParam(
          data['bar_height_percent'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CreatorBarsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CreatorBarsStruct &&
        dayOfWeek == other.dayOfWeek &&
        dayName == other.dayName &&
        date == other.date &&
        dailyConsumers == other.dailyConsumers &&
        dailyEarnings == other.dailyEarnings &&
        barHeightPercent == other.barHeightPercent;
  }

  @override
  int get hashCode => const ListEquality().hash([
        dayOfWeek,
        dayName,
        date,
        dailyConsumers,
        dailyEarnings,
        barHeightPercent
      ]);
}

CreatorBarsStruct createCreatorBarsStruct({
  String? dayOfWeek,
  String? dayName,
  String? date,
  int? dailyConsumers,
  int? dailyEarnings,
  int? barHeightPercent,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CreatorBarsStruct(
      dayOfWeek: dayOfWeek,
      dayName: dayName,
      date: date,
      dailyConsumers: dailyConsumers,
      dailyEarnings: dailyEarnings,
      barHeightPercent: barHeightPercent,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CreatorBarsStruct? updateCreatorBarsStruct(
  CreatorBarsStruct? creatorBars, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    creatorBars
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCreatorBarsStructData(
  Map<String, dynamic> firestoreData,
  CreatorBarsStruct? creatorBars,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (creatorBars == null) {
    return;
  }
  if (creatorBars.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && creatorBars.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final creatorBarsData =
      getCreatorBarsFirestoreData(creatorBars, forFieldValue);
  final nestedData =
      creatorBarsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = creatorBars.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCreatorBarsFirestoreData(
  CreatorBarsStruct? creatorBars, [
  bool forFieldValue = false,
]) {
  if (creatorBars == null) {
    return {};
  }
  final firestoreData = mapToFirestore(creatorBars.toMap());

  // Add any Firestore field values
  creatorBars.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCreatorBarsListFirestoreData(
  List<CreatorBarsStruct>? creatorBarss,
) =>
    creatorBarss?.map((e) => getCreatorBarsFirestoreData(e, true)).toList() ??
    [];
