// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CreatorRecipeStatsStruct extends FFFirebaseStruct {
  CreatorRecipeStatsStruct({
    String? period,
    String? startDate,
    String? endDate,
    List<DailyConsumptionStruct>? dailyConsumption,
    int? totalConsumed,
    int? revenueEarned,
    int? progressToNextEuro,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _period = period,
        _startDate = startDate,
        _endDate = endDate,
        _dailyConsumption = dailyConsumption,
        _totalConsumed = totalConsumed,
        _revenueEarned = revenueEarned,
        _progressToNextEuro = progressToNextEuro,
        super(firestoreUtilData);

  // "period" field.
  String? _period;
  String get period => _period ?? '';
  set period(String? val) => _period = val;

  bool hasPeriod() => _period != null;

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

  // "daily_consumption" field.
  List<DailyConsumptionStruct>? _dailyConsumption;
  List<DailyConsumptionStruct> get dailyConsumption =>
      _dailyConsumption ?? const [];
  set dailyConsumption(List<DailyConsumptionStruct>? val) =>
      _dailyConsumption = val;

  void updateDailyConsumption(Function(List<DailyConsumptionStruct>) updateFn) {
    updateFn(_dailyConsumption ??= []);
  }

  bool hasDailyConsumption() => _dailyConsumption != null;

  // "total_consumed" field.
  int? _totalConsumed;
  int get totalConsumed => _totalConsumed ?? 0;
  set totalConsumed(int? val) => _totalConsumed = val;

  void incrementTotalConsumed(int amount) =>
      totalConsumed = totalConsumed + amount;

  bool hasTotalConsumed() => _totalConsumed != null;

  // "revenue_earned" field.
  int? _revenueEarned;
  int get revenueEarned => _revenueEarned ?? 0;
  set revenueEarned(int? val) => _revenueEarned = val;

  void incrementRevenueEarned(int amount) =>
      revenueEarned = revenueEarned + amount;

  bool hasRevenueEarned() => _revenueEarned != null;

  // "progress_to_next_euro" field.
  int? _progressToNextEuro;
  int get progressToNextEuro => _progressToNextEuro ?? 0;
  set progressToNextEuro(int? val) => _progressToNextEuro = val;

  void incrementProgressToNextEuro(int amount) =>
      progressToNextEuro = progressToNextEuro + amount;

  bool hasProgressToNextEuro() => _progressToNextEuro != null;

  static CreatorRecipeStatsStruct fromMap(Map<String, dynamic> data) =>
      CreatorRecipeStatsStruct(
        period: data['period'] as String?,
        startDate: data['start_date'] as String?,
        endDate: data['end_date'] as String?,
        dailyConsumption: getStructList(
          data['daily_consumption'],
          DailyConsumptionStruct.fromMap,
        ),
        totalConsumed: castToType<int>(data['total_consumed']),
        revenueEarned: castToType<int>(data['revenue_earned']),
        progressToNextEuro: castToType<int>(data['progress_to_next_euro']),
      );

  static CreatorRecipeStatsStruct? maybeFromMap(dynamic data) => data is Map
      ? CreatorRecipeStatsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'period': _period,
        'start_date': _startDate,
        'end_date': _endDate,
        'daily_consumption': _dailyConsumption?.map((e) => e.toMap()).toList(),
        'total_consumed': _totalConsumed,
        'revenue_earned': _revenueEarned,
        'progress_to_next_euro': _progressToNextEuro,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'period': serializeParam(
          _period,
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
        'daily_consumption': serializeParam(
          _dailyConsumption,
          ParamType.DataStruct,
          isList: true,
        ),
        'total_consumed': serializeParam(
          _totalConsumed,
          ParamType.int,
        ),
        'revenue_earned': serializeParam(
          _revenueEarned,
          ParamType.int,
        ),
        'progress_to_next_euro': serializeParam(
          _progressToNextEuro,
          ParamType.int,
        ),
      }.withoutNulls;

  static CreatorRecipeStatsStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      CreatorRecipeStatsStruct(
        period: deserializeParam(
          data['period'],
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
        dailyConsumption: deserializeStructParam<DailyConsumptionStruct>(
          data['daily_consumption'],
          ParamType.DataStruct,
          true,
          structBuilder: DailyConsumptionStruct.fromSerializableMap,
        ),
        totalConsumed: deserializeParam(
          data['total_consumed'],
          ParamType.int,
          false,
        ),
        revenueEarned: deserializeParam(
          data['revenue_earned'],
          ParamType.int,
          false,
        ),
        progressToNextEuro: deserializeParam(
          data['progress_to_next_euro'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CreatorRecipeStatsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CreatorRecipeStatsStruct &&
        period == other.period &&
        startDate == other.startDate &&
        endDate == other.endDate &&
        listEquality.equals(dailyConsumption, other.dailyConsumption) &&
        totalConsumed == other.totalConsumed &&
        revenueEarned == other.revenueEarned &&
        progressToNextEuro == other.progressToNextEuro;
  }

  @override
  int get hashCode => const ListEquality().hash([
        period,
        startDate,
        endDate,
        dailyConsumption,
        totalConsumed,
        revenueEarned,
        progressToNextEuro
      ]);
}

CreatorRecipeStatsStruct createCreatorRecipeStatsStruct({
  String? period,
  String? startDate,
  String? endDate,
  int? totalConsumed,
  int? revenueEarned,
  int? progressToNextEuro,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CreatorRecipeStatsStruct(
      period: period,
      startDate: startDate,
      endDate: endDate,
      totalConsumed: totalConsumed,
      revenueEarned: revenueEarned,
      progressToNextEuro: progressToNextEuro,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CreatorRecipeStatsStruct? updateCreatorRecipeStatsStruct(
  CreatorRecipeStatsStruct? creatorRecipeStats, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    creatorRecipeStats
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCreatorRecipeStatsStructData(
  Map<String, dynamic> firestoreData,
  CreatorRecipeStatsStruct? creatorRecipeStats,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (creatorRecipeStats == null) {
    return;
  }
  if (creatorRecipeStats.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && creatorRecipeStats.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final creatorRecipeStatsData =
      getCreatorRecipeStatsFirestoreData(creatorRecipeStats, forFieldValue);
  final nestedData =
      creatorRecipeStatsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      creatorRecipeStats.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCreatorRecipeStatsFirestoreData(
  CreatorRecipeStatsStruct? creatorRecipeStats, [
  bool forFieldValue = false,
]) {
  if (creatorRecipeStats == null) {
    return {};
  }
  final firestoreData = mapToFirestore(creatorRecipeStats.toMap());

  // Add any Firestore field values
  creatorRecipeStats.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCreatorRecipeStatsListFirestoreData(
  List<CreatorRecipeStatsStruct>? creatorRecipeStatss,
) =>
    creatorRecipeStatss
        ?.map((e) => getCreatorRecipeStatsFirestoreData(e, true))
        .toList() ??
    [];
