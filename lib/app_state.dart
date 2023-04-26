import 'package:flutter/material.dart';
import 'backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  double _montoFinalProductos = 0.0;
  double get montoFinalProductos => _montoFinalProductos;
  set montoFinalProductos(double _value) {
    _montoFinalProductos = _value;
  }

  double _montoFinalCombos = 0.0;
  double get montoFinalCombos => _montoFinalCombos;
  set montoFinalCombos(double _value) {
    _montoFinalCombos = _value;
  }

  dynamic _jsonMenuItems = jsonDecode(
      '[{\"title\":\"Mano de piedra\",\"route\":\"Productos\",\"imageUrl\":\"https://scontent.fsyq2-1.fna.fbcdn.net/v/t39.30808-6/337725598_6237061656383141_1158249993284386073_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=730e14&_nc_ohc=gJmErB4x7pwAX_uRMye&_nc_ht=scontent.fsyq2-1.fna&oh=00_AfC96vp1df4RTWV8YgZeJrF8O8po26sPe4xo8R9JxbOnFQ&oe=6448A17F\"},{\"title\":\"Ceviche de pescado\",\"route\":\"Productos\",\"imageUrl\":\"https://scontent.fsyq2-1.fna.fbcdn.net/v/t39.30808-6/337805557_781375493350213_3871530372810842465_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=730e14&_nc_ohc=Iz7KZyw-sxEAX_syAKd&_nc_ht=scontent.fsyq2-1.fna&oh=00_AfBJfoh_t3O7lau7ZmECwhsY07QhFz4jAKjil9sEp0OQFQ&oe=644762A2\"},{\"title\":\"Casado especial\",\"route\":\"Productos\",\"imageUrl\":\"https://scontent.fsyq2-1.fna.fbcdn.net/v/t39.30808-6/329158262_854558342500790_2489491521654493743_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=730e14&_nc_ohc=fd4xUS-Iiu4AX8clWpp&_nc_ht=scontent.fsyq2-1.fna&oh=00_AfBzhTcvlRJ9O3vF1XddJiAt6ipxkNSPGArG8bwmpmhSOQ&oe=64485EE3\"}]');
  dynamic get jsonMenuItems => _jsonMenuItems;
  set jsonMenuItems(dynamic _value) {
    _jsonMenuItems = _value;
  }

  List<dynamic> _ListaDeCompras = [];
  List<dynamic> get ListaDeCompras => _ListaDeCompras;
  set ListaDeCompras(List<dynamic> _value) {
    _ListaDeCompras = _value;
  }

  void addToListaDeCompras(dynamic _value) {
    _ListaDeCompras.add(_value);
  }

  void removeFromListaDeCompras(dynamic _value) {
    _ListaDeCompras.remove(_value);
  }

  void removeAtIndexFromListaDeCompras(int _index) {
    _ListaDeCompras.removeAt(_index);
  }

  String _image = '';
  String get image => _image;
  set image(String _value) {
    _image = _value;
  }

  List<dynamic> _ListaDeProductosCompados = [];
  List<dynamic> get ListaDeProductosCompados => _ListaDeProductosCompados;
  set ListaDeProductosCompados(List<dynamic> _value) {
    _ListaDeProductosCompados = _value;
  }

  void addToListaDeProductosCompados(dynamic _value) {
    _ListaDeProductosCompados.add(_value);
  }

  void removeFromListaDeProductosCompados(dynamic _value) {
    _ListaDeProductosCompados.remove(_value);
  }

  void removeAtIndexFromListaDeProductosCompados(int _index) {
    _ListaDeProductosCompados.removeAt(_index);
  }

  String _restaurante = '';
  String get restaurante => _restaurante;
  set restaurante(String _value) {
    _restaurante = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
