import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'fotos_para_implementar_record.g.dart';

abstract class FotosParaImplementarRecord
    implements
        Built<FotosParaImplementarRecord, FotosParaImplementarRecordBuilder> {
  static Serializer<FotosParaImplementarRecord> get serializer =>
      _$fotosParaImplementarRecordSerializer;

  @BuiltValueField(wireName: 'Fotos')
  String? get fotos;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FotosParaImplementarRecordBuilder builder) =>
      builder..fotos = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('FotosParaImplementar');

  static Stream<FotosParaImplementarRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FotosParaImplementarRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FotosParaImplementarRecord._();
  factory FotosParaImplementarRecord(
          [void Function(FotosParaImplementarRecordBuilder) updates]) =
      _$FotosParaImplementarRecord;

  static FotosParaImplementarRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFotosParaImplementarRecordData({
  String? fotos,
}) {
  final firestoreData = serializers.toFirestore(
    FotosParaImplementarRecord.serializer,
    FotosParaImplementarRecord(
      (f) => f..fotos = fotos,
    ),
  );

  return firestoreData;
}
