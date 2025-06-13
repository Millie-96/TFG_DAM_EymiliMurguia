import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'cuenta_widget.dart' show CuentaWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CuentaModel extends FlutterFlowModel<CuentaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for contrasena widget.
  FocusNode? contrasenaFocusNode;
  TextEditingController? contrasenaTextController;
  late bool contrasenaVisibility;
  String? Function(BuildContext, String?)? contrasenaTextControllerValidator;
  // State field(s) for confirmaContrasena widget.
  FocusNode? confirmaContrasenaFocusNode;
  TextEditingController? confirmaContrasenaTextController;
  late bool confirmaContrasenaVisibility;
  String? Function(BuildContext, String?)?
      confirmaContrasenaTextControllerValidator;
  // State field(s) for ciudad widget.
  FocusNode? ciudadFocusNode;
  TextEditingController? ciudadTextController;
  String? Function(BuildContext, String?)? ciudadTextControllerValidator;
  // State field(s) for describete widget.
  FocusNode? describeteFocusNode;
  TextEditingController? describeteTextController;
  String? Function(BuildContext, String?)? describeteTextControllerValidator;

  @override
  void initState(BuildContext context) {
    contrasenaVisibility = false;
    confirmaContrasenaVisibility = false;
  }

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    contrasenaFocusNode?.dispose();
    contrasenaTextController?.dispose();

    confirmaContrasenaFocusNode?.dispose();
    confirmaContrasenaTextController?.dispose();

    ciudadFocusNode?.dispose();
    ciudadTextController?.dispose();

    describeteFocusNode?.dispose();
    describeteTextController?.dispose();
  }
}
