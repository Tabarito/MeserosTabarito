import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            context.pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: FlutterFlowTheme.of(context).secondaryColor,
            size: 20,
          ),
        ),
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 0),
          child: Text(
            'Menú principal',
            style: FlutterFlowTheme.of(context).title2.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).secondaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
            child: Container(
              width: 80,
              height: 80,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/images/pexels-italo-melo-2379005.jpg',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ],
        centerTitle: true,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  'assets/images/Logo_en_gris_Tipo_Lavishly.png',
                  width: 160,
                  height: 105,
                  fit: BoxFit.scaleDown,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(60, 40, 60, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('BtnMeseros pressed ...');
                    },
                    text: 'Administradores',
                    icon: Icon(
                      Icons.admin_panel_settings_outlined,
                      size: 15,
                    ),
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 60,
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      textStyle: FlutterFlowTheme.of(context)
                          .subtitle2
                          .override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                      elevation: 5,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(60, 20, 60, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('BtnComida pressed ...');
                    },
                    text: 'Comidas',
                    icon: Icon(
                      Icons.fastfood_sharp,
                      size: 15,
                    ),
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 60,
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      textStyle: FlutterFlowTheme.of(context)
                          .subtitle2
                          .override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                      elevation: 5,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(60, 20, 60, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('BtnMeseros pressed ...');
                    },
                    text: 'Meseros',
                    icon: Icon(
                      Icons.people_alt,
                      size: 15,
                    ),
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 60,
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      textStyle: FlutterFlowTheme.of(context)
                          .subtitle2
                          .override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                      elevation: 5,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 80, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('Login');
                    },
                    text: 'Cerrar sesión',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: FlutterFlowTheme.of(context).tertiaryColor,
                      textStyle: FlutterFlowTheme.of(context)
                          .subtitle2
                          .override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontWeight: FontWeight.normal,
                          ),
                      elevation: 5,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
