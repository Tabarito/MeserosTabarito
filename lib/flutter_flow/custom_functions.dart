import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/firebase_auth/auth_util.dart';

String calcularPorcentaje(String cantEstrellas) {
  double total = 100 / 5 * double.parse(cantEstrellas);
  return total.toString() + "%";
}

double subSumarSubtotal(
  double valorSubtotal,
  double precio,
) {
  valorSubtotal = valorSubtotal + precio;
  return valorSubtotal;
}

double subRestarSubtotal(
  double valorSubtotal,
  double precio,
) {
  if (valorSubtotal > 0) {
    valorSubtotal = valorSubtotal - precio;
  }
  return valorSubtotal;
}

double totalEnListaProductos(List<double> subTotal) {
  double total = 0;
  for (double add in subTotal) {
    total += add;
  }
  return total;
}

double calcularSubTotal(
  double precio,
  int cantidad,
) {
  return precio * cantidad;
}

double totalEnListaCombo(List<double> subTotal) {
  double total = 0;
  for (double add in subTotal) {
    total += add;
  }
  return total;
}

double totalEnListaProductosSumarPrecioTotal(List<double> subTotal) {
  double total = 0;
  for (double add in subTotal) {
    total += add;
  }
  return total;
}

double mostrarPrecioFinal(
  double totalCompraProductos,
  double totalCompraCombos,
) {
  double total = totalCompraProductos + totalCompraCombos;
  return total;
}
