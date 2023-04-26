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

  String? get obsrvOrden;

  BuiltList<DocumentReference>? get listaProductoOrden;

  DocumentReference? get idMesero;

  BuiltList<DocumentReference>? get listaProductoOrden2;

  String? get mesa2;

  BuiltList<DocumentReference>? get listaComboOrden2;

  @BuiltValueField(wireName: 'Restaurante')
  String? get restaurante;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(OrdenRecordBuilder builder) => builder
    ..cliente = ''
    ..montoTotal = 0.0
    ..estadoOrden = ''
    ..obsrvOrden = ''
    ..listaProductoOrden = ListBuilder()
    ..listaProductoOrden2 = ListBuilder()
    ..mesa2 = ''
    ..listaComboOrden2 = ListBuilder()
    ..restaurante = '';

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
  String? obsrvOrden,
  DocumentReference? idMesero,
  String? mesa2,
  String? restaurante,
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
        ..obsrvOrden = obsrvOrden
        ..listaProductoOrden = null
        ..idMesero = idMesero
        ..listaProductoOrden2 = null
        ..mesa2 = mesa2
        ..listaComboOrden2 = null
        ..restaurante = restaurante,
    ),
  );

  return firestoreData;
}
