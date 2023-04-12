import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'mesero_record.g.dart';

abstract class MeseroRecord
    implements Built<MeseroRecord, MeseroRecordBuilder> {
  static Serializer<MeseroRecord> get serializer => _$meseroRecordSerializer;

  String? get nombreMesero;

  DocumentReference? get idRestaurante;

  bool? get esActivoMesero;

  DocumentReference? get listaOrdenMesero;

  String? get fotoMesero;

  String? get correoMesero;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MeseroRecordBuilder builder) => builder
    ..nombreMesero = ''
    ..esActivoMesero = false
    ..fotoMesero = ''
    ..correoMesero = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Mesero');

  static Stream<MeseroRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MeseroRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MeseroRecord._();
  factory MeseroRecord([void Function(MeseroRecordBuilder) updates]) =
      _$MeseroRecord;

  static MeseroRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMeseroRecordData({
  String? nombreMesero,
  DocumentReference? idRestaurante,
  bool? esActivoMesero,
  DocumentReference? listaOrdenMesero,
  String? fotoMesero,
  String? correoMesero,
}) {
  final firestoreData = serializers.toFirestore(
    MeseroRecord.serializer,
    MeseroRecord(
      (m) => m
        ..nombreMesero = nombreMesero
        ..idRestaurante = idRestaurante
        ..esActivoMesero = esActivoMesero
        ..listaOrdenMesero = listaOrdenMesero
        ..fotoMesero = fotoMesero
        ..correoMesero = correoMesero,
    ),
  );

  return firestoreData;
}
