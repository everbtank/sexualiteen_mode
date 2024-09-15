import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_profile_edad_widget.dart' show EditProfileEdadWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileEdadModel extends FlutterFlowModel<EditProfileEdadWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for varEdad widget.
  FocusNode? varEdadFocusNode;
  TextEditingController? varEdadTextController;
  String? Function(BuildContext, String?)? varEdadTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    varEdadFocusNode?.dispose();
    varEdadTextController?.dispose();
  }
}
