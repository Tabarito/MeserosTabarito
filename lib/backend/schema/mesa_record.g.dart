// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mesa_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MesaRecord> _$mesaRecordSerializer = new _$MesaRecordSerializer();

class _$MesaRecordSerializer implements StructuredSerializer<MesaRecord> {
  @override
  final Iterable<Type> types = const [MesaRecord, _$MesaRecord];
  @override
  final String wireName = 'MesaRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MesaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.descMesa;
    if (value != null) {
      result
        ..add('descMesa')
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
    value = object.listaOrdenMesa;
    if (value != null) {
      result
        ..add('listaOrdenMesa')
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
  MesaRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MesaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'descMesa':
          result.descMesa = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'idRestaurante':
          result.idRestaurante = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'listaOrdenMesa':
          result.listaOrdenMesa.replace(serializers.deserialize(value,
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

class _$MesaRecord extends MesaRecord {
  @override
  final String? descMesa;
  @override
  final DocumentReference<Object?>? idRestaurante;
  @override
  final BuiltList<DocumentReference<Object?>>? listaOrdenMesa;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MesaRecord([void Function(MesaRecordBuilder)? updates]) =>
      (new MesaRecordBuilder()..update(updates))._build();

  _$MesaRecord._(
      {this.descMesa, this.idRestaurante, this.listaOrdenMesa, this.ffRef})
      : super._();

  @override
  MesaRecord rebuild(void Function(MesaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MesaRecordBuilder toBuilder() => new MesaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MesaRecord &&
        descMesa == other.descMesa &&
        idRestaurante == other.idRestaurante &&
        listaOrdenMesa == other.listaOrdenMesa &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, descMesa.hashCode);
    _$hash = $jc(_$hash, idRestaurante.hashCode);
    _$hash = $jc(_$hash, listaOrdenMesa.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MesaRecord')
          ..add('descMesa', descMesa)
          ..add('idRestaurante', idRestaurante)
          ..add('listaOrdenMesa', listaOrdenMesa)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MesaRecordBuilder implements Builder<MesaRecord, MesaRecordBuilder> {
  _$MesaRecord? _$v;

  String? _descMesa;
  String? get descMesa => _$this._descMesa;
  set descMesa(String? descMesa) => _$this._descMesa = descMesa;

  DocumentReference<Object?>? _idRestaurante;
  DocumentReference<Object?>? get idRestaurante => _$this._idRestaurante;
  set idRestaurante(DocumentReference<Object?>? idRestaurante) =>
      _$this._idRestaurante = idRestaurante;

  ListBuilder<DocumentReference<Object?>>? _listaOrdenMesa;
  ListBuilder<DocumentReference<Object?>> get listaOrdenMesa =>
      _$this._listaOrdenMesa ??= new ListBuilder<DocumentReference<Object?>>();
  set listaOrdenMesa(ListBuilder<DocumentReference<Object?>>? listaOrdenMesa) =>
      _$this._listaOrdenMesa = listaOrdenMesa;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MesaRecordBuilder() {
    MesaRecord._initializeBuilder(this);
  }

  MesaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _descMesa = $v.descMesa;
      _idRestaurante = $v.idRestaurante;
      _listaOrdenMesa = $v.listaOrdenMesa?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MesaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MesaRecord;
  }

  @override
  void update(void Function(MesaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MesaRecord build() => _build();

  _$MesaRecord _build() {
    _$MesaRecord _$result;
    try {
      _$result = _$v ??
          new _$MesaRecord._(
              descMesa: descMesa,
              idRestaurante: idRestaurante,
              listaOrdenMesa: _listaOrdenMesa?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listaOrdenMesa';
        _listaOrdenMesa?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MesaRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
