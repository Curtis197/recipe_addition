// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MonthlyDashboardStruct extends FFFirebaseStruct {
  MonthlyDashboardStruct({
    bool? success,
    MonthStruct? month,
    StatsStruct? stats,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _success = success,
        _month = month,
        _stats = stats,
        super(firestoreUtilData);

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  set success(bool? val) => _success = val;

  bool hasSuccess() => _success != null;

  // "month" field.
  MonthStruct? _month;
  MonthStruct get month => _month ?? MonthStruct();
  set month(MonthStruct? val) => _month = val;

  void updateMonth(Function(MonthStruct) updateFn) {
    updateFn(_month ??= MonthStruct());
  }

  bool hasMonth() => _month != null;

  // "stats" field.
  StatsStruct? _stats;
  StatsStruct get stats => _stats ?? StatsStruct();
  set stats(StatsStruct? val) => _stats = val;

  void updateStats(Function(StatsStruct) updateFn) {
    updateFn(_stats ??= StatsStruct());
  }

  bool hasStats() => _stats != null;

  static MonthlyDashboardStruct fromMap(Map<String, dynamic> data) =>
      MonthlyDashboardStruct(
        success: data['success'] as bool?,
        month: data['month'] is MonthStruct
            ? data['month']
            : MonthStruct.maybeFromMap(data['month']),
        stats: data['stats'] is StatsStruct
            ? data['stats']
            : StatsStruct.maybeFromMap(data['stats']),
      );

  static MonthlyDashboardStruct? maybeFromMap(dynamic data) => data is Map
      ? MonthlyDashboardStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'success': _success,
        'month': _month?.toMap(),
        'stats': _stats?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'success': serializeParam(
          _success,
          ParamType.bool,
        ),
        'month': serializeParam(
          _month,
          ParamType.DataStruct,
        ),
        'stats': serializeParam(
          _stats,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static MonthlyDashboardStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      MonthlyDashboardStruct(
        success: deserializeParam(
          data['success'],
          ParamType.bool,
          false,
        ),
        month: deserializeStructParam(
          data['month'],
          ParamType.DataStruct,
          false,
          structBuilder: MonthStruct.fromSerializableMap,
        ),
        stats: deserializeStructParam(
          data['stats'],
          ParamType.DataStruct,
          false,
          structBuilder: StatsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'MonthlyDashboardStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MonthlyDashboardStruct &&
        success == other.success &&
        month == other.month &&
        stats == other.stats;
  }

  @override
  int get hashCode => const ListEquality().hash([success, month, stats]);
}

MonthlyDashboardStruct createMonthlyDashboardStruct({
  bool? success,
  MonthStruct? month,
  StatsStruct? stats,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    MonthlyDashboardStruct(
      success: success,
      month: month ?? (clearUnsetFields ? MonthStruct() : null),
      stats: stats ?? (clearUnsetFields ? StatsStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

MonthlyDashboardStruct? updateMonthlyDashboardStruct(
  MonthlyDashboardStruct? monthlyDashboard, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    monthlyDashboard
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addMonthlyDashboardStructData(
  Map<String, dynamic> firestoreData,
  MonthlyDashboardStruct? monthlyDashboard,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (monthlyDashboard == null) {
    return;
  }
  if (monthlyDashboard.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && monthlyDashboard.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final monthlyDashboardData =
      getMonthlyDashboardFirestoreData(monthlyDashboard, forFieldValue);
  final nestedData =
      monthlyDashboardData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = monthlyDashboard.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getMonthlyDashboardFirestoreData(
  MonthlyDashboardStruct? monthlyDashboard, [
  bool forFieldValue = false,
]) {
  if (monthlyDashboard == null) {
    return {};
  }
  final firestoreData = mapToFirestore(monthlyDashboard.toMap());

  // Handle nested data for "month" field.
  addMonthStructData(
    firestoreData,
    monthlyDashboard.hasMonth() ? monthlyDashboard.month : null,
    'month',
    forFieldValue,
  );

  // Handle nested data for "stats" field.
  addStatsStructData(
    firestoreData,
    monthlyDashboard.hasStats() ? monthlyDashboard.stats : null,
    'stats',
    forFieldValue,
  );

  // Add any Firestore field values
  monthlyDashboard.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getMonthlyDashboardListFirestoreData(
  List<MonthlyDashboardStruct>? monthlyDashboards,
) =>
    monthlyDashboards
        ?.map((e) => getMonthlyDashboardFirestoreData(e, true))
        .toList() ??
    [];
