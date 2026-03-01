// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CreatorStatsStruct extends FFFirebaseStruct {
  CreatorStatsStruct({
    double? totalRevenue,
    int? totalConsumers,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _totalRevenue = totalRevenue,
        _totalConsumers = totalConsumers,
        super(firestoreUtilData);

  // "total_revenue" field.
  double? _totalRevenue;
  double get totalRevenue => _totalRevenue ?? 0.0;
  set totalRevenue(double? val) => _totalRevenue = val;

  void incrementTotalRevenue(double amount) =>
      totalRevenue = totalRevenue + amount;

  bool hasTotalRevenue() => _totalRevenue != null;

  // "total_consumers" field.
  int? _totalConsumers;
  int get totalConsumers => _totalConsumers ?? 0;
  set totalConsumers(int? val) => _totalConsumers = val;

  void incrementTotalConsumers(int amount) =>
      totalConsumers = totalConsumers + amount;

  bool hasTotalConsumers() => _totalConsumers != null;

  static CreatorStatsStruct fromMap(Map<String, dynamic> data) =>
      CreatorStatsStruct(
        totalRevenue: castToType<double>(data['total_revenue']),
        totalConsumers: castToType<int>(data['total_consumers']),
      );

  static CreatorStatsStruct? maybeFromMap(dynamic data) => data is Map
      ? CreatorStatsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'total_revenue': _totalRevenue,
        'total_consumers': _totalConsumers,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'total_revenue': serializeParam(
          _totalRevenue,
          ParamType.double,
        ),
        'total_consumers': serializeParam(
          _totalConsumers,
          ParamType.int,
        ),
      }.withoutNulls;

  static CreatorStatsStruct fromSerializableMap(Map<String, dynamic> data) =>
      CreatorStatsStruct(
        totalRevenue: deserializeParam(
          data['total_revenue'],
          ParamType.double,
          false,
        ),
        totalConsumers: deserializeParam(
          data['total_consumers'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'CreatorStatsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CreatorStatsStruct &&
        totalRevenue == other.totalRevenue &&
        totalConsumers == other.totalConsumers;
  }

  @override
  int get hashCode => const ListEquality().hash([totalRevenue, totalConsumers]);
}

CreatorStatsStruct createCreatorStatsStruct({
  double? totalRevenue,
  int? totalConsumers,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CreatorStatsStruct(
      totalRevenue: totalRevenue,
      totalConsumers: totalConsumers,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CreatorStatsStruct? updateCreatorStatsStruct(
  CreatorStatsStruct? creatorStats, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    creatorStats
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCreatorStatsStructData(
  Map<String, dynamic> firestoreData,
  CreatorStatsStruct? creatorStats,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (creatorStats == null) {
    return;
  }
  if (creatorStats.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && creatorStats.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final creatorStatsData =
      getCreatorStatsFirestoreData(creatorStats, forFieldValue);
  final nestedData =
      creatorStatsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = creatorStats.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCreatorStatsFirestoreData(
  CreatorStatsStruct? creatorStats, [
  bool forFieldValue = false,
]) {
  if (creatorStats == null) {
    return {};
  }
  final firestoreData = mapToFirestore(creatorStats.toMap());

  // Add any Firestore field values
  creatorStats.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCreatorStatsListFirestoreData(
  List<CreatorStatsStruct>? creatorStatss,
) =>
    creatorStatss?.map((e) => getCreatorStatsFirestoreData(e, true)).toList() ??
    [];
