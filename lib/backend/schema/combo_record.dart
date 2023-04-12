import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'combo_record.g.dart';

abstract class ComboRecord implements Built<ComboRecord, ComboRecordBuilder> {
  static Serializer<ComboRecord> get serializer => _$comboRecordSerializer;

  String? get nombreCombo;

  double? get precioCombo;

  bool? get esActivoCombo;

  String? get imagenCombo;

  BuiltList<DocumentReference>? get listaProductoCombo;

  String? get obsrvCombo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ComboRecordBuilder builder) => builder
    ..nombreCombo = ''
    ..precioCombo = 0.0
    ..esActivoCombo = false
    ..imagenCombo = ''
    ..listaProductoCombo = ListBuilder()
    ..obsrvCombo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Combo');

  static Stream<ComboRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ComboRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ComboRecord._();
  factory ComboRecord([void Function(ComboRecordBuilder) updates]) =
      _$ComboRecord;

  static ComboRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createComboRecordData({
  String? nombreCombo,
  double? precioCombo,
  bool? esActivoCombo,
  String? imagenCombo,
  String? obsrvCombo,
}) {
  final firestoreData = serializers.toFirestore(
    ComboRecord.serializer,
    ComboRecord(
      (c) => c
        ..nombreCombo = nombreCombo
        ..precioCombo = precioCombo
        ..esActivoCombo = esActivoCombo
        ..imagenCombo = imagenCombo
        ..listaProductoCombo = null
        ..obsrvCombo = obsrvCombo,
    ),
  );

  return firestoreData;
}
