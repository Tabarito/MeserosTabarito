// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'combo_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ComboRecord> _$comboRecordSerializer = new _$ComboRecordSerializer();

class _$ComboRecordSerializer implements StructuredSerializer<ComboRecord> {
  @override
  final Iterable<Type> types = const [ComboRecord, _$ComboRecord];
  @override
  final String wireName = 'ComboRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ComboRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombreCombo;
    if (value != null) {
      result
        ..add('nombreCombo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.precioCombo;
    if (value != null) {
      result
        ..add('precioCombo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.esActivoCombo;
    if (value != null) {
      result
        ..add('esActivoCombo')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.imagenCombo;
    if (value != null) {
      result
        ..add('imagenCombo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listaProductoCombo;
    if (value != null) {
      result
        ..add('listaProductoCombo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.obsrvCombo;
    if (value != null) {
      result
        ..add('obsrvCombo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.favoritos;
    if (value != null) {
      result
        ..add('Favoritos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.cantidad;
    if (value != null) {
      result
        ..add('cantidad')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  ComboRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ComboRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombreCombo':
          result.nombreCombo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'precioCombo':
          result.precioCombo = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'esActivoCombo':
          result.esActivoCombo = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'imagenCombo':
          result.imagenCombo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'listaProductoCombo':
          result.listaProductoCombo.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'obsrvCombo':
          result.obsrvCombo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Favoritos':
          result.favoritos.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'cantidad':
          result.cantidad = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$ComboRecord extends ComboRecord {
  @override
  final String? nombreCombo;
  @override
  final double? precioCombo;
  @override
  final bool? esActivoCombo;
  @override
  final String? imagenCombo;
  @override
  final BuiltList<DocumentReference<Object?>>? listaProductoCombo;
  @override
  final String? obsrvCombo;
  @override
  final BuiltList<DocumentReference<Object?>>? favoritos;
  @override
  final int? cantidad;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ComboRecord([void Function(ComboRecordBuilder)? updates]) =>
      (new ComboRecordBuilder()..update(updates))._build();

  _$ComboRecord._(
      {this.nombreCombo,
      this.precioCombo,
      this.esActivoCombo,
      this.imagenCombo,
      this.listaProductoCombo,
      this.obsrvCombo,
      this.favoritos,
      this.cantidad,
      this.ffRef})
      : super._();

  @override
  ComboRecord rebuild(void Function(ComboRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComboRecordBuilder toBuilder() => new ComboRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComboRecord &&
        nombreCombo == other.nombreCombo &&
        precioCombo == other.precioCombo &&
        esActivoCombo == other.esActivoCombo &&
        imagenCombo == other.imagenCombo &&
        listaProductoCombo == other.listaProductoCombo &&
        obsrvCombo == other.obsrvCombo &&
        favoritos == other.favoritos &&
        cantidad == other.cantidad &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombreCombo.hashCode);
    _$hash = $jc(_$hash, precioCombo.hashCode);
    _$hash = $jc(_$hash, esActivoCombo.hashCode);
    _$hash = $jc(_$hash, imagenCombo.hashCode);
    _$hash = $jc(_$hash, listaProductoCombo.hashCode);
    _$hash = $jc(_$hash, obsrvCombo.hashCode);
    _$hash = $jc(_$hash, favoritos.hashCode);
    _$hash = $jc(_$hash, cantidad.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ComboRecord')
          ..add('nombreCombo', nombreCombo)
          ..add('precioCombo', precioCombo)
          ..add('esActivoCombo', esActivoCombo)
          ..add('imagenCombo', imagenCombo)
          ..add('listaProductoCombo', listaProductoCombo)
          ..add('obsrvCombo', obsrvCombo)
          ..add('favoritos', favoritos)
          ..add('cantidad', cantidad)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ComboRecordBuilder implements Builder<ComboRecord, ComboRecordBuilder> {
  _$ComboRecord? _$v;

  String? _nombreCombo;
  String? get nombreCombo => _$this._nombreCombo;
  set nombreCombo(String? nombreCombo) => _$this._nombreCombo = nombreCombo;

  double? _precioCombo;
  double? get precioCombo => _$this._precioCombo;
  set precioCombo(double? precioCombo) => _$this._precioCombo = precioCombo;

  bool? _esActivoCombo;
  bool? get esActivoCombo => _$this._esActivoCombo;
  set esActivoCombo(bool? esActivoCombo) =>
      _$this._esActivoCombo = esActivoCombo;

  String? _imagenCombo;
  String? get imagenCombo => _$this._imagenCombo;
  set imagenCombo(String? imagenCombo) => _$this._imagenCombo = imagenCombo;

  ListBuilder<DocumentReference<Object?>>? _listaProductoCombo;
  ListBuilder<DocumentReference<Object?>> get listaProductoCombo =>
      _$this._listaProductoCombo ??=
          new ListBuilder<DocumentReference<Object?>>();
  set listaProductoCombo(
          ListBuilder<DocumentReference<Object?>>? listaProductoCombo) =>
      _$this._listaProductoCombo = listaProductoCombo;

  String? _obsrvCombo;
  String? get obsrvCombo => _$this._obsrvCombo;
  set obsrvCombo(String? obsrvCombo) => _$this._obsrvCombo = obsrvCombo;

  ListBuilder<DocumentReference<Object?>>? _favoritos;
  ListBuilder<DocumentReference<Object?>> get favoritos =>
      _$this._favoritos ??= new ListBuilder<DocumentReference<Object?>>();
  set favoritos(ListBuilder<DocumentReference<Object?>>? favoritos) =>
      _$this._favoritos = favoritos;

  int? _cantidad;
  int? get cantidad => _$this._cantidad;
  set cantidad(int? cantidad) => _$this._cantidad = cantidad;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ComboRecordBuilder() {
    ComboRecord._initializeBuilder(this);
  }

  ComboRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombreCombo = $v.nombreCombo;
      _precioCombo = $v.precioCombo;
      _esActivoCombo = $v.esActivoCombo;
      _imagenCombo = $v.imagenCombo;
      _listaProductoCombo = $v.listaProductoCombo?.toBuilder();
      _obsrvCombo = $v.obsrvCombo;
      _favoritos = $v.favoritos?.toBuilder();
      _cantidad = $v.cantidad;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComboRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComboRecord;
  }

  @override
  void update(void Function(ComboRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComboRecord build() => _build();

  _$ComboRecord _build() {
    _$ComboRecord _$result;
    try {
      _$result = _$v ??
          new _$ComboRecord._(
              nombreCombo: nombreCombo,
              precioCombo: precioCombo,
              esActivoCombo: esActivoCombo,
              imagenCombo: imagenCombo,
              listaProductoCombo: _listaProductoCombo?.build(),
              obsrvCombo: obsrvCombo,
              favoritos: _favoritos?.build(),
              cantidad: cantidad,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listaProductoCombo';
        _listaProductoCombo?.build();

        _$failedField = 'favoritos';
        _favoritos?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ComboRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
