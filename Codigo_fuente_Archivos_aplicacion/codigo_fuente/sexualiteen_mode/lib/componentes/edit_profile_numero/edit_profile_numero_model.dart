import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_profile_numero_widget.dart' show EditProfileNumeroWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileNumeroModel extends FlutterFlowModel<EditProfileNumeroWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for varTitulo widget.
  FocusNode? varTituloFocusNode;
  TextEditingController? varTituloTextController;
  String? Function(BuildContext, String?)? varTituloTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    varTituloFocusNode?.dispose();
    varTituloTextController?.dispose();
  }
}
