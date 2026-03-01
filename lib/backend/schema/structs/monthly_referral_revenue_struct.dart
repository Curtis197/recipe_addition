// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MonthlyReferralRevenueStruct extends FFFirebaseStruct {
  MonthlyReferralRevenueStruct({
    bool? success,
    int? totalReferrals,
    int? totalRevenue,
    List<MonthlyDataStruct>? monthlyData,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _success = success,
        _totalReferrals = totalReferrals,
        _totalRevenue = totalRevenue,
        _monthlyData = monthlyData,
        super(firestoreUtilData);

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  set success(bool? val) => _success = val;

  bool hasSuccess() => _success != null;

  // "total_referrals" field.
  int? _totalReferrals;
  int get totalReferrals => _totalReferrals ?? 0;
  set totalReferrals(int? val) => _totalReferrals = val;

  void incrementTotalReferrals(int amount) =>
      totalReferrals = totalReferrals + amount;

  bool hasTotalReferrals() => _totalReferrals != null;

  // "total_revenue" field.
  int? _totalRevenue;
  int get totalRevenue => _totalRevenue ?? 0;
  set totalRevenue(int? val) => _totalRevenue = val;

  void incrementTotalRevenue(int amount) =>
      totalRevenue = totalRevenue + amount;

  bool hasTotalRevenue() => _totalRevenue != null;

  // "monthly_data" field.
  List<MonthlyDataStruct>? _monthlyData;
  List<MonthlyDataStruct> get monthlyData => _monthlyData ?? const [];
  set monthlyData(List<MonthlyDataStruct>? val) => _monthlyData = val;

  void updateMonthlyData(Function(List<MonthlyDataStruct>) updateFn) {
    updateFn(_monthlyData ??= []);
  }

  bool hasMonthlyData() => _monthlyData != null;

  static MonthlyReferralRevenueStruct fromMap(Map<String, dynamic> data) =>
      MonthlyReferralRevenueStruct(
        success: data['success'] as bool?,
        totalReferrals: castToType<int>(data['total_referrals']),
        totalRevenue: castToType<int>(data['total_revenue']),
        monthlyData: getStructList(
          data['monthly_data'],
          MonthlyDataStruct.fromMap,
        ),
      );

  static MonthlyReferralRevenueStruct? maybeFromMap(dynamic data) => data is Map
      ? MonthlyReferralRevenueStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'success': _success,
        'total_referrals': _totalReferrals,
        'total_revenue': _totalRevenue,
        'monthly_data': _monthlyData?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'success': serializeParam(
          _success,
          ParamType.bool,
        ),
        'total_referrals': serializeParam(
          _totalReferrals,
          ParamType.int,
        ),
        'total_revenue': serializeParam(
          _totalRevenue,
          ParamType.int,
        ),
        'monthly_data': serializeParam(
          _monthlyData,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static MonthlyReferralRevenueStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MonthlyReferralRevenueStruct(
        success: deserializeParam(
          data['success'],
          ParamType.bool,
          false,
        ),
        totalReferrals: deserializeParam(
          data['total_referrals'],
          ParamType.int,
          false,
        ),
        totalRevenue: deserializeParam(
          data['total_revenue'],
          ParamType.int,
          false,
        ),
        monthlyData: deserializeStructParam<MonthlyDataStruct>(
          data['monthly_data'],
          ParamType.DataStruct,
          true,
          structBuilder: MonthlyDataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MonthlyReferralRevenueStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is MonthlyReferralRevenueStruct &&
        success == other.success &&
        totalReferrals == other.totalReferrals &&
        totalRevenue == other.totalRevenue &&
        listEquality.equals(monthlyData, other.monthlyData);
  }

  @override
  int get hashCode => const ListEquality()
      .hash([success, totalReferrals, totalRevenue, monthlyData]);
}

MonthlyReferralRevenueStruct createMonthlyReferralRevenueStruct({
  bool? success,
  int? totalReferrals,
  int? totalRevenue,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MonthlyReferralRevenueStruct(
      success: success,
      totalReferrals: totalReferrals,
      totalRevenue: totalRevenue,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MonthlyReferralRevenueStruct? updateMonthlyReferralRevenueStruct(
  MonthlyReferralRevenueStruct? monthlyReferralRevenue, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    monthlyReferralRevenue
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMonthlyReferralRevenueStructData(
  Map<String, dynamic> firestoreData,
  MonthlyReferralRevenueStruct? monthlyReferralRevenue,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (monthlyReferralRevenue == null) {
    return;
  }
  if (monthlyReferralRevenue.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue &&
      monthlyReferralRevenue.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final monthlyReferralRevenueData = getMonthlyReferralRevenueFirestoreData(
      monthlyReferralRevenue, forFieldValue);
  final nestedData =
      monthlyReferralRevenueData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      monthlyReferralRevenue.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMonthlyReferralRevenueFirestoreData(
  MonthlyReferralRevenueStruct? monthlyReferralRevenue, [
  bool forFieldValue = false,
]) {
  if (monthlyReferralRevenue == null) {
    return {};
  }
  final firestoreData = mapToFirestore(monthlyReferralRevenue.toMap());

  // Add any Firestore field values
  monthlyReferralRevenue.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMonthlyReferralRevenueListFirestoreData(
  List<MonthlyReferralRevenueStruct>? monthlyReferralRevenues,
) =>
    monthlyReferralRevenues
        ?.map((e) => getMonthlyReferralRevenueFirestoreData(e, true))
        .toList() ??
    [];
