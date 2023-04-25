import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CompPagarOrdenModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TxtNombreCliente widget.
  TextEditingController? txtNombreClienteController;
  String? Function(BuildContext, String?)? txtNombreClienteControllerValidator;
  // State field(s) for TxtMesa widget.
  TextEditingController? txtMesaController;
  String? Function(BuildContext, String?)? txtMesaControllerValidator;
  // State field(s) for TxtObservacion widget.
  TextEditingController? txtObservacionController;
  String? Function(BuildContext, String?)? txtObservacionControllerValidator;
  // State field(s) for TxtRestaurante widget.
  TextEditingController? txtRestauranteController;
  String? Function(BuildContext, String?)? txtRestauranteControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNombreClienteController?.dispose();
    txtMesaController?.dispose();
    txtObservacionController?.dispose();
    txtRestauranteController?.dispose();
  }

  /// Additional helper methods are added here.

}
