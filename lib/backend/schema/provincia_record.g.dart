// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provincia_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProvinciaRecord> _$provinciaRecordSerializer =
    new _$ProvinciaRecordSerializer();

class _$ProvinciaRecordSerializer
    implements StructuredSerializer<ProvinciaRecord> {
  @override
  final Iterable<Type> types = const [ProvinciaRecord, _$ProvinciaRecord];
  @override
  final String wireName = 'ProvinciaRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProvinciaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.descProvincia;
    if (value != null) {
      result
        ..add('descProvincia')
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
  ProvinciaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProvinciaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'descProvincia':
          result.descProvincia = serializers.deserialize(value,
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

class _$ProvinciaRecord extends ProvinciaRecord {
  @override
  final String? descProvincia;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProvinciaRecord([void Function(ProvinciaRecordBuilder)? updates]) =>
      (new ProvinciaRecordBuilder()..update(updates))._build();

  _$ProvinciaRecord._({this.descProvincia, this.ffRef}) : super._();

  @override
  ProvinciaRecord rebuild(void Function(ProvinciaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProvinciaRecordBuilder toBuilder() =>
      new ProvinciaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProvinciaRecord &&
        descProvincia == other.descProvincia &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, descProvincia.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProvinciaRecord')
          ..add('descProvincia', descProvincia)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProvinciaRecordBuilder
    implements Builder<ProvinciaRecord, ProvinciaRecordBuilder> {
  _$ProvinciaRecord? _$v;

  String? _descProvincia;
  String? get descProvincia => _$this._descProvincia;
  set descProvincia(String? descProvincia) =>
      _$this._descProvincia = descProvincia;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProvinciaRecordBuilder() {
    ProvinciaRecord._initializeBuilder(this);
  }

  ProvinciaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _descProvincia = $v.descProvincia;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProvinciaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProvinciaRecord;
  }

  @override
  void update(void Function(ProvinciaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProvinciaRecord build() => _build();

  _$ProvinciaRecord _build() {
    final _$result = _$v ??
        new _$ProvinciaRecord._(descProvincia: descProvincia, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
