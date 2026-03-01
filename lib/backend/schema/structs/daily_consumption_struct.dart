// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DailyConsumptionStruct extends FFFirebaseStruct {
  DailyConsumptionStruct({
    String? date,
    int? count,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _date = date,
        _count = count,
        super(firestoreUtilData);

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;

  bool hasDate() => _date != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;

  void incrementCount(int amount) => count = count + amount;

  bool hasCount() => _count != null;

  static DailyConsumptionStruct fromMap(Map<String, dynamic> data) =>
      DailyConsumptionStruct(
        date: data['date'] as String?,
        count: castToType<int>(data['count']),
      );

  static DailyConsumptionStruct? maybeFromMap(dynamic data) => data is Map
      ? DailyConsumptionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'date': _date,
        'count': _count,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
      }.withoutNulls;

  static DailyConsumptionStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      DailyConsumptionStruct(
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'DailyConsumptionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DailyConsumptionStruct &&
        date == other.date &&
        count == other.count;
  }

  @override
  int get hashCode => const ListEquality().hash([date, count]);
}

DailyConsumptionStruct createDailyConsumptionStruct({
  String? date,
  int? count,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DailyConsumptionStruct(
      date: date,
      count: count,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DailyConsumptionStruct? updateDailyConsumptionStruct(
  DailyConsumptionStruct? dailyConsumption, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dailyConsumption
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDailyConsumptionStructData(
  Map<String, dynamic> firestoreData,
  DailyConsumptionStruct? dailyConsumption,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dailyConsumption == null) {
    return;
  }
  if (dailyConsumption.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dailyConsumption.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dailyConsumptionData =
      getDailyConsumptionFirestoreData(dailyConsumption, forFieldValue);
  final nestedData =
      dailyConsumptionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dailyConsumption.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDailyConsumptionFirestoreData(
  DailyConsumptionStruct? dailyConsumption, [
  bool forFieldValue = false,
]) {
  if (dailyConsumption == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dailyConsumption.toMap());

  // Add any Firestore field values
  dailyConsumption.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDailyConsumptionListFirestoreData(
  List<DailyConsumptionStruct>? dailyConsumptions,
) =>
    dailyConsumptions
        ?.map((e) => getDailyConsumptionFirestoreData(e, true))
        .toList() ??
    [];
