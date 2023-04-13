// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_productos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubProductosRecord> _$subProductosRecordSerializer =
    new _$SubProductosRecordSerializer();

class _$SubProductosRecordSerializer
    implements StructuredSerializer<SubProductosRecord> {
  @override
  final Iterable<Type> types = const [SubProductosRecord, _$SubProductosRecord];
  @override
  final String wireName = 'SubProductosRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SubProductosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.subProducto;
    if (value != null) {
      result
        ..add('subProducto')
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
  SubProductosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubProductosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'subProducto':
          result.subProducto = serializers.deserialize(value,
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

class _$SubProductosRecord extends SubProductosRecord {
  @override
  final DocumentReference<Object?>? subProducto;
  @override
  final int? cantidad;
  @override
  final double? subTotal;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SubProductosRecord(
          [void Function(SubProductosRecordBuilder)? updates]) =>
      (new SubProductosRecordBuilder()..update(updates))._build();

  _$SubProductosRecord._(
      {this.subProducto, this.cantidad, this.subTotal, this.ffRef})
      : super._();

  @override
  SubProductosRecord rebuild(
          void Function(SubProductosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubProductosRecordBuilder toBuilder() =>
      new SubProductosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubProductosRecord &&
        subProducto == other.subProducto &&
        cantidad == other.cantidad &&
        subTotal == other.subTotal &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, subProducto.hashCode);
    _$hash = $jc(_$hash, cantidad.hashCode);
    _$hash = $jc(_$hash, subTotal.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubProductosRecord')
          ..add('subProducto', subProducto)
          ..add('cantidad', cantidad)
          ..add('subTotal', subTotal)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SubProductosRecordBuilder
    implements Builder<SubProductosRecord, SubProductosRecordBuilder> {
  _$SubProductosRecord? _$v;

  DocumentReference<Object?>? _subProducto;
  DocumentReference<Object?>? get subProducto => _$this._subProducto;
  set subProducto(DocumentReference<Object?>? subProducto) =>
      _$this._subProducto = subProducto;

  int? _cantidad;
  int? get cantidad => _$this._cantidad;
  set cantidad(int? cantidad) => _$this._cantidad = cantidad;

  double? _subTotal;
  double? get subTotal => _$this._subTotal;
  set subTotal(double? subTotal) => _$this._subTotal = subTotal;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SubProductosRecordBuilder() {
    SubProductosRecord._initializeBuilder(this);
  }

  SubProductosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _subProducto = $v.subProducto;
      _cantidad = $v.cantidad;
      _subTotal = $v.subTotal;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubProductosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubProductosRecord;
  }

  @override
  void update(void Function(SubProductosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubProductosRecord build() => _build();

  _$SubProductosRecord _build() {
    final _$result = _$v ??
        new _$SubProductosRecord._(
            subProducto: subProducto,
            cantidad: cantidad,
            subTotal: subTotal,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
