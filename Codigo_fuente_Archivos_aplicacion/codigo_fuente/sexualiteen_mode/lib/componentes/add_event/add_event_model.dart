import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'add_event_widget.dart' show AddEventWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddEventModel extends FlutterFlowModel<AddEventWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for varTitulo widget.
  FocusNode? varTituloFocusNode;
  TextEditingController? varTituloTextController;
  String? Function(BuildContext, String?)? varTituloTextControllerValidator;
  // State field(s) for DropDownTitulo widget.
  String? dropDownTituloValue;
  FormFieldController<String>? dropDownTituloValueController;
  // State field(s) for varDescripcion widget.
  FocusNode? varDescripcionFocusNode;
  TextEditingController? varDescripcionTextController;
  String? Function(BuildContext, String?)?
      varDescripcionTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    varTituloFocusNode?.dispose();
    varTituloTextController?.dispose();

    varDescripcionFocusNode?.dispose();
    varDescripcionTextController?.dispose();
  }
}
