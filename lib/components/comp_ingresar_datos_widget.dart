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
import 'comp_ingresar_datos_model.dart';
export 'comp_ingresar_datos_model.dart';

class CompIngresarDatosWidget extends StatefulWidget {
  const CompIngresarDatosWidget({
    Key? key,
    this.preciofinal,
    this.listaproductos,
  }) : super(key: key);

  final double? preciofinal;
  final DocumentReference? listaproductos;

  @override
  _CompIngresarDatosWidgetState createState() =>
      _CompIngresarDatosWidgetState();
}

class _CompIngresarDatosWidgetState extends State<CompIngresarDatosWidget> {
  late CompIngresarDatosModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CompIngresarDatosModel());

    _model.txtNombreClienteController ??= TextEditingController();
    _model.txtObservacionController ??= TextEditingController();
    _model.txtRestauranteController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<MesaRecord>>(
      stream: queryMesaRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: SpinKitCubeGrid(
                color: FlutterFlowTheme.of(context).tertiary,
                size: 50.0,
              ),
            ),
          );
        }
        List<MesaRecord> containerMesaRecordList = snapshot.data!;
        return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                  child: TextFormField(
                    controller: _model.txtNombreClienteController,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: FFLocalizations.of(context).getText(
                        'd06pe9bq' /* Nombre cliente */,
                      ),
                      hintStyle: FlutterFlowTheme.of(context).bodySmall,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Outfit',
                          color: FlutterFlowTheme.of(context).secondary,
                        ),
                    validator: _model.txtNombreClienteControllerValidator
                        .asValidator(context),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                  child: FlutterFlowDropDown<String>(
                    controller: _model.dropDownValueController1 ??=
                        FormFieldController<String>(null),
                    options: containerMesaRecordList
                        .map((e) => e.descMesa)
                        .withoutNulls
                        .toList()
                        .toList(),
                    onChanged: (val) =>
                        setState(() => _model.dropDownValue1 = val),
                    width: 180.0,
                    height: 50.0,
                    searchHintTextStyle:
                        FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: '',
                              color: FlutterFlowTheme.of(context).secondaryText,
                            ),
                    textStyle: FlutterFlowTheme.of(context).bodyMedium,
                    hintText: FFLocalizations.of(context).getText(
                      'q8u7sba0' /* Mesa */,
                    ),
                    searchHintText: FFLocalizations.of(context).getText(
                      'o7o72qey' /* Buscar mesa */,
                    ),
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                    elevation: 2.0,
                    borderColor: Colors.transparent,
                    borderWidth: 0.0,
                    borderRadius: 0.0,
                    margin:
                        EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                    hidesUnderline: true,
                    isSearchable: false,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: TextFormField(
                      controller: _model.txtObservacionController,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: FFLocalizations.of(context).getText(
                          'n7kjmzg9' /* Observacion */,
                        ),
                        hintStyle: FlutterFlowTheme.of(context).bodySmall,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        errorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0x00000000),
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium,
                      textAlign: TextAlign.start,
                      maxLines: 10,
                      validator: _model.txtObservacionControllerValidator
                          .asValidator(context),
                    ),
                  ),
                ),
                StreamBuilder<List<RestauranteRecord>>(
                  stream: queryRestauranteRecord(),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: SpinKitCubeGrid(
                            color: FlutterFlowTheme.of(context).tertiary,
                            size: 50.0,
                          ),
                        ),
                      );
                    }
                    List<RestauranteRecord> dropDownRestauranteRecordList =
                        snapshot.data!;
                    return FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController2 ??=
                          FormFieldController<String>(null),
                      options: dropDownRestauranteRecordList
                          .map((e) => e.nombreRestaurante)
                          .withoutNulls
                          .toList()
                          .toList(),
                      onChanged: (val) =>
                          setState(() => _model.dropDownValue2 = val),
                      width: 180.0,
                      height: 50.0,
                      searchHintTextStyle: FlutterFlowTheme.of(context)
                          .bodyLarge
                          .override(
                            fontFamily: '',
                            color: FlutterFlowTheme.of(context).secondaryText,
                          ),
                      textStyle: FlutterFlowTheme.of(context).bodyMedium,
                      hintText: FFLocalizations.of(context).getText(
                        '7rqybje6' /* Restaurantes */,
                      ),
                      searchHintText: FFLocalizations.of(context).getText(
                        'm1nbbtgi' /* Buscar restaurante */,
                      ),
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      elevation: 2.0,
                      borderColor: Colors.transparent,
                      borderWidth: 0.0,
                      borderRadius: 0.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                      hidesUnderline: true,
                      isSearchable: false,
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: TextFormField(
                    controller: _model.txtRestauranteController,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: FFLocalizations.of(context).getText(
                        'lybja07b' /* Restaurantes */,
                      ),
                      hintStyle: FlutterFlowTheme.of(context).bodySmall,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1.0,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      filled: true,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                    validator: _model.txtRestauranteControllerValidator
                        .asValidator(context),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: StreamBuilder<List<RestauranteRecord>>(
                    stream: queryRestauranteRecord(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: SpinKitCubeGrid(
                              color: FlutterFlowTheme.of(context).tertiary,
                              size: 50.0,
                            ),
                          ),
                        );
                      }
                      List<RestauranteRecord> containerRestauranteRecordList =
                          snapshot.data!;
                      return Container(
                        width: 150.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              final ordenCreateData = createOrdenRecordData(
                                fechaOrden: getCurrentTimestamp,
                                cliente: _model.txtNombreClienteController.text,
                                idMesa: containerMesaRecordList.first.reference,
                                obsrvOrden:
                                    _model.txtObservacionController.text,
                                idRestaurante: containerRestauranteRecordList[
                                        int.parse(_model
                                            .txtRestauranteController.text)]
                                    .reference,
                                idMesero: currentUserReference,
                                estadoOrden: 'true',
                                montoTotal: widget.preciofinal,
                              );
                              await OrdenRecord.collection
                                  .doc()
                                  .set(ordenCreateData);
                            },
                            text: FFLocalizations.of(context).getText(
                              '45djugow' /* Completar Orden */,
                            ),
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 10.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).tertiary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
