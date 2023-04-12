import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'orden_record.g.dart';

abstract class OrdenRecord implements Built<OrdenRecord, OrdenRecordBuilder> {
  static Serializer<OrdenRecord> get serializer => _$ordenRecordSerializer;

  DateTime? get fechaOrden;

  @BuiltValueField(wireName: 'Cliente')
  String? get cliente;

  double? get montoTotal;

  String? get estadoOrden;

  DocumentReference? get idMesa;

  DocumentReference? get idRestaurante;

  String? get obsrvOrden;

  BuiltList<DocumentReference>? get listaProductoOrden;

  DocumentReference? get idMesero;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OrdenRecordBuilder builder) => builder
    ..cliente = ''
    ..montoTotal = 0.0
    ..estadoOrden = ''
    ..obsrvOrden = ''
    ..listaProductoOrden = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Orden');

  static Stream<OrdenRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<OrdenRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  OrdenRecord._();
  factory OrdenRecord([void Function(OrdenRecordBuilder) updates]) =
      _$OrdenRecord;

  static OrdenRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createOrdenRecordData({
  DateTime? fechaOrden,
  String? cliente,
  double? montoTotal,
  String? estadoOrden,
  DocumentReference? idMesa,
  DocumentReference? idRestaurante,
  String? obsrvOrden,
  DocumentReference? idMesero,
}) {
  final firestoreData = serializers.toFirestore(
    OrdenRecord.serializer,
    OrdenRecord(
      (o) => o
        ..fechaOrden = fechaOrden
        ..cliente = cliente
        ..montoTotal = montoTotal
        ..estadoOrden = estadoOrden
        ..idMesa = idMesa
        ..idRestaurante = idRestaurante
        ..obsrvOrden = obsrvOrden
        ..listaProductoOrden = null
        ..idMesero = idMesero,
    ),
  );

  return firestoreData;
}
