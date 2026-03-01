// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ReferralStatsStruct extends FFFirebaseStruct {
  ReferralStatsStruct({
    int? totalClicks,
    int? totalSubscriptions,
    int? totalRevenue,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _totalClicks = totalClicks,
        _totalSubscriptions = totalSubscriptions,
        _totalRevenue = totalRevenue,
        super(firestoreUtilData);

  // "total_clicks" field.
  int? _totalClicks;
  int get totalClicks => _totalClicks ?? 0;
  set totalClicks(int? val) => _totalClicks = val;

  void incrementTotalClicks(int amount) => totalClicks = totalClicks + amount;

  bool hasTotalClicks() => _totalClicks != null;

  // "total_subscriptions" field.
  int? _totalSubscriptions;
  int get totalSubscriptions => _totalSubscriptions ?? 0;
  set totalSubscriptions(int? val) => _totalSubscriptions = val;

  void incrementTotalSubscriptions(int amount) =>
      totalSubscriptions = totalSubscriptions + amount;

  bool hasTotalSubscriptions() => _totalSubscriptions != null;

  // "total_revenue" field.
  int? _totalRevenue;
  int get totalRevenue => _totalRevenue ?? 0;
  set totalRevenue(int? val) => _totalRevenue = val;

  void incrementTotalRevenue(int amount) =>
      totalRevenue = totalRevenue + amount;

  bool hasTotalRevenue() => _totalRevenue != null;

  static ReferralStatsStruct fromMap(Map<String, dynamic> data) =>
      ReferralStatsStruct(
        totalClicks: castToType<int>(data['total_clicks']),
        totalSubscriptions: castToType<int>(data['total_subscriptions']),
        totalRevenue: castToType<int>(data['total_revenue']),
      );

  static ReferralStatsStruct? maybeFromMap(dynamic data) => data is Map
      ? ReferralStatsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'total_clicks': _totalClicks,
        'total_subscriptions': _totalSubscriptions,
        'total_revenue': _totalRevenue,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'total_clicks': serializeParam(
          _totalClicks,
          ParamType.int,
        ),
        'total_subscriptions': serializeParam(
          _totalSubscriptions,
          ParamType.int,
        ),
        'total_revenue': serializeParam(
          _totalRevenue,
          ParamType.int,
        ),
      }.withoutNulls;

  static ReferralStatsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReferralStatsStruct(
        totalClicks: deserializeParam(
          data['total_clicks'],
          ParamType.int,
          false,
        ),
        totalSubscriptions: deserializeParam(
          data['total_subscriptions'],
          ParamType.int,
          false,
        ),
        totalRevenue: deserializeParam(
          data['total_revenue'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ReferralStatsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReferralStatsStruct &&
        totalClicks == other.totalClicks &&
        totalSubscriptions == other.totalSubscriptions &&
        totalRevenue == other.totalRevenue;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([totalClicks, totalSubscriptions, totalRevenue]);
}

ReferralStatsStruct createReferralStatsStruct({
  int? totalClicks,
  int? totalSubscriptions,
  int? totalRevenue,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ReferralStatsStruct(
      totalClicks: totalClicks,
      totalSubscriptions: totalSubscriptions,
      totalRevenue: totalRevenue,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ReferralStatsStruct? updateReferralStatsStruct(
  ReferralStatsStruct? referralStats, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    referralStats
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addReferralStatsStructData(
  Map<String, dynamic> firestoreData,
  ReferralStatsStruct? referralStats,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (referralStats == null) {
    return;
  }
  if (referralStats.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && referralStats.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final referralStatsData =
      getReferralStatsFirestoreData(referralStats, forFieldValue);
  final nestedData =
      referralStatsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = referralStats.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getReferralStatsFirestoreData(
  ReferralStatsStruct? referralStats, [
  bool forFieldValue = false,
]) {
  if (referralStats == null) {
    return {};
  }
  final firestoreData = mapToFirestore(referralStats.toMap());

  // Add any Firestore field values
  referralStats.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getReferralStatsListFirestoreData(
  List<ReferralStatsStruct>? referralStatss,
) =>
    referralStatss
        ?.map((e) => getReferralStatsFirestoreData(e, true))
        .toList() ??
    [];
