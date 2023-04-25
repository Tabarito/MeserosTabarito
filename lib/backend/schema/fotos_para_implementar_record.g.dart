// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fotos_para_implementar_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FotosParaImplementarRecord> _$fotosParaImplementarRecordSerializer =
    new _$FotosParaImplementarRecordSerializer();

class _$FotosParaImplementarRecordSerializer
    implements StructuredSerializer<FotosParaImplementarRecord> {
  @override
  final Iterable<Type> types = const [
    FotosParaImplementarRecord,
    _$FotosParaImplementarRecord
  ];
  @override
  final String wireName = 'FotosParaImplementarRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, FotosParaImplementarRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.fotos;
    if (value != null) {
      result
        ..add('Fotos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  FotosParaImplementarRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FotosParaImplementarRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Fotos':
          result.fotos = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$FotosParaImplementarRecord extends FotosParaImplementarRecord {
  @override
  final String? fotos;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FotosParaImplementarRecord(
          [void Function(FotosParaImplementarRecordBuilder)? updates]) =>
      (new FotosParaImplementarRecordBuilder()..update(updates))._build();

  _$FotosParaImplementarRecord._({this.fotos, this.ffRef}) : super._();

  @override
  FotosParaImplementarRecord rebuild(
          void Function(FotosParaImplementarRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FotosParaImplementarRecordBuilder toBuilder() =>
      new FotosParaImplementarRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FotosParaImplementarRecord &&
        fotos == other.fotos &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fotos.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FotosParaImplementarRecord')
          ..add('fotos', fotos)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FotosParaImplementarRecordBuilder
    implements
        Builder<FotosParaImplementarRecord, FotosParaImplementarRecordBuilder> {
  _$FotosParaImplementarRecord? _$v;

  String? _fotos;
  String? get fotos => _$this._fotos;
  set fotos(String? fotos) => _$this._fotos = fotos;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FotosParaImplementarRecordBuilder() {
    FotosParaImplementarRecord._initializeBuilder(this);
  }

  FotosParaImplementarRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fotos = $v.fotos;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FotosParaImplementarRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FotosParaImplementarRecord;
  }

  @override
  void update(void Function(FotosParaImplementarRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FotosParaImplementarRecord build() => _build();

  _$FotosParaImplementarRecord _build() {
    final _$result =
        _$v ?? new _$FotosParaImplementarRecord._(fotos: fotos, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
