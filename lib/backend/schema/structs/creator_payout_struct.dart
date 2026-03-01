// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CreatorPayoutStruct extends FFFirebaseStruct {
  CreatorPayoutStruct({
    bool? success,
    List<PayoutsStruct>? payouts,
    int? totalCount,
    StatisticsStruct? statistics,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _success = success,
        _payouts = payouts,
        _totalCount = totalCount,
        _statistics = statistics,
        super(firestoreUtilData);

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  set success(bool? val) => _success = val;

  bool hasSuccess() => _success != null;

  // "payouts" field.
  List<PayoutsStruct>? _payouts;
  List<PayoutsStruct> get payouts => _payouts ?? const [];
  set payouts(List<PayoutsStruct>? val) => _payouts = val;

  void updatePayouts(Function(List<PayoutsStruct>) updateFn) {
    updateFn(_payouts ??= []);
  }

  bool hasPayouts() => _payouts != null;

  // "total_count" field.
  int? _totalCount;
  int get totalCount => _totalCount ?? 0;
  set totalCount(int? val) => _totalCount = val;

  void incrementTotalCount(int amount) => totalCount = totalCount + amount;

  bool hasTotalCount() => _totalCount != null;

  // "statistics" field.
  StatisticsStruct? _statistics;
  StatisticsStruct get statistics => _statistics ?? StatisticsStruct();
  set statistics(StatisticsStruct? val) => _statistics = val;

  void updateStatistics(Function(StatisticsStruct) updateFn) {
    updateFn(_statistics ??= StatisticsStruct());
  }

  bool hasStatistics() => _statistics != null;

  static CreatorPayoutStruct fromMap(Map<String, dynamic> data) =>
      CreatorPayoutStruct(
        success: data['success'] as bool?,
        payouts: getStructList(
          data['payouts'],
          PayoutsStruct.fromMap,
        ),
        totalCount: castToType<int>(data['total_count']),
        statistics: data['statistics'] is StatisticsStruct
            ? data['statistics']
            : StatisticsStruct.maybeFromMap(data['statistics']),
      );

  static CreatorPayoutStruct? maybeFromMap(dynamic data) => data is Map
      ? CreatorPayoutStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'success': _success,
        'payouts': _payouts?.map((e) => e.toMap()).toList(),
        'total_count': _totalCount,
        'statistics': _statistics?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'success': serializeParam(
          _success,
          ParamType.bool,
        ),
        'payouts': serializeParam(
          _payouts,
          ParamType.DataStruct,
          isList: true,
        ),
        'total_count': serializeParam(
          _totalCount,
          ParamType.int,
        ),
        'statistics': serializeParam(
          _statistics,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static CreatorPayoutStruct fromSerializableMap(Map<String, dynamic> data) =>
      CreatorPayoutStruct(
        success: deserializeParam(
          data['success'],
          ParamType.bool,
          false,
        ),
        payouts: deserializeStructParam<PayoutsStruct>(
          data['payouts'],
          ParamType.DataStruct,
          true,
          structBuilder: PayoutsStruct.fromSerializableMap,
        ),
        totalCount: deserializeParam(
          data['total_count'],
          ParamType.int,
          false,
        ),
        statistics: deserializeStructParam(
          data['statistics'],
          ParamType.DataStruct,
          false,
          structBuilder: StatisticsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CreatorPayoutStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CreatorPayoutStruct &&
        success == other.success &&
        listEquality.equals(payouts, other.payouts) &&
        totalCount == other.totalCount &&
        statistics == other.statistics;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([success, payouts, totalCount, statistics]);
}

CreatorPayoutStruct createCreatorPayoutStruct({
  bool? success,
  int? totalCount,
  StatisticsStruct? statistics,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CreatorPayoutStruct(
      success: success,
      totalCount: totalCount,
      statistics: statistics ?? (clearUnsetFields ? StatisticsStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CreatorPayoutStruct? updateCreatorPayoutStruct(
  CreatorPayoutStruct? creatorPayout, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    creatorPayout
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCreatorPayoutStructData(
  Map<String, dynamic> firestoreData,
  CreatorPayoutStruct? creatorPayout,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (creatorPayout == null) {
    return;
  }
  if (creatorPayout.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && creatorPayout.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final creatorPayoutData =
      getCreatorPayoutFirestoreData(creatorPayout, forFieldValue);
  final nestedData =
      creatorPayoutData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = creatorPayout.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCreatorPayoutFirestoreData(
  CreatorPayoutStruct? creatorPayout, [
  bool forFieldValue = false,
]) {
  if (creatorPayout == null) {
    return {};
  }
  final firestoreData = mapToFirestore(creatorPayout.toMap());

  // Handle nested data for "statistics" field.
  addStatisticsStructData(
    firestoreData,
    creatorPayout.hasStatistics() ? creatorPayout.statistics : null,
    'statistics',
    forFieldValue,
  );

  // Add any Firestore field values
  creatorPayout.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCreatorPayoutListFirestoreData(
  List<CreatorPayoutStruct>? creatorPayouts,
) =>
    creatorPayouts
        ?.map((e) => getCreatorPayoutFirestoreData(e, true))
        .toList() ??
    [];
