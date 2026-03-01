// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class MonthlyDataStruct extends FFFirebaseStruct {
  MonthlyDataStruct({
    String? month,
    String? monthLabel,
    int? referrals,
    int? revenue,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _month = month,
        _monthLabel = monthLabel,
        _referrals = referrals,
        _revenue = revenue,
        super(firestoreUtilData);

  // "month" field.
  String? _month;
  String get month => _month ?? '';
  set month(String? val) => _month = val;

  bool hasMonth() => _month != null;

  // "month_label" field.
  String? _monthLabel;
  String get monthLabel => _monthLabel ?? '';
  set monthLabel(String? val) => _monthLabel = val;

  bool hasMonthLabel() => _monthLabel != null;

  // "referrals" field.
  int? _referrals;
  int get referrals => _referrals ?? 0;
  set referrals(int? val) => _referrals = val;

  void incrementReferrals(int amount) => referrals = referrals + amount;

  bool hasReferrals() => _referrals != null;

  // "revenue" field.
  int? _revenue;
  int get revenue => _revenue ?? 0;
  set revenue(int? val) => _revenue = val;

  void incrementRevenue(int amount) => revenue = revenue + amount;

  bool hasRevenue() => _revenue != null;

  static MonthlyDataStruct fromMap(Map<String, dynamic> data) =>
      MonthlyDataStruct(
        month: data['month'] as String?,
        monthLabel: data['month_label'] as String?,
        referrals: castToType<int>(data['referrals']),
        revenue: castToType<int>(data['revenue']),
      );

  static MonthlyDataStruct? maybeFromMap(dynamic data) => data is Map
      ? MonthlyDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'month': _month,
        'month_label': _monthLabel,
        'referrals': _referrals,
        'revenue': _revenue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'month': serializeParam(
          _month,
          ParamType.String,
        ),
        'month_label': serializeParam(
          _monthLabel,
          ParamType.String,
        ),
        'referrals': serializeParam(
          _referrals,
          ParamType.int,
        ),
        'revenue': serializeParam(
          _revenue,
          ParamType.int,
        ),
      }.withoutNulls;

  static MonthlyDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      MonthlyDataStruct(
        month: deserializeParam(
          data['month'],
          ParamType.String,
          false,
        ),
        monthLabel: deserializeParam(
          data['month_label'],
          ParamType.String,
          false,
        ),
        referrals: deserializeParam(
          data['referrals'],
          ParamType.int,
          false,
        ),
        revenue: deserializeParam(
          data['revenue'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'MonthlyDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MonthlyDataStruct &&
        month == other.month &&
        monthLabel == other.monthLabel &&
        referrals == other.referrals &&
        revenue == other.revenue;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([month, monthLabel, referrals, revenue]);
}

MonthlyDataStruct createMonthlyDataStruct({
  String? month,
  String? monthLabel,
  int? referrals,
  int? revenue,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MonthlyDataStruct(
      month: month,
      monthLabel: monthLabel,
      referrals: referrals,
      revenue: revenue,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MonthlyDataStruct? updateMonthlyDataStruct(
  MonthlyDataStruct? monthlyData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    monthlyData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMonthlyDataStructData(
  Map<String, dynamic> firestoreData,
  MonthlyDataStruct? monthlyData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (monthlyData == null) {
    return;
  }
  if (monthlyData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && monthlyData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final monthlyDataData =
      getMonthlyDataFirestoreData(monthlyData, forFieldValue);
  final nestedData =
      monthlyDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = monthlyData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMonthlyDataFirestoreData(
  MonthlyDataStruct? monthlyData, [
  bool forFieldValue = false,
]) {
  if (monthlyData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(monthlyData.toMap());

  // Add any Firestore field values
  monthlyData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMonthlyDataListFirestoreData(
  List<MonthlyDataStruct>? monthlyDatas,
) =>
    monthlyDatas?.map((e) => getMonthlyDataFirestoreData(e, true)).toList() ??
    [];
