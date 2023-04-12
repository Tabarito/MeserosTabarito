import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'restaurante_record.g.dart';

abstract class RestauranteRecord
    implements Built<RestauranteRecord, RestauranteRecordBuilder> {
  static Serializer<RestauranteRecord> get serializer =>
      _$restauranteRecordSerializer;

  String? get nombreRestaurante;

  String? get direccionExacta;

  BuiltList<DocumentReference>? get listaOrdenRestaurante;

  BuiltList<DocumentReference>? get listaMesaRestaurante;

  BuiltList<DocumentReference>? get listaMeseroRestaurante;

  @BuiltValueField(wireName: 'Provincia')
  String? get provincia;

  @BuiltValueField(wireName: 'Canton')
  String? get canton;

  @BuiltValueField(wireName: 'Distrito')
  String? get distrito;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RestauranteRecordBuilder builder) => builder
    ..nombreRestaurante = ''
    ..direccionExacta = ''
    ..listaOrdenRestaurante = ListBuilder()
    ..listaMesaRestaurante = ListBuilder()
    ..listaMeseroRestaurante = ListBuilder()
    ..provincia = ''
    ..canton = ''
    ..distrito = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Restaurante');

  static Stream<RestauranteRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RestauranteRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RestauranteRecord._();
  factory RestauranteRecord([void Function(RestauranteRecordBuilder) updates]) =
      _$RestauranteRecord;

  static RestauranteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRestauranteRecordData({
  String? nombreRestaurante,
  String? direccionExacta,
  String? provincia,
  String? canton,
  String? distrito,
}) {
  final firestoreData = serializers.toFirestore(
    RestauranteRecord.serializer,
    RestauranteRecord(
      (r) => r
        ..nombreRestaurante = nombreRestaurante
        ..direccionExacta = direccionExacta
        ..listaOrdenRestaurante = null
        ..listaMesaRestaurante = null
        ..listaMeseroRestaurante = null
        ..provincia = provincia
        ..canton = canton
        ..distrito = distrito,
    ),
  );

  return firestoreData;
}
