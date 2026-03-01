import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChartDataRecord extends FirestoreRecord {
  ChartDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "label_date" field.
  List<DateTime>? _labelDate;
  List<DateTime> get labelDate => _labelDate ?? const [];
  bool hasLabelDate() => _labelDate != null;

  // "labe_value" field.
  List<int>? _labeValue;
  List<int> get labeValue => _labeValue ?? const [];
  bool hasLabeValue() => _labeValue != null;

  // "recipe_id" field.
  int? _recipeId;
  int get recipeId => _recipeId ?? 0;
  bool hasRecipeId() => _recipeId != null;

  void _initializeFields() {
    _labelDate = getDataList(snapshotData['label_date']);
    _labeValue = getDataList(snapshotData['labe_value']);
    _recipeId = castToType<int>(snapshotData['recipe_id']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chart-data');

  static Stream<ChartDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChartDataRecord.fromSnapshot(s));

  static Future<ChartDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChartDataRecord.fromSnapshot(s));

  static ChartDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChartDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChartDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChartDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChartDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChartDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChartDataRecordData({
  int? recipeId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'recipe_id': recipeId,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChartDataRecordDocumentEquality implements Equality<ChartDataRecord> {
  const ChartDataRecordDocumentEquality();

  @override
  bool equals(ChartDataRecord? e1, ChartDataRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.labelDate, e2?.labelDate) &&
        listEquality.equals(e1?.labeValue, e2?.labeValue) &&
        e1?.recipeId == e2?.recipeId;
  }

  @override
  int hash(ChartDataRecord? e) =>
      const ListEquality().hash([e?.labelDate, e?.labeValue, e?.recipeId]);

  @override
  bool isValidKey(Object? o) => o is ChartDataRecord;
}
