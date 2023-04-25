// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imagenes_tabarito_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImagenesTabaritoRecord> _$imagenesTabaritoRecordSerializer =
    new _$ImagenesTabaritoRecordSerializer();

class _$ImagenesTabaritoRecordSerializer
    implements StructuredSerializer<ImagenesTabaritoRecord> {
  @override
  final Iterable<Type> types = const [
    ImagenesTabaritoRecord,
    _$ImagenesTabaritoRecord
  ];
  @override
  final String wireName = 'ImagenesTabaritoRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ImagenesTabaritoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.imagenes;
    if (value != null) {
      result
        ..add('Imagenes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.url;
    if (value != null) {
      result
        ..add('Url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.listaImagenes;
    if (value != null) {
      result
        ..add('ListaImagenes')
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
  ImagenesTabaritoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImagenesTabaritoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Imagenes':
          result.imagenes = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ListaImagenes':
          result.listaImagenes.replace(serializers.deserialize(value,
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

class _$ImagenesTabaritoRecord extends ImagenesTabaritoRecord {
  @override
  final DocumentReference<Object?>? imagenes;
  @override
  final String? url;
  @override
  final BuiltList<DocumentReference<Object?>>? listaImagenes;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ImagenesTabaritoRecord(
          [void Function(ImagenesTabaritoRecordBuilder)? updates]) =>
      (new ImagenesTabaritoRecordBuilder()..update(updates))._build();

  _$ImagenesTabaritoRecord._(
      {this.imagenes, this.url, this.listaImagenes, this.ffRef})
      : super._();

  @override
  ImagenesTabaritoRecord rebuild(
          void Function(ImagenesTabaritoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImagenesTabaritoRecordBuilder toBuilder() =>
      new ImagenesTabaritoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImagenesTabaritoRecord &&
        imagenes == other.imagenes &&
        url == other.url &&
        listaImagenes == other.listaImagenes &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, imagenes.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, listaImagenes.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ImagenesTabaritoRecord')
          ..add('imagenes', imagenes)
          ..add('url', url)
          ..add('listaImagenes', listaImagenes)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ImagenesTabaritoRecordBuilder
    implements Builder<ImagenesTabaritoRecord, ImagenesTabaritoRecordBuilder> {
  _$ImagenesTabaritoRecord? _$v;

  DocumentReference<Object?>? _imagenes;
  DocumentReference<Object?>? get imagenes => _$this._imagenes;
  set imagenes(DocumentReference<Object?>? imagenes) =>
      _$this._imagenes = imagenes;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  ListBuilder<DocumentReference<Object?>>? _listaImagenes;
  ListBuilder<DocumentReference<Object?>> get listaImagenes =>
      _$this._listaImagenes ??= new ListBuilder<DocumentReference<Object?>>();
  set listaImagenes(ListBuilder<DocumentReference<Object?>>? listaImagenes) =>
      _$this._listaImagenes = listaImagenes;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ImagenesTabaritoRecordBuilder() {
    ImagenesTabaritoRecord._initializeBuilder(this);
  }

  ImagenesTabaritoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imagenes = $v.imagenes;
      _url = $v.url;
      _listaImagenes = $v.listaImagenes?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImagenesTabaritoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImagenesTabaritoRecord;
  }

  @override
  void update(void Function(ImagenesTabaritoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ImagenesTabaritoRecord build() => _build();

  _$ImagenesTabaritoRecord _build() {
    _$ImagenesTabaritoRecord _$result;
    try {
      _$result = _$v ??
          new _$ImagenesTabaritoRecord._(
              imagenes: imagenes,
              url: url,
              listaImagenes: _listaImagenes?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'listaImagenes';
        _listaImagenes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ImagenesTabaritoRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
