// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserReferralCodeStruct extends FFFirebaseStruct {
  UserReferralCodeStruct({
    bool? success,
    String? referralCode,
    String? referralUrl,
    ReferralStatsStruct? referralStats,
    List<ReferralsStruct>? referrals,
    String? shareMessage,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _success = success,
        _referralCode = referralCode,
        _referralUrl = referralUrl,
        _referralStats = referralStats,
        _referrals = referrals,
        _shareMessage = shareMessage,
        super(firestoreUtilData);

  // "success" field.
  bool? _success;
  bool get success => _success ?? false;
  set success(bool? val) => _success = val;

  bool hasSuccess() => _success != null;

  // "referral_code" field.
  String? _referralCode;
  String get referralCode => _referralCode ?? '';
  set referralCode(String? val) => _referralCode = val;

  bool hasReferralCode() => _referralCode != null;

  // "referral_url" field.
  String? _referralUrl;
  String get referralUrl => _referralUrl ?? '';
  set referralUrl(String? val) => _referralUrl = val;

  bool hasReferralUrl() => _referralUrl != null;

  // "referral_stats" field.
  ReferralStatsStruct? _referralStats;
  ReferralStatsStruct get referralStats =>
      _referralStats ?? ReferralStatsStruct();
  set referralStats(ReferralStatsStruct? val) => _referralStats = val;

  void updateReferralStats(Function(ReferralStatsStruct) updateFn) {
    updateFn(_referralStats ??= ReferralStatsStruct());
  }

  bool hasReferralStats() => _referralStats != null;

  // "referrals" field.
  List<ReferralsStruct>? _referrals;
  List<ReferralsStruct> get referrals => _referrals ?? const [];
  set referrals(List<ReferralsStruct>? val) => _referrals = val;

  void updateReferrals(Function(List<ReferralsStruct>) updateFn) {
    updateFn(_referrals ??= []);
  }

  bool hasReferrals() => _referrals != null;

  // "share_message" field.
  String? _shareMessage;
  String get shareMessage => _shareMessage ?? '';
  set shareMessage(String? val) => _shareMessage = val;

  bool hasShareMessage() => _shareMessage != null;

  static UserReferralCodeStruct fromMap(Map<String, dynamic> data) =>
      UserReferralCodeStruct(
        success: data['success'] as bool?,
        referralCode: data['referral_code'] as String?,
        referralUrl: data['referral_url'] as String?,
        referralStats: data['referral_stats'] is ReferralStatsStruct
            ? data['referral_stats']
            : ReferralStatsStruct.maybeFromMap(data['referral_stats']),
        referrals: getStructList(
          data['referrals'],
          ReferralsStruct.fromMap,
        ),
        shareMessage: data['share_message'] as String?,
      );

  static UserReferralCodeStruct? maybeFromMap(dynamic data) => data is Map
      ? UserReferralCodeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'success': _success,
        'referral_code': _referralCode,
        'referral_url': _referralUrl,
        'referral_stats': _referralStats?.toMap(),
        'referrals': _referrals?.map((e) => e.toMap()).toList(),
        'share_message': _shareMessage,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'success': serializeParam(
          _success,
          ParamType.bool,
        ),
        'referral_code': serializeParam(
          _referralCode,
          ParamType.String,
        ),
        'referral_url': serializeParam(
          _referralUrl,
          ParamType.String,
        ),
        'referral_stats': serializeParam(
          _referralStats,
          ParamType.DataStruct,
        ),
        'referrals': serializeParam(
          _referrals,
          ParamType.DataStruct,
          isList: true,
        ),
        'share_message': serializeParam(
          _shareMessage,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserReferralCodeStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      UserReferralCodeStruct(
        success: deserializeParam(
          data['success'],
          ParamType.bool,
          false,
        ),
        referralCode: deserializeParam(
          data['referral_code'],
          ParamType.String,
          false,
        ),
        referralUrl: deserializeParam(
          data['referral_url'],
          ParamType.String,
          false,
        ),
        referralStats: deserializeStructParam(
          data['referral_stats'],
          ParamType.DataStruct,
          false,
          structBuilder: ReferralStatsStruct.fromSerializableMap,
        ),
        referrals: deserializeStructParam<ReferralsStruct>(
          data['referrals'],
          ParamType.DataStruct,
          true,
          structBuilder: ReferralsStruct.fromSerializableMap,
        ),
        shareMessage: deserializeParam(
          data['share_message'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserReferralCodeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is UserReferralCodeStruct &&
        success == other.success &&
        referralCode == other.referralCode &&
        referralUrl == other.referralUrl &&
        referralStats == other.referralStats &&
        listEquality.equals(referrals, other.referrals) &&
        shareMessage == other.shareMessage;
  }

  @override
  int get hashCode => const ListEquality().hash([
        success,
        referralCode,
        referralUrl,
        referralStats,
        referrals,
        shareMessage
      ]);
}

UserReferralCodeStruct createUserReferralCodeStruct({
  bool? success,
  String? referralCode,
  String? referralUrl,
  ReferralStatsStruct? referralStats,
  String? shareMessage,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserReferralCodeStruct(
      success: success,
      referralCode: referralCode,
      referralUrl: referralUrl,
      referralStats:
          referralStats ?? (clearUnsetFields ? ReferralStatsStruct() : null),
      shareMessage: shareMessage,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserReferralCodeStruct? updateUserReferralCodeStruct(
  UserReferralCodeStruct? userReferralCode, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userReferralCode
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserReferralCodeStructData(
  Map<String, dynamic> firestoreData,
  UserReferralCodeStruct? userReferralCode,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userReferralCode == null) {
    return;
  }
  if (userReferralCode.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userReferralCode.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userReferralCodeData =
      getUserReferralCodeFirestoreData(userReferralCode, forFieldValue);
  final nestedData =
      userReferralCodeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userReferralCode.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserReferralCodeFirestoreData(
  UserReferralCodeStruct? userReferralCode, [
  bool forFieldValue = false,
]) {
  if (userReferralCode == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userReferralCode.toMap());

  // Handle nested data for "referral_stats" field.
  addReferralStatsStructData(
    firestoreData,
    userReferralCode.hasReferralStats() ? userReferralCode.referralStats : null,
    'referral_stats',
    forFieldValue,
  );

  // Add any Firestore field values
  userReferralCode.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserReferralCodeListFirestoreData(
  List<UserReferralCodeStruct>? userReferralCodes,
) =>
    userReferralCodes
        ?.map((e) => getUserReferralCodeFirestoreData(e, true))
        .toList() ??
    [];
