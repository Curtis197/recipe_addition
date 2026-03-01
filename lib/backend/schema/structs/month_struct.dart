// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MonthStruct extends FFFirebaseStruct {
  MonthStruct({
    int? year,
    int? month,
    String? monthName,
    String? startDate,
    String? endDate,
    int? daysInMonth,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _year = year,
        _month = month,
        _monthName = monthName,
        _startDate = startDate,
        _endDate = endDate,
        _daysInMonth = daysInMonth,
        super(firestoreUtilData);

  // "year" field.
  int? _year;
  int get year => _year ?? 0;
  set year(int? val) => _year = val;

  void incrementYear(int amount) => year = year + amount;

  bool hasYear() => _year != null;

  // "month" field.
  int? _month;
  int get month => _month ?? 0;
  set month(int? val) => _month = val;

  void incrementMonth(int amount) => month = month + amount;

  bool hasMonth() => _month != null;

  // "month_name" field.
  String? _monthName;
  String get monthName => _monthName ?? '';
  set monthName(String? val) => _monthName = val;

  bool hasMonthName() => _monthName != null;

  // "start_date" field.
  String? _startDate;
  String get startDate => _startDate ?? '';
  set startDate(String? val) => _startDate = val;

  bool hasStartDate() => _startDate != null;

  // "end_date" field.
  String? _endDate;
  String get endDate => _endDate ?? '';
  set endDate(String? val) => _endDate = val;

  bool hasEndDate() => _endDate != null;

  // "days_in_month" field.
  int? _daysInMonth;
  int get daysInMonth => _daysInMonth ?? 0;
  set daysInMonth(int? val) => _daysInMonth = val;

  void incrementDaysInMonth(int amount) => daysInMonth = daysInMonth + amount;

  bool hasDaysInMonth() => _daysInMonth != null;

  static MonthStruct fromMap(Map<String, dynamic> data) => MonthStruct(
        year: castToType<int>(data['year']),
        month: castToType<int>(data['month']),
        monthName: data['month_name'] as String?,
        startDate: data['start_date'] as String?,
        endDate: data['end_date'] as String?,
        daysInMonth: castToType<int>(data['days_in_month']),
      );

  static MonthStruct? maybeFromMap(dynamic data) =>
      data is Map ? MonthStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'year': _year,
        'month': _month,
        'month_name': _monthName,
        'start_date': _startDate,
        'end_date': _endDate,
        'days_in_month': _daysInMonth,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'year': serializeParam(
          _year,
          ParamType.int,
        ),
        'month': serializeParam(
          _month,
          ParamType.int,
        ),
        'month_name': serializeParam(
          _monthName,
          ParamType.String,
        ),
        'start_date': serializeParam(
          _startDate,
          ParamType.String,
        ),
        'end_date': serializeParam(
          _endDate,
          ParamType.String,
        ),
        'days_in_month': serializeParam(
          _daysInMonth,
          ParamType.int,
        ),
      }.withoutNulls;

  static MonthStruct fromSerializableMap(Map<String, dynamic> data) =>
      MonthStruct(
        year: deserializeParam(
          data['year'],
          ParamType.int,
          false,
        ),
        month: deserializeParam(
          data['month'],
          ParamType.int,
          false,
        ),
        monthName: deserializeParam(
          data['month_name'],
          ParamType.String,
          false,
        ),
        startDate: deserializeParam(
          data['start_date'],
          ParamType.String,
          false,
        ),
        endDate: deserializeParam(
          data['end_date'],
          ParamType.String,
          false,
        ),
        daysInMonth: deserializeParam(
          data['days_in_month'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'MonthStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MonthStruct &&
        year == other.year &&
        month == other.month &&
        monthName == other.monthName &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        daysInMonth == other.daysInMonth;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([year, month, monthName, startDate, endDate, daysInMonth]);
}

MonthStruct createMonthStruct({
  int? year,
  int? month,
  String? monthName,
  String? startDate,
  String? endDate,
  int? daysInMonth,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MonthStruct(
      year: year,
      month: month,
      monthName: monthName,
      startDate: startDate,
      endDate: endDate,
      daysInMonth: daysInMonth,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MonthStruct? updateMonthStruct(
  MonthStruct? monthStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    monthStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMonthStructData(
  Map<String, dynamic> firestoreData,
  MonthStruct? monthStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (monthStruct == null) {
    return;
  }
  if (monthStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && monthStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final monthStructData = getMonthFirestoreData(monthStruct, forFieldValue);
  final nestedData =
      monthStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = monthStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMonthFirestoreData(
  MonthStruct? monthStruct, [
  bool forFieldValue = false,
]) {
  if (monthStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(monthStruct.toMap());

  // Add any Firestore field values
  monthStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMonthListFirestoreData(
  List<MonthStruct>? monthStructs,
) =>
    monthStructs?.map((e) => getMonthFirestoreData(e, true)).toList() ?? [];
