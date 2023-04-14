import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProductosModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  SubProductosRecord? subProductosComida;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  SubProductosRecord? subProductosBebidas;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  SubCombosRecord? subCombosCombo;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  SubProductosRecord? subProductosFavoritos;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  SubCombosRecord? subCombosComboFavorito;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Additional helper methods are added here.

}
