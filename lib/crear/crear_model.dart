import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'crear_widget.dart' show CrearWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CrearModel extends FlutterFlowModel<CrearWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TfTitulo widget.
  FocusNode? tfTituloFocusNode;
  TextEditingController? tfTituloTextController;
  String? Function(BuildContext, String?)? tfTituloTextControllerValidator;
  // State field(s) for TfDescripcion widget.
  FocusNode? tfDescripcionFocusNode;
  TextEditingController? tfDescripcionTextController;
  String? Function(BuildContext, String?)? tfDescripcionTextControllerValidator;
  // State field(s) for TfCategoria widget.
  FocusNode? tfCategoriaFocusNode;
  TextEditingController? tfCategoriaTextController;
  String? Function(BuildContext, String?)? tfCategoriaTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for TfDireccion widget.
  FocusNode? tfDireccionFocusNode;
  TextEditingController? tfDireccionTextController;
  String? Function(BuildContext, String?)? tfDireccionTextControllerValidator;
  // State field(s) for TfCiudad widget.
  FocusNode? tfCiudadFocusNode;
  TextEditingController? tfCiudadTextController;
  String? Function(BuildContext, String?)? tfCiudadTextControllerValidator;
  // State field(s) for TfProvincia widget.
  FocusNode? tfProvinciaFocusNode;
  TextEditingController? tfProvinciaTextController;
  String? Function(BuildContext, String?)? tfProvinciaTextControllerValidator;
  bool isDataUploading_uploadDataEos = false;
  FFUploadedFile uploadedLocalFile_uploadDataEos =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataEos = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tfTituloFocusNode?.dispose();
    tfTituloTextController?.dispose();

    tfDescripcionFocusNode?.dispose();
    tfDescripcionTextController?.dispose();

    tfCategoriaFocusNode?.dispose();
    tfCategoriaTextController?.dispose();

    tfDireccionFocusNode?.dispose();
    tfDireccionTextController?.dispose();

    tfCiudadFocusNode?.dispose();
    tfCiudadTextController?.dispose();

    tfProvinciaFocusNode?.dispose();
    tfProvinciaTextController?.dispose();
  }
}
