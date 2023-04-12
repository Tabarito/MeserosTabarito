// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurante_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RestauranteRecord> _$restauranteRecordSerializer =
    new _$RestauranteRecordSerializer();

class _$RestauranteRecordSerializer
    implements StructuredSerializer<RestauranteRecord> {
  @override
  final Iterable<Type> types = const [RestauranteRecord, _$RestauranteRecord];
  @override
  final String wireName = 'RestauranteRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RestauranteRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombreRestaurante;
    if (value != null) {
      result
        ..add('nombreRestaurante')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.direccionExacta;
    if (value != null) {
      result
        ..add('direccionExacta')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listaOrdenRestaurante;
    if (value != null) {
      result
        ..add('listaOrdenRestaurante')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.listaMesaRestaurante;
    if (value != null) {
      result
        ..add('listaMesaRestaurante')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.listaMeseroRestaurante;
    if (value != null) {
      result
        ..add('listaMeseroRestaurante')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.provincia;
    if (value != null) {
      result
        ..add('Provincia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.canton;
    if (value != null) {
      result
        ..add('Canton')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.distrito;
    if (value != null) {
      result
        ..add('Distrito')
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
  RestauranteRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RestauranteRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombreRestaurante':
          result.nombreRestaurante = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'direccionExacta':
          result.direccionExacta = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'listaOrdenRestaurante':
          result.listaOrdenRestaurante.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'listaMesaRestaurante':
          result.listaMesaRestaurante.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'listaMeseroRestaurante':
          result.listaMeseroRestaurante.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'Provincia':
          result.provincia = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Canton':
          result.canton = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Distrito':
          result.distrito = serializers.deserialize(value,
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

class _$RestauranteRecord extends RestauranteRecord {
  @override
  final String? nombreRestaurante;
  @override
  final String? direccionExacta;
  @override
  final BuiltList<DocumentReference<Object?>>? listaOrdenRestaurante;
  @override
  final BuiltList<DocumentReference<Object?>>? listaMesaRestaurante;
  @override
  final BuiltList<DocumentReference<Object?>>? listaMeseroRestaurante;
  @override
  final String? provincia;
  @override
  final String? canton;
  @override
  final String? distrito;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RestauranteRecord(
          [void Function(RestauranteRecordBuilder)? updates]) =>
      (new RestauranteRecordBuilder()..update(updates))._build();

  _$RestauranteRecord._(
      {this.nombreRestaurante,
      this.direccionExacta,
      this.listaOrdenRestaurante,
      this.listaMesaRestaurante,
      this.listaMeseroRestaurante,
      this.provincia,
      this.canton,
      this.distrito,
      this.ffRef})
      : super._();

  @override
  RestauranteRecord rebuild(void Function(RestauranteRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestauranteRecordBuilder toBuilder() =>
      new RestauranteRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestauranteRecord &&
        nombreRestaurante == other.nombreRestaurante &&
        direccionExacta == other.direccionExacta &&
        listaOrdenRestaurante == other.listaOrdenRestaurante &&
        listaMesaRestaurante == other.listaMesaRestaurante &&
        listaMeseroRestaurante == other.listaMeseroRestaurante &&
        provincia == other.provincia &&
        canton == other.canton &&
        distrito == other.distrito &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombreRestaurante.hashCode);
    _$hash = $jc(_$hash, direccionExacta.hashCode);
    _$hash = $jc(_$hash, listaOrdenRestaurante.hashCode);
    _$hash = $jc(_$hash, listaMesaRestaurante.hashCode);
    _$hash = $jc(_$hash, listaMeseroRestaurante.hashCode);
    _$hash = $jc(_$hash, provincia.hashCode);
    _$hash = $jc(_$hash, canton.hashCode);
    _$hash = $jc(_$hash, distrito.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RestauranteRecord')
          ..add('nombreRestaurante', nombreRestaurante)
          ..add('direccionExacta', direccionExacta)
          ..add('listaOrdenRestaurante', listaOrdenRestaurante)
          ..add('listaMesaRestaurante', listaMesaRestaurante)
          ..add('listaMeseroRestaurante', listaMeseroRestaurante)
          ..add('provincia', provincia)
          ..add('canton', canton)
          ..add('distrito', distrito)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RestauranteRecordBuilder
    implements Builder<RestauranteRecord, RestauranteRecordBuilder> {
  _$RestauranteRecord? _$v;

  String? _nombreRestaurante;
  String? get nombreRestaurante => _$this._nombreRestaurante;
  set nombreRestaurante(String? nombreRestaurante) =>
      _$this._nombreRestaurante = nombreRestaurante;

  String? _direccionExacta;
  String? get direccionExacta => _$this._direccionExacta;
  set direccionExacta(String? direccionExacta) =>
      _$this._direccionExacta = direccionExacta;

  ListBuilder<DocumentReference<Object?>>? _listaOrdenRestaurante;
  ListBuilder<DocumentReference<Object?>> get listaOrdenRestaurante =>
      _$this._listaOrdenRestaurante ??=
          new ListBuilder<DocumentReference<Object?>>();
  set listaOrdenRestaurante(
          ListBuilder<DocumentReference<Object?>>? listaOrdenRestaurante) =>
      _$this._listaOrdenRestaurante = listaOrdenRestaurante;

  ListBuilder<DocumentReference<Object?>>? _listaMesaRestaurante;
  ListBuilder<DocumentReference<Object?>> get listaMesaRestaurante =>
      _$this._listaMesaRestaurante ??=
          new ListBuilder<DocumentReference<Object?>>();
  set listaMesaRestaurante(
          ListBuilder<DocumentReference<Object?>>? listaMesaRestaurante) =>
      _$this._listaMesaRestaurante = listaMesaRestaurante;

  ListBuilder<DocumentReference<Object?>>? _listaMeseroRestaurante;
  ListBuilder<DocumentReference<Object?>> get listaMeseroRestaurante =>
      _$this._listaMeseroRestaurante ??=
          new ListBuilder<DocumentReference<Object?>>();
  set listaMeseroRestaurante(
          ListBuilder<DocumentReference<Object?>>? listaMeseroRestaurante) =>
      _$this._listaMeseroRestaurante = listaMeseroRestaurante;

  String? _provincia;
  String? get provincia => _$this._provincia;
  set provincia(String? provincia) => _$this._provincia = provincia;

  String? _canton;
  String? get canton => _$this._canton;
  set canton(String? canton) => _$this._canton = canton;

  String? _distrito;
  String? get distrito => _$this._distrito;
  set distrito(String? distrito) => _$this._distrito = distrito;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RestauranteRecordBuilder() {
    RestauranteRecord._initializeBuilder(this);
  }

  RestauranteRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombreRestaurante = $v.nombreRestaurante;
      _direccionExacta = $v.direccionExacta;
      _listaOrdenRestaurante = $v.listaOrdenRestaurante?.toBuilder();
      _listaMesaRestaurante = $v.listaMesaRestaurante?.toBuilder();
      _listaMeseroRestaurante = $v.listaMeseroRestaurante?.toBuilder();
      _provincia = $v.provincia;
      _canton = $v.canton;
      _distrito = $v.distrito;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestauranteRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestauranteRecord;
  }

  @override
  void update(void Function(RestauranteRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RestauranteRecord build() => _build();

  _$RestauranteRecord _build() {
    _$RestauranteRecord _$result;
    try {
      _$result = _$v ??
          new _$RestauranteRecord._(
              nombreRestaurante: nombreRestaurante,
              direccionExacta: direccionExacta,
              listaOrdenRestaurante: _listaOrdenRestaurante?.build(),
              listaMesaRestaurante: _listaMesaRestaurante?.build(),
              listaMeseroRestaurante: _listaMeseroRestaurante?.build(),
              provincia: provincia,
              canton: canton,
              distrito: distrito,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listaOrdenRestaurante';
        _listaOrdenRestaurante?.build();
        _$failedField = 'listaMesaRestaurante';
        _listaMesaRestaurante?.build();
        _$failedField = 'listaMeseroRestaurante';
        _listaMeseroRestaurante?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RestauranteRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
