import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sub_productos_record.g.dart';

abstract class SubProductosRecord
    implements Built<SubProductosRecord, SubProductosRecordBuilder> {
  static Serializer<SubProductosRecord> get serializer =>
      _$subProductosRecordSerializer;

  DocumentReference? get subProducto;

  int? get cantidad;

  double? get subTotal;

  @BuiltValueField(wireName: 'QuienCompraProducto')
  BuiltList<DocumentReference>? get quienCompraProducto;

  @BuiltValueField(wireName: 'ListaSubProductoDetalle')
  BuiltList<DocumentReference>? get listaSubProductoDetalle;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(SubProductosRecordBuilder builder) => builder
    ..cantidad = 0
    ..subTotal = 0.0
    ..quienCompraProducto = ListBuilder()
    ..listaSubProductoDetalle = ListBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('SubProductos')
          : FirebaseFirestore.instance.collectionGroup('SubProductos');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('SubProductos').doc();

  static Stream<SubProductosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SubProductosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SubProductosRecord._();
  factory SubProductosRecord(
          [void Function(SubProductosRecordBuilder) updates]) =
      _$SubProductosRecord;

  static SubProductosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSubProductosRecordData({
  DocumentReference? subProducto,
  int? cantidad,
  double? subTotal,
}) {
  final firestoreData = serializers.toFirestore(
    SubProductosRecord.serializer,
    SubProductosRecord(
      (s) => s
        ..subProducto = subProducto
        ..cantidad = cantidad
        ..subTotal = subTotal
        ..quienCompraProducto = null
        ..listaSubProductoDetalle = null,
    ),
  );

  return firestoreData;
}
