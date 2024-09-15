import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_profile_pass_widget.dart' show EditProfilePassWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfilePassModel extends FlutterFlowModel<EditProfilePassWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for passEdit widget.
  FocusNode? passEditFocusNode;
  TextEditingController? passEditTextController;
  late bool passEditVisibility;
  String? Function(BuildContext, String?)? passEditTextControllerValidator;
  // State field(s) for passConEdit widget.
  FocusNode? passConEditFocusNode;
  TextEditingController? passConEditTextController;
  late bool passConEditVisibility;
  String? Function(BuildContext, String?)? passConEditTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passEditVisibility = false;
    passConEditVisibility = false;
  }

  @override
  void dispose() {
    passEditFocusNode?.dispose();
    passEditTextController?.dispose();

    passConEditFocusNode?.dispose();
    passConEditTextController?.dispose();
  }
}
