// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ReferralsStruct extends FFFirebaseStruct {
  ReferralsStruct({
    int? id,
    String? refereeUsername,
    String? refereeAvatar,
    String? status,
    int? revenueEarned,
    String? joinedDate,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _refereeUsername = refereeUsername,
        _refereeAvatar = refereeAvatar,
        _status = status,
        _revenueEarned = revenueEarned,
        _joinedDate = joinedDate,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "referee_username" field.
  String? _refereeUsername;
  String get refereeUsername => _refereeUsername ?? '';
  set refereeUsername(String? val) => _refereeUsername = val;

  bool hasRefereeUsername() => _refereeUsername != null;

  // "referee_avatar" field.
  String? _refereeAvatar;
  String get refereeAvatar => _refereeAvatar ?? '';
  set refereeAvatar(String? val) => _refereeAvatar = val;

  bool hasRefereeAvatar() => _refereeAvatar != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "revenue_earned" field.
  int? _revenueEarned;
  int get revenueEarned => _revenueEarned ?? 0;
  set revenueEarned(int? val) => _revenueEarned = val;

  void incrementRevenueEarned(int amount) =>
      revenueEarned = revenueEarned + amount;

  bool hasRevenueEarned() => _revenueEarned != null;

  // "joined_date" field.
  String? _joinedDate;
  String get joinedDate => _joinedDate ?? '';
  set joinedDate(String? val) => _joinedDate = val;

  bool hasJoinedDate() => _joinedDate != null;

  static ReferralsStruct fromMap(Map<String, dynamic> data) => ReferralsStruct(
        id: castToType<int>(data['id']),
        refereeUsername: data['referee_username'] as String?,
        refereeAvatar: data['referee_avatar'] as String?,
        status: data['status'] as String?,
        revenueEarned: castToType<int>(data['revenue_earned']),
        joinedDate: data['joined_date'] as String?,
      );

  static ReferralsStruct? maybeFromMap(dynamic data) => data is Map
      ? ReferralsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'referee_username': _refereeUsername,
        'referee_avatar': _refereeAvatar,
        'status': _status,
        'revenue_earned': _revenueEarned,
        'joined_date': _joinedDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'referee_username': serializeParam(
          _refereeUsername,
          ParamType.String,
        ),
        'referee_avatar': serializeParam(
          _refereeAvatar,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'revenue_earned': serializeParam(
          _revenueEarned,
          ParamType.int,
        ),
        'joined_date': serializeParam(
          _joinedDate,
          ParamType.String,
        ),
      }.withoutNulls;

  static ReferralsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ReferralsStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        refereeUsername: deserializeParam(
          data['referee_username'],
          ParamType.String,
          false,
        ),
        refereeAvatar: deserializeParam(
          data['referee_avatar'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        revenueEarned: deserializeParam(
          data['revenue_earned'],
          ParamType.int,
          false,
        ),
        joinedDate: deserializeParam(
          data['joined_date'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ReferralsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ReferralsStruct &&
        id == other.id &&
        refereeUsername == other.refereeUsername &&
        refereeAvatar == other.refereeAvatar &&
        status == other.status &&
        revenueEarned == other.revenueEarned &&
        joinedDate == other.joinedDate;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, refereeUsername, refereeAvatar, status, revenueEarned, joinedDate]);
}

ReferralsStruct createReferralsStruct({
  int? id,
  String? refereeUsername,
  String? refereeAvatar,
  String? status,
  int? revenueEarned,
  String? joinedDate,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ReferralsStruct(
      id: id,
      refereeUsername: refereeUsername,
      refereeAvatar: refereeAvatar,
      status: status,
      revenueEarned: revenueEarned,
      joinedDate: joinedDate,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ReferralsStruct? updateReferralsStruct(
  ReferralsStruct? referrals, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    referrals
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addReferralsStructData(
  Map<String, dynamic> firestoreData,
  ReferralsStruct? referrals,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (referrals == null) {
    return;
  }
  if (referrals.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && referrals.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final referralsData = getReferralsFirestoreData(referrals, forFieldValue);
  final nestedData = referralsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = referrals.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getReferralsFirestoreData(
  ReferralsStruct? referrals, [
  bool forFieldValue = false,
]) {
  if (referrals == null) {
    return {};
  }
  final firestoreData = mapToFirestore(referrals.toMap());

  // Add any Firestore field values
  referrals.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getReferralsListFirestoreData(
  List<ReferralsStruct>? referralss,
) =>
    referralss?.map((e) => getReferralsFirestoreData(e, true)).toList() ?? [];
