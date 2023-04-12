// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'canton_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CantonRecord> _$cantonRecordSerializer =
    new _$CantonRecordSerializer();

class _$CantonRecordSerializer implements StructuredSerializer<CantonRecord> {
  @override
  final Iterable<Type> types = const [CantonRecord, _$CantonRecord];
  @override
  final String wireName = 'CantonRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CantonRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.descCanton;
    if (value != null) {
      result
        ..add('descCanton')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.provinciaCanton;
    if (value != null) {
      result
        ..add('ProvinciaCanton')
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
  CantonRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CantonRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'descCanton':
          result.descCanton = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ProvinciaCanton':
          result.provinciaCanton = serializers.deserialize(value,
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

class _$CantonRecord extends CantonRecord {
  @override
  final String? descCanton;
  @override
  final String? provinciaCanton;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CantonRecord([void Function(CantonRecordBuilder)? updates]) =>
      (new CantonRecordBuilder()..update(updates))._build();

  _$CantonRecord._({this.descCanton, this.provinciaCanton, this.ffRef})
      : super._();

  @override
  CantonRecord rebuild(void Function(CantonRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CantonRecordBuilder toBuilder() => new CantonRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CantonRecord &&
        descCanton == other.descCanton &&
        provinciaCanton == other.provinciaCanton &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, descCanton.hashCode);
    _$hash = $jc(_$hash, provinciaCanton.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CantonRecord')
          ..add('descCanton', descCanton)
          ..add('provinciaCanton', provinciaCanton)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CantonRecordBuilder
    implements Builder<CantonRecord, CantonRecordBuilder> {
  _$CantonRecord? _$v;

  String? _descCanton;
  String? get descCanton => _$this._descCanton;
  set descCanton(String? descCanton) => _$this._descCanton = descCanton;

  String? _provinciaCanton;
  String? get provinciaCanton => _$this._provinciaCanton;
  set provinciaCanton(String? provinciaCanton) =>
      _$this._provinciaCanton = provinciaCanton;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CantonRecordBuilder() {
    CantonRecord._initializeBuilder(this);
  }

  CantonRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _descCanton = $v.descCanton;
      _provinciaCanton = $v.provinciaCanton;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CantonRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CantonRecord;
  }

  @override
  void update(void Function(CantonRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CantonRecord build() => _build();

  _$CantonRecord _build() {
    final _$result = _$v ??
        new _$CantonRecord._(
            descCanton: descCanton,
            provinciaCanton: provinciaCanton,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
