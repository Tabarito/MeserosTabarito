import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'distrito_record.g.dart';

abstract class DistritoRecord
    implements Built<DistritoRecord, DistritoRecordBuilder> {
  static Serializer<DistritoRecord> get serializer =>
      _$distritoRecordSerializer;

  String? get descDistrito;

  @BuiltValueField(wireName: 'ProvinciaDistrito')
  String? get provinciaDistrito;

  @BuiltValueField(wireName: 'CantonDistrito')
  String? get cantonDistrito;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DistritoRecordBuilder builder) => builder
    ..descDistrito = ''
    ..provinciaDistrito = ''
    ..cantonDistrito = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Distrito');

  static Stream<DistritoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DistritoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DistritoRecord._();
  factory DistritoRecord([void Function(DistritoRecordBuilder) updates]) =
      _$DistritoRecord;

  static DistritoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDistritoRecordData({
  String? descDistrito,
  String? provinciaDistrito,
  String? cantonDistrito,
}) {
  final firestoreData = serializers.toFirestore(
    DistritoRecord.serializer,
    DistritoRecord(
      (d) => d
        ..descDistrito = descDistrito
        ..provinciaDistrito = provinciaDistrito
        ..cantonDistrito = cantonDistrito,
    ),
  );

  return firestoreData;
}
