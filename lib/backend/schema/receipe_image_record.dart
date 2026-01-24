import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReceipeImageRecord extends FirestoreRecord {
  ReceipeImageRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "receipe_id" field.
  int? _receipeId;
  int get receipeId => _receipeId ?? 0;
  bool hasReceipeId() => _receipeId != null;

  // "image_type" field.
  ImageType? _imageType;
  ImageType? get imageType => _imageType;
  bool hasImageType() => _imageType != null;

  // "image_url" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  bool hasImageUrl() => _imageUrl != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _receipeId = castToType<int>(snapshotData['receipe_id']);
    _imageType = snapshotData['image_type'] is ImageType
        ? snapshotData['image_type']
        : deserializeEnum<ImageType>(snapshotData['image_type']);
    _imageUrl = snapshotData['image_url'] as String?;
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('receipe_image');

  static Stream<ReceipeImageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReceipeImageRecord.fromSnapshot(s));

  static Future<ReceipeImageRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReceipeImageRecord.fromSnapshot(s));

  static ReceipeImageRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReceipeImageRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReceipeImageRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReceipeImageRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReceipeImageRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReceipeImageRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReceipeImageRecordData({
  int? receipeId,
  ImageType? imageType,
  String? imageUrl,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'receipe_id': receipeId,
      'image_type': imageType,
      'image_url': imageUrl,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReceipeImageRecordDocumentEquality
    implements Equality<ReceipeImageRecord> {
  const ReceipeImageRecordDocumentEquality();

  @override
  bool equals(ReceipeImageRecord? e1, ReceipeImageRecord? e2) {
    return e1?.receipeId == e2?.receipeId &&
        e1?.imageType == e2?.imageType &&
        e1?.imageUrl == e2?.imageUrl &&
        e1?.type == e2?.type;
  }

  @override
  int hash(ReceipeImageRecord? e) => const ListEquality()
      .hash([e?.receipeId, e?.imageType, e?.imageUrl, e?.type]);

  @override
  bool isValidKey(Object? o) => o is ReceipeImageRecord;
}
