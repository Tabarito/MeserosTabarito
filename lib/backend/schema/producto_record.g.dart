// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'producto_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductoRecord> _$productoRecordSerializer =
    new _$ProductoRecordSerializer();

class _$ProductoRecordSerializer
    implements StructuredSerializer<ProductoRecord> {
  @override
  final Iterable<Type> types = const [ProductoRecord, _$ProductoRecord];
  @override
  final String wireName = 'ProductoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProductoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombreProducto;
    if (value != null) {
      result
        ..add('nombreProducto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.precioProducto;
    if (value != null) {
      result
        ..add('precioProducto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.tipoProducto;
    if (value != null) {
      result
        ..add('tipoProducto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imagenProducto;
    if (value != null) {
      result
        ..add('imagenProducto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.obsrvProducto;
    if (value != null) {
      result
        ..add('obsrvProducto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.esActivoProducto;
    if (value != null) {
      result
        ..add('esActivoProducto')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.referenciaListaDeProductos;
    if (value != null) {
      result
        ..add('ReferenciaListaDeProductos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.nombreComboCombo;
    if (value != null) {
      result
        ..add('nombreComboCombo')
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
  ProductoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombreProducto':
          result.nombreProducto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'precioProducto':
          result.precioProducto = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'tipoProducto':
          result.tipoProducto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'imagenProducto':
          result.imagenProducto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'obsrvProducto':
          result.obsrvProducto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'esActivoProducto':
          result.esActivoProducto = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'ReferenciaListaDeProductos':
          result.referenciaListaDeProductos = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'nombreComboCombo':
          result.nombreComboCombo = serializers.deserialize(value,
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

class _$ProductoRecord extends ProductoRecord {
  @override
  final String? nombreProducto;
  @override
  final double? precioProducto;
  @override
  final String? tipoProducto;
  @override
  final String? imagenProducto;
  @override
  final String? obsrvProducto;
  @override
  final bool? esActivoProducto;
  @override
  final DocumentReference<Object?>? referenciaListaDeProductos;
  @override
  final String? nombreComboCombo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProductoRecord([void Function(ProductoRecordBuilder)? updates]) =>
      (new ProductoRecordBuilder()..update(updates))._build();

  _$ProductoRecord._(
      {this.nombreProducto,
      this.precioProducto,
      this.tipoProducto,
      this.imagenProducto,
      this.obsrvProducto,
      this.esActivoProducto,
      this.referenciaListaDeProductos,
      this.nombreComboCombo,
      this.ffRef})
      : super._();

  @override
  ProductoRecord rebuild(void Function(ProductoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductoRecordBuilder toBuilder() =>
      new ProductoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductoRecord &&
        nombreProducto == other.nombreProducto &&
        precioProducto == other.precioProducto &&
        tipoProducto == other.tipoProducto &&
        imagenProducto == other.imagenProducto &&
        obsrvProducto == other.obsrvProducto &&
        esActivoProducto == other.esActivoProducto &&
        referenciaListaDeProductos == other.referenciaListaDeProductos &&
        nombreComboCombo == other.nombreComboCombo &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombreProducto.hashCode);
    _$hash = $jc(_$hash, precioProducto.hashCode);
    _$hash = $jc(_$hash, tipoProducto.hashCode);
    _$hash = $jc(_$hash, imagenProducto.hashCode);
    _$hash = $jc(_$hash, obsrvProducto.hashCode);
    _$hash = $jc(_$hash, esActivoProducto.hashCode);
    _$hash = $jc(_$hash, referenciaListaDeProductos.hashCode);
    _$hash = $jc(_$hash, nombreComboCombo.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductoRecord')
          ..add('nombreProducto', nombreProducto)
          ..add('precioProducto', precioProducto)
          ..add('tipoProducto', tipoProducto)
          ..add('imagenProducto', imagenProducto)
          ..add('obsrvProducto', obsrvProducto)
          ..add('esActivoProducto', esActivoProducto)
          ..add('referenciaListaDeProductos', referenciaListaDeProductos)
          ..add('nombreComboCombo', nombreComboCombo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProductoRecordBuilder
    implements Builder<ProductoRecord, ProductoRecordBuilder> {
  _$ProductoRecord? _$v;

  String? _nombreProducto;
  String? get nombreProducto => _$this._nombreProducto;
  set nombreProducto(String? nombreProducto) =>
      _$this._nombreProducto = nombreProducto;

  double? _precioProducto;
  double? get precioProducto => _$this._precioProducto;
  set precioProducto(double? precioProducto) =>
      _$this._precioProducto = precioProducto;

  String? _tipoProducto;
  String? get tipoProducto => _$this._tipoProducto;
  set tipoProducto(String? tipoProducto) => _$this._tipoProducto = tipoProducto;

  String? _imagenProducto;
  String? get imagenProducto => _$this._imagenProducto;
  set imagenProducto(String? imagenProducto) =>
      _$this._imagenProducto = imagenProducto;

  String? _obsrvProducto;
  String? get obsrvProducto => _$this._obsrvProducto;
  set obsrvProducto(String? obsrvProducto) =>
      _$this._obsrvProducto = obsrvProducto;

  bool? _esActivoProducto;
  bool? get esActivoProducto => _$this._esActivoProducto;
  set esActivoProducto(bool? esActivoProducto) =>
      _$this._esActivoProducto = esActivoProducto;

  DocumentReference<Object?>? _referenciaListaDeProductos;
  DocumentReference<Object?>? get referenciaListaDeProductos =>
      _$this._referenciaListaDeProductos;
  set referenciaListaDeProductos(
          DocumentReference<Object?>? referenciaListaDeProductos) =>
      _$this._referenciaListaDeProductos = referenciaListaDeProductos;

  String? _nombreComboCombo;
  String? get nombreComboCombo => _$this._nombreComboCombo;
  set nombreComboCombo(String? nombreComboCombo) =>
      _$this._nombreComboCombo = nombreComboCombo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProductoRecordBuilder() {
    ProductoRecord._initializeBuilder(this);
  }

  ProductoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombreProducto = $v.nombreProducto;
      _precioProducto = $v.precioProducto;
      _tipoProducto = $v.tipoProducto;
      _imagenProducto = $v.imagenProducto;
      _obsrvProducto = $v.obsrvProducto;
      _esActivoProducto = $v.esActivoProducto;
      _referenciaListaDeProductos = $v.referenciaListaDeProductos;
      _nombreComboCombo = $v.nombreComboCombo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductoRecord;
  }

  @override
  void update(void Function(ProductoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductoRecord build() => _build();

  _$ProductoRecord _build() {
    final _$result = _$v ??
        new _$ProductoRecord._(
            nombreProducto: nombreProducto,
            precioProducto: precioProducto,
            tipoProducto: tipoProducto,
            imagenProducto: imagenProducto,
            obsrvProducto: obsrvProducto,
            esActivoProducto: esActivoProducto,
            referenciaListaDeProductos: referenciaListaDeProductos,
            nombreComboCombo: nombreComboCombo,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
