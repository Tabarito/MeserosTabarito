import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'canton_record.g.dart';

abstract class CantonRecord
    implements Built<CantonRecord, CantonRecordBuilder> {
  static Serializer<CantonRecord> get serializer => _$cantonRecordSerializer;

  String? get descCanton;

  @BuiltValueField(wireName: 'ProvinciaCanton')
  String? get provinciaCanton;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CantonRecordBuilder builder) => builder
    ..descCanton = ''
    ..provinciaCanton = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Canton');

  static Stream<CantonRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CantonRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CantonRecord._();
  factory CantonRecord([void Function(CantonRecordBuilder) updates]) =
      _$CantonRecord;

  static CantonRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCantonRecordData({
  String? descCanton,
  String? provinciaCanton,
}) {
  final firestoreData = serializers.toFirestore(
    CantonRecord.serializer,
    CantonRecord(
      (c) => c
        ..descCanton = descCanton
        ..provinciaCanton = provinciaCanton,
    ),
  );

  return firestoreData;
}
