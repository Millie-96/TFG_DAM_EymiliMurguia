import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/index.dart';
import 'editar_evento_widget.dart' show EditarEventoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarEventoModel extends FlutterFlowModel<EditarEventoWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataU61 = false;
  FFUploadedFile uploadedLocalFile_uploadDataU61 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataU61 = '';

  // State field(s) for nombreNuevo widget.
  FocusNode? nombreNuevoFocusNode;
  TextEditingController? nombreNuevoTextController;
  String? Function(BuildContext, String?)? nombreNuevoTextControllerValidator;
  // State field(s) for ciudadNueva widget.
  FocusNode? ciudadNuevaFocusNode;
  TextEditingController? ciudadNuevaTextController;
  String? Function(BuildContext, String?)? ciudadNuevaTextControllerValidator;
  // State field(s) for descripcionNueva widget.
  FocusNode? descripcionNuevaFocusNode;
  TextEditingController? descripcionNuevaTextController;
  String? Function(BuildContext, String?)?
      descripcionNuevaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nombreNuevoFocusNode?.dispose();
    nombreNuevoTextController?.dispose();

    ciudadNuevaFocusNode?.dispose();
    ciudadNuevaTextController?.dispose();

    descripcionNuevaFocusNode?.dispose();
    descripcionNuevaTextController?.dispose();
  }
}
