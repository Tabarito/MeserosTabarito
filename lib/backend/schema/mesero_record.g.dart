// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mesero_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MeseroRecord> _$meseroRecordSerializer =
    new _$MeseroRecordSerializer();

class _$MeseroRecordSerializer implements StructuredSerializer<MeseroRecord> {
  @override
  final Iterable<Type> types = const [MeseroRecord, _$MeseroRecord];
  @override
  final String wireName = 'MeseroRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MeseroRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombreMesero;
    if (value != null) {
      result
        ..add('nombreMesero')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.idRestaurante;
    if (value != null) {
      result
        ..add('idRestaurante')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.esActivoMesero;
    if (value != null) {
      result
        ..add('esActivoMesero')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.listaOrdenMesero;
    if (value != null) {
      result
        ..add('listaOrdenMesero')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.fotoMesero;
    if (value != null) {
      result
        ..add('fotoMesero')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.correoMesero;
    if (value != null) {
      result
        ..add('correoMesero')
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
  MeseroRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MeseroRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombreMesero':
          result.nombreMesero = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idRestaurante':
          result.idRestaurante = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'esActivoMesero':
          result.esActivoMesero = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'listaOrdenMesero':
          result.listaOrdenMesero = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'fotoMesero':
          result.fotoMesero = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'correoMesero':
          result.correoMesero = serializers.deserialize(value,
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

class _$MeseroRecord extends MeseroRecord {
  @override
  final String? nombreMesero;
  @override
  final DocumentReference<Object?>? idRestaurante;
  @override
  final bool? esActivoMesero;
  @override
  final DocumentReference<Object?>? listaOrdenMesero;
  @override
  final String? fotoMesero;
  @override
  final String? correoMesero;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MeseroRecord([void Function(MeseroRecordBuilder)? updates]) =>
      (new MeseroRecordBuilder()..update(updates))._build();

  _$MeseroRecord._(
      {this.nombreMesero,
      this.idRestaurante,
      this.esActivoMesero,
      this.listaOrdenMesero,
      this.fotoMesero,
      this.correoMesero,
      this.ffRef})
      : super._();

  @override
  MeseroRecord rebuild(void Function(MeseroRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MeseroRecordBuilder toBuilder() => new MeseroRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MeseroRecord &&
        nombreMesero == other.nombreMesero &&
        idRestaurante == other.idRestaurante &&
        esActivoMesero == other.esActivoMesero &&
        listaOrdenMesero == other.listaOrdenMesero &&
        fotoMesero == other.fotoMesero &&
        correoMesero == other.correoMesero &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nombreMesero.hashCode);
    _$hash = $jc(_$hash, idRestaurante.hashCode);
    _$hash = $jc(_$hash, esActivoMesero.hashCode);
    _$hash = $jc(_$hash, listaOrdenMesero.hashCode);
    _$hash = $jc(_$hash, fotoMesero.hashCode);
    _$hash = $jc(_$hash, correoMesero.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MeseroRecord')
          ..add('nombreMesero', nombreMesero)
          ..add('idRestaurante', idRestaurante)
          ..add('esActivoMesero', esActivoMesero)
          ..add('listaOrdenMesero', listaOrdenMesero)
          ..add('fotoMesero', fotoMesero)
          ..add('correoMesero', correoMesero)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MeseroRecordBuilder
    implements Builder<MeseroRecord, MeseroRecordBuilder> {
  _$MeseroRecord? _$v;

  String? _nombreMesero;
  String? get nombreMesero => _$this._nombreMesero;
  set nombreMesero(String? nombreMesero) => _$this._nombreMesero = nombreMesero;

  DocumentReference<Object?>? _idRestaurante;
  DocumentReference<Object?>? get idRestaurante => _$this._idRestaurante;
  set idRestaurante(DocumentReference<Object?>? idRestaurante) =>
      _$this._idRestaurante = idRestaurante;

  bool? _esActivoMesero;
  bool? get esActivoMesero => _$this._esActivoMesero;
  set esActivoMesero(bool? esActivoMesero) =>
      _$this._esActivoMesero = esActivoMesero;

  DocumentReference<Object?>? _listaOrdenMesero;
  DocumentReference<Object?>? get listaOrdenMesero => _$this._listaOrdenMesero;
  set listaOrdenMesero(DocumentReference<Object?>? listaOrdenMesero) =>
      _$this._listaOrdenMesero = listaOrdenMesero;

  String? _fotoMesero;
  String? get fotoMesero => _$this._fotoMesero;
  set fotoMesero(String? fotoMesero) => _$this._fotoMesero = fotoMesero;

  String? _correoMesero;
  String? get correoMesero => _$this._correoMesero;
  set correoMesero(String? correoMesero) => _$this._correoMesero = correoMesero;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MeseroRecordBuilder() {
    MeseroRecord._initializeBuilder(this);
  }

  MeseroRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombreMesero = $v.nombreMesero;
      _idRestaurante = $v.idRestaurante;
      _esActivoMesero = $v.esActivoMesero;
      _listaOrdenMesero = $v.listaOrdenMesero;
      _fotoMesero = $v.fotoMesero;
      _correoMesero = $v.correoMesero;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MeseroRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MeseroRecord;
  }

  @override
  void update(void Function(MeseroRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MeseroRecord build() => _build();

  _$MeseroRecord _build() {
    final _$result = _$v ??
        new _$MeseroRecord._(
            nombreMesero: nombreMesero,
            idRestaurante: idRestaurante,
            esActivoMesero: esActivoMesero,
            listaOrdenMesero: listaOrdenMesero,
            fotoMesero: fotoMesero,
            correoMesero: correoMesero,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
