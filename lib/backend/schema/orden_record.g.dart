// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orden_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrdenRecord> _$ordenRecordSerializer = new _$OrdenRecordSerializer();

class _$OrdenRecordSerializer implements StructuredSerializer<OrdenRecord> {
  @override
  final Iterable<Type> types = const [OrdenRecord, _$OrdenRecord];
  @override
  final String wireName = 'OrdenRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, OrdenRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.fechaOrden;
    if (value != null) {
      result
        ..add('fechaOrden')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.cliente;
    if (value != null) {
      result
        ..add('Cliente')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.montoTotal;
    if (value != null) {
      result
        ..add('montoTotal')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.estadoOrden;
    if (value != null) {
      result
        ..add('estadoOrden')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idMesa;
    if (value != null) {
      result
        ..add('idMesa')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.idRestaurante;
    if (value != null) {
      result
        ..add('idRestaurante')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.obsrvOrden;
    if (value != null) {
      result
        ..add('obsrvOrden')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listaProductoOrden;
    if (value != null) {
      result
        ..add('listaProductoOrden')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.idMesero;
    if (value != null) {
      result
        ..add('idMesero')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.listaProductoOrden2;
    if (value != null) {
      result
        ..add('listaProductoOrden2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.mesa2;
    if (value != null) {
      result
        ..add('mesa2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listaComboOrden2;
    if (value != null) {
      result
        ..add('listaComboOrden2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
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
  OrdenRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrdenRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'fechaOrden':
          result.fechaOrden = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Cliente':
          result.cliente = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'montoTotal':
          result.montoTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'estadoOrden':
          result.estadoOrden = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idMesa':
          result.idMesa = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'idRestaurante':
          result.idRestaurante = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'obsrvOrden':
          result.obsrvOrden = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'listaProductoOrden':
          result.listaProductoOrden.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'idMesero':
          result.idMesero = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'listaProductoOrden2':
          result.listaProductoOrden2.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'mesa2':
          result.mesa2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'listaComboOrden2':
          result.listaComboOrden2.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$OrdenRecord extends OrdenRecord {
  @override
  final DateTime? fechaOrden;
  @override
  final String? cliente;
  @override
  final double? montoTotal;
  @override
  final String? estadoOrden;
  @override
  final DocumentReference<Object?>? idMesa;
  @override
  final DocumentReference<Object?>? idRestaurante;
  @override
  final String? obsrvOrden;
  @override
  final BuiltList<DocumentReference<Object?>>? listaProductoOrden;
  @override
  final DocumentReference<Object?>? idMesero;
  @override
  final BuiltList<DocumentReference<Object?>>? listaProductoOrden2;
  @override
  final String? mesa2;
  @override
  final BuiltList<DocumentReference<Object?>>? listaComboOrden2;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OrdenRecord([void Function(OrdenRecordBuilder)? updates]) =>
      (new OrdenRecordBuilder()..update(updates))._build();

  _$OrdenRecord._(
      {this.fechaOrden,
      this.cliente,
      this.montoTotal,
      this.estadoOrden,
      this.idMesa,
      this.idRestaurante,
      this.obsrvOrden,
      this.listaProductoOrden,
      this.idMesero,
      this.listaProductoOrden2,
      this.mesa2,
      this.listaComboOrden2,
      this.ffRef})
      : super._();

  @override
  OrdenRecord rebuild(void Function(OrdenRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdenRecordBuilder toBuilder() => new OrdenRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdenRecord &&
        fechaOrden == other.fechaOrden &&
        cliente == other.cliente &&
        montoTotal == other.montoTotal &&
        estadoOrden == other.estadoOrden &&
        idMesa == other.idMesa &&
        idRestaurante == other.idRestaurante &&
        obsrvOrden == other.obsrvOrden &&
        listaProductoOrden == other.listaProductoOrden &&
        idMesero == other.idMesero &&
        listaProductoOrden2 == other.listaProductoOrden2 &&
        mesa2 == other.mesa2 &&
        listaComboOrden2 == other.listaComboOrden2 &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, fechaOrden.hashCode);
    _$hash = $jc(_$hash, cliente.hashCode);
    _$hash = $jc(_$hash, montoTotal.hashCode);
    _$hash = $jc(_$hash, estadoOrden.hashCode);
    _$hash = $jc(_$hash, idMesa.hashCode);
    _$hash = $jc(_$hash, idRestaurante.hashCode);
    _$hash = $jc(_$hash, obsrvOrden.hashCode);
    _$hash = $jc(_$hash, listaProductoOrden.hashCode);
    _$hash = $jc(_$hash, idMesero.hashCode);
    _$hash = $jc(_$hash, listaProductoOrden2.hashCode);
    _$hash = $jc(_$hash, mesa2.hashCode);
    _$hash = $jc(_$hash, listaComboOrden2.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrdenRecord')
          ..add('fechaOrden', fechaOrden)
          ..add('cliente', cliente)
          ..add('montoTotal', montoTotal)
          ..add('estadoOrden', estadoOrden)
          ..add('idMesa', idMesa)
          ..add('idRestaurante', idRestaurante)
          ..add('obsrvOrden', obsrvOrden)
          ..add('listaProductoOrden', listaProductoOrden)
          ..add('idMesero', idMesero)
          ..add('listaProductoOrden2', listaProductoOrden2)
          ..add('mesa2', mesa2)
          ..add('listaComboOrden2', listaComboOrden2)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OrdenRecordBuilder implements Builder<OrdenRecord, OrdenRecordBuilder> {
  _$OrdenRecord? _$v;

  DateTime? _fechaOrden;
  DateTime? get fechaOrden => _$this._fechaOrden;
  set fechaOrden(DateTime? fechaOrden) => _$this._fechaOrden = fechaOrden;

  String? _cliente;
  String? get cliente => _$this._cliente;
  set cliente(String? cliente) => _$this._cliente = cliente;

  double? _montoTotal;
  double? get montoTotal => _$this._montoTotal;
  set montoTotal(double? montoTotal) => _$this._montoTotal = montoTotal;

  String? _estadoOrden;
  String? get estadoOrden => _$this._estadoOrden;
  set estadoOrden(String? estadoOrden) => _$this._estadoOrden = estadoOrden;

  DocumentReference<Object?>? _idMesa;
  DocumentReference<Object?>? get idMesa => _$this._idMesa;
  set idMesa(DocumentReference<Object?>? idMesa) => _$this._idMesa = idMesa;

  DocumentReference<Object?>? _idRestaurante;
  DocumentReference<Object?>? get idRestaurante => _$this._idRestaurante;
  set idRestaurante(DocumentReference<Object?>? idRestaurante) =>
      _$this._idRestaurante = idRestaurante;

  String? _obsrvOrden;
  String? get obsrvOrden => _$this._obsrvOrden;
  set obsrvOrden(String? obsrvOrden) => _$this._obsrvOrden = obsrvOrden;

  ListBuilder<DocumentReference<Object?>>? _listaProductoOrden;
  ListBuilder<DocumentReference<Object?>> get listaProductoOrden =>
      _$this._listaProductoOrden ??=
          new ListBuilder<DocumentReference<Object?>>();
  set listaProductoOrden(
          ListBuilder<DocumentReference<Object?>>? listaProductoOrden) =>
      _$this._listaProductoOrden = listaProductoOrden;

  DocumentReference<Object?>? _idMesero;
  DocumentReference<Object?>? get idMesero => _$this._idMesero;
  set idMesero(DocumentReference<Object?>? idMesero) =>
      _$this._idMesero = idMesero;

  ListBuilder<DocumentReference<Object?>>? _listaProductoOrden2;
  ListBuilder<DocumentReference<Object?>> get listaProductoOrden2 =>
      _$this._listaProductoOrden2 ??=
          new ListBuilder<DocumentReference<Object?>>();
  set listaProductoOrden2(
          ListBuilder<DocumentReference<Object?>>? listaProductoOrden2) =>
      _$this._listaProductoOrden2 = listaProductoOrden2;

  String? _mesa2;
  String? get mesa2 => _$this._mesa2;
  set mesa2(String? mesa2) => _$this._mesa2 = mesa2;

  ListBuilder<DocumentReference<Object?>>? _listaComboOrden2;
  ListBuilder<DocumentReference<Object?>> get listaComboOrden2 =>
      _$this._listaComboOrden2 ??=
          new ListBuilder<DocumentReference<Object?>>();
  set listaComboOrden2(
          ListBuilder<DocumentReference<Object?>>? listaComboOrden2) =>
      _$this._listaComboOrden2 = listaComboOrden2;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OrdenRecordBuilder() {
    OrdenRecord._initializeBuilder(this);
  }

  OrdenRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fechaOrden = $v.fechaOrden;
      _cliente = $v.cliente;
      _montoTotal = $v.montoTotal;
      _estadoOrden = $v.estadoOrden;
      _idMesa = $v.idMesa;
      _idRestaurante = $v.idRestaurante;
      _obsrvOrden = $v.obsrvOrden;
      _listaProductoOrden = $v.listaProductoOrden?.toBuilder();
      _idMesero = $v.idMesero;
      _listaProductoOrden2 = $v.listaProductoOrden2?.toBuilder();
      _mesa2 = $v.mesa2;
      _listaComboOrden2 = $v.listaComboOrden2?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdenRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrdenRecord;
  }

  @override
  void update(void Function(OrdenRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrdenRecord build() => _build();

  _$OrdenRecord _build() {
    _$OrdenRecord _$result;
    try {
      _$result = _$v ??
          new _$OrdenRecord._(
              fechaOrden: fechaOrden,
              cliente: cliente,
              montoTotal: montoTotal,
              estadoOrden: estadoOrden,
              idMesa: idMesa,
              idRestaurante: idRestaurante,
              obsrvOrden: obsrvOrden,
              listaProductoOrden: _listaProductoOrden?.build(),
              idMesero: idMesero,
              listaProductoOrden2: _listaProductoOrden2?.build(),
              mesa2: mesa2,
              listaComboOrden2: _listaComboOrden2?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listaProductoOrden';
        _listaProductoOrden?.build();

        _$failedField = 'listaProductoOrden2';
        _listaProductoOrden2?.build();

        _$failedField = 'listaComboOrden2';
        _listaComboOrden2?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'OrdenRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
