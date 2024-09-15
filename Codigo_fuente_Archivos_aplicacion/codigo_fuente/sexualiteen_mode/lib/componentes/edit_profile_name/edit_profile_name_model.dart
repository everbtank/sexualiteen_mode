import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_profile_name_widget.dart' show EditProfileNameWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileNameModel extends FlutterFlowModel<EditProfileNameWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for varNameUser widget.
  FocusNode? varNameUserFocusNode;
  TextEditingController? varNameUserTextController;
  String? Function(BuildContext, String?)? varNameUserTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    varNameUserFocusNode?.dispose();
    varNameUserTextController?.dispose();
  }
}
