// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_combos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubCombosRecord> _$subCombosRecordSerializer =
    new _$SubCombosRecordSerializer();

class _$SubCombosRecordSerializer
    implements StructuredSerializer<SubCombosRecord> {
  @override
  final Iterable<Type> types = const [SubCombosRecord, _$SubCombosRecord];
  @override
  final String wireName = 'SubCombosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SubCombosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.subCombo;
    if (value != null) {
      result
        ..add('subCombo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.cantidad;
    if (value != null) {
      result
        ..add('cantidad')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.subTotal;
    if (value != null) {
      result
        ..add('subTotal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  SubCombosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubCombosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'subCombo':
          result.subCombo = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'cantidad':
          result.cantidad = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'subTotal':
          result.subTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$SubCombosRecord extends SubCombosRecord {
  @override
  final DocumentReference<Object?>? subCombo;
  @override
  final int? cantidad;
  @override
  final double? subTotal;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SubCombosRecord([void Function(SubCombosRecordBuilder)? updates]) =>
      (new SubCombosRecordBuilder()..update(updates))._build();

  _$SubCombosRecord._({this.subCombo, this.cantidad, this.subTotal, this.ffRef})
      : super._();

  @override
  SubCombosRecord rebuild(void Function(SubCombosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubCombosRecordBuilder toBuilder() =>
      new SubCombosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubCombosRecord &&
        subCombo == other.subCombo &&
        cantidad == other.cantidad &&
        subTotal == other.subTotal &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subCombo.hashCode);
    _$hash = $jc(_$hash, cantidad.hashCode);
    _$hash = $jc(_$hash, subTotal.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubCombosRecord')
          ..add('subCombo', subCombo)
          ..add('cantidad', cantidad)
          ..add('subTotal', subTotal)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SubCombosRecordBuilder
    implements Builder<SubCombosRecord, SubCombosRecordBuilder> {
  _$SubCombosRecord? _$v;

  DocumentReference<Object?>? _subCombo;
  DocumentReference<Object?>? get subCombo => _$this._subCombo;
  set subCombo(DocumentReference<Object?>? subCombo) =>
      _$this._subCombo = subCombo;

  int? _cantidad;
  int? get cantidad => _$this._cantidad;
  set cantidad(int? cantidad) => _$this._cantidad = cantidad;

  double? _subTotal;
  double? get subTotal => _$this._subTotal;
  set subTotal(double? subTotal) => _$this._subTotal = subTotal;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SubCombosRecordBuilder() {
    SubCombosRecord._initializeBuilder(this);
  }

  SubCombosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subCombo = $v.subCombo;
      _cantidad = $v.cantidad;
      _subTotal = $v.subTotal;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubCombosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubCombosRecord;
  }

  @override
  void update(void Function(SubCombosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubCombosRecord build() => _build();

  _$SubCombosRecord _build() {
    final _$result = _$v ??
        new _$SubCombosRecord._(
            subCombo: subCombo,
            cantidad: cantidad,
            subTotal: subTotal,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
