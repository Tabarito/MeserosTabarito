import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sub_combos_record.g.dart';

abstract class SubCombosRecord
    implements Built<SubCombosRecord, SubCombosRecordBuilder> {
  static Serializer<SubCombosRecord> get serializer =>
      _$subCombosRecordSerializer;

  DocumentReference? get subCombo;

  int? get cantidad;

  double? get subTotalCombo;

  @BuiltValueField(wireName: 'QuienCompraCombo')
  BuiltList<DocumentReference>? get quienCompraCombo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(SubCombosRecordBuilder builder) => builder
    ..cantidad = 0
    ..subTotalCombo = 0.0
    ..quienCompraCombo = ListBuilder();

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('SubCombos')
          : FirebaseFirestore.instance.collectionGroup('SubCombos');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('SubCombos').doc();

  static Stream<SubCombosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SubCombosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SubCombosRecord._();
  factory SubCombosRecord([void Function(SubCombosRecordBuilder) updates]) =
      _$SubCombosRecord;

  static SubCombosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSubCombosRecordData({
  DocumentReference? subCombo,
  int? cantidad,
  double? subTotalCombo,
}) {
  final firestoreData = serializers.toFirestore(
    SubCombosRecord.serializer,
    SubCombosRecord(
      (s) => s
        ..subCombo = subCombo
        ..cantidad = cantidad
        ..subTotalCombo = subTotalCombo
        ..quienCompraCombo = null,
    ),
  );

  return firestoreData;
}
