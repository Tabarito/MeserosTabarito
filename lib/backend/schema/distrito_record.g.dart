// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'distrito_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DistritoRecord> _$distritoRecordSerializer =
    new _$DistritoRecordSerializer();

class _$DistritoRecordSerializer
    implements StructuredSerializer<DistritoRecord> {
  @override
  final Iterable<Type> types = const [DistritoRecord, _$DistritoRecord];
  @override
  final String wireName = 'DistritoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DistritoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.descDistrito;
    if (value != null) {
      result
        ..add('descDistrito')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.provinciaDistrito;
    if (value != null) {
      result
        ..add('ProvinciaDistrito')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cantonDistrito;
    if (value != null) {
      result
        ..add('CantonDistrito')
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
  DistritoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DistritoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'descDistrito':
          result.descDistrito = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ProvinciaDistrito':
          result.provinciaDistrito = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CantonDistrito':
          result.cantonDistrito = serializers.deserialize(value,
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

class _$DistritoRecord extends DistritoRecord {
  @override
  final String? descDistrito;
  @override
  final String? provinciaDistrito;
  @override
  final String? cantonDistrito;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DistritoRecord([void Function(DistritoRecordBuilder)? updates]) =>
      (new DistritoRecordBuilder()..update(updates))._build();

  _$DistritoRecord._(
      {this.descDistrito,
      this.provinciaDistrito,
      this.cantonDistrito,
      this.ffRef})
      : super._();

  @override
  DistritoRecord rebuild(void Function(DistritoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DistritoRecordBuilder toBuilder() =>
      new DistritoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DistritoRecord &&
        descDistrito == other.descDistrito &&
        provinciaDistrito == other.provinciaDistrito &&
        cantonDistrito == other.cantonDistrito &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, descDistrito.hashCode);
    _$hash = $jc(_$hash, provinciaDistrito.hashCode);
    _$hash = $jc(_$hash, cantonDistrito.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DistritoRecord')
          ..add('descDistrito', descDistrito)
          ..add('provinciaDistrito', provinciaDistrito)
          ..add('cantonDistrito', cantonDistrito)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DistritoRecordBuilder
    implements Builder<DistritoRecord, DistritoRecordBuilder> {
  _$DistritoRecord? _$v;

  String? _descDistrito;
  String? get descDistrito => _$this._descDistrito;
  set descDistrito(String? descDistrito) => _$this._descDistrito = descDistrito;

  String? _provinciaDistrito;
  String? get provinciaDistrito => _$this._provinciaDistrito;
  set provinciaDistrito(String? provinciaDistrito) =>
      _$this._provinciaDistrito = provinciaDistrito;

  String? _cantonDistrito;
  String? get cantonDistrito => _$this._cantonDistrito;
  set cantonDistrito(String? cantonDistrito) =>
      _$this._cantonDistrito = cantonDistrito;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DistritoRecordBuilder() {
    DistritoRecord._initializeBuilder(this);
  }

  DistritoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _descDistrito = $v.descDistrito;
      _provinciaDistrito = $v.provinciaDistrito;
      _cantonDistrito = $v.cantonDistrito;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DistritoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DistritoRecord;
  }

  @override
  void update(void Function(DistritoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DistritoRecord build() => _build();

  _$DistritoRecord _build() {
    final _$result = _$v ??
        new _$DistritoRecord._(
            descDistrito: descDistrito,
            provinciaDistrito: provinciaDistrito,
            cantonDistrito: cantonDistrito,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
