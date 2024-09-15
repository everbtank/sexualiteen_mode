import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_profile_dni_widget.dart' show EditProfileDniWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileDniModel extends FlutterFlowModel<EditProfileDniWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for varDNIuser widget.
  FocusNode? varDNIuserFocusNode;
  TextEditingController? varDNIuserTextController;
  String? Function(BuildContext, String?)? varDNIuserTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    varDNIuserFocusNode?.dispose();
    varDNIuserTextController?.dispose();
  }
}
