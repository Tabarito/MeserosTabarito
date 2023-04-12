import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mesa_record.g.dart';

abstract class MesaRecord implements Built<MesaRecord, MesaRecordBuilder> {
  static Serializer<MesaRecord> get serializer => _$mesaRecordSerializer;

  String? get descMesa;

  DocumentReference? get idRestaurante;

  BuiltList<DocumentReference>? get listaOrdenMesa;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MesaRecordBuilder builder) => builder
    ..descMesa = ''
    ..listaOrdenMesa = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Mesa');

  static Stream<MesaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MesaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MesaRecord._();
  factory MesaRecord([void Function(MesaRecordBuilder) updates]) = _$MesaRecord;

  static MesaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMesaRecordData({
  String? descMesa,
  DocumentReference? idRestaurante,
}) {
  final firestoreData = serializers.toFirestore(
    MesaRecord.serializer,
    MesaRecord(
      (m) => m
        ..descMesa = descMesa
        ..idRestaurante = idRestaurante
        ..listaOrdenMesa = null,
    ),
  );

  return firestoreData;
}
