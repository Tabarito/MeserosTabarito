import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CompIngresarDatosModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TxtNombreCliente widget.
  TextEditingController? txtNombreClienteController;
  String? Function(BuildContext, String?)? txtNombreClienteControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for TxtObservacion widget.
  TextEditingController? txtObservacionController;
  String? Function(BuildContext, String?)? txtObservacionControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for TxtRestaurante widget.
  TextEditingController? txtRestauranteController;
  String? Function(BuildContext, String?)? txtRestauranteControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtNombreClienteController?.dispose();
    txtObservacionController?.dispose();
    txtRestauranteController?.dispose();
  }

  /// Additional helper methods are added here.

}
