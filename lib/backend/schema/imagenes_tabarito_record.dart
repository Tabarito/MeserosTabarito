import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'imagenes_tabarito_record.g.dart';

abstract class ImagenesTabaritoRecord
    implements Built<ImagenesTabaritoRecord, ImagenesTabaritoRecordBuilder> {
  static Serializer<ImagenesTabaritoRecord> get serializer =>
      _$imagenesTabaritoRecordSerializer;

  @BuiltValueField(wireName: 'Imagenes')
  DocumentReference? get imagenes;

  @BuiltValueField(wireName: 'Url')
  String? get url;

  @BuiltValueField(wireName: 'ListaImagenes')
  BuiltList<DocumentReference>? get listaImagenes;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ImagenesTabaritoRecordBuilder builder) =>
      builder
        ..url = ''
        ..listaImagenes = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ImagenesTabarito');

  static Stream<ImagenesTabaritoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ImagenesTabaritoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ImagenesTabaritoRecord._();
  factory ImagenesTabaritoRecord(
          [void Function(ImagenesTabaritoRecordBuilder) updates]) =
      _$ImagenesTabaritoRecord;

  static ImagenesTabaritoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createImagenesTabaritoRecordData({
  DocumentReference? imagenes,
  String? url,
}) {
  final firestoreData = serializers.toFirestore(
    ImagenesTabaritoRecord.serializer,
    ImagenesTabaritoRecord(
      (i) => i
        ..imagenes = imagenes
        ..url = url
        ..listaImagenes = null,
    ),
  );

  return firestoreData;
}
