import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'producto_record.g.dart';

abstract class ProductoRecord
    implements Built<ProductoRecord, ProductoRecordBuilder> {
  static Serializer<ProductoRecord> get serializer =>
      _$productoRecordSerializer;

  String? get nombreProducto;

  double? get precioProducto;

  String? get tipoProducto;

  String? get imagenProducto;

  String? get obsrvProducto;

  bool? get esActivoProducto;

  @BuiltValueField(wireName: 'ReferenciaListaDeProductos')
  DocumentReference? get referenciaListaDeProductos;

  String? get nombreComboCombo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProductoRecordBuilder builder) => builder
    ..nombreProducto = ''
    ..precioProducto = 0.0
    ..tipoProducto = ''
    ..imagenProducto = ''
    ..obsrvProducto = ''
    ..esActivoProducto = false
    ..nombreComboCombo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Producto');

  static Stream<ProductoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProductoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProductoRecord._();
  factory ProductoRecord([void Function(ProductoRecordBuilder) updates]) =
      _$ProductoRecord;

  static ProductoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProductoRecordData({
  String? nombreProducto,
  double? precioProducto,
  String? tipoProducto,
  String? imagenProducto,
  String? obsrvProducto,
  bool? esActivoProducto,
  DocumentReference? referenciaListaDeProductos,
  String? nombreComboCombo,
}) {
  final firestoreData = serializers.toFirestore(
    ProductoRecord.serializer,
    ProductoRecord(
      (p) => p
        ..nombreProducto = nombreProducto
        ..precioProducto = precioProducto
        ..tipoProducto = tipoProducto
        ..imagenProducto = imagenProducto
        ..obsrvProducto = obsrvProducto
        ..esActivoProducto = esActivoProducto
        ..referenciaListaDeProductos = referenciaListaDeProductos
        ..nombreComboCombo = nombreComboCombo,
    ),
  );

  return firestoreData;
}
