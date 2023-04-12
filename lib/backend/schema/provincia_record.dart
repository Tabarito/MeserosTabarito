import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'provincia_record.g.dart';

abstract class ProvinciaRecord
    implements Built<ProvinciaRecord, ProvinciaRecordBuilder> {
  static Serializer<ProvinciaRecord> get serializer =>
      _$provinciaRecordSerializer;

  String? get descProvincia;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProvinciaRecordBuilder builder) =>
      builder..descProvincia = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Provincia');

  static Stream<ProvinciaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProvinciaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProvinciaRecord._();
  factory ProvinciaRecord([void Function(ProvinciaRecordBuilder) updates]) =
      _$ProvinciaRecord;

  static ProvinciaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProvinciaRecordData({
  String? descProvincia,
}) {
  final firestoreData = serializers.toFirestore(
    ProvinciaRecord.serializer,
    ProvinciaRecord(
      (p) => p..descProvincia = descProvincia,
    ),
  );

  return firestoreData;
}
