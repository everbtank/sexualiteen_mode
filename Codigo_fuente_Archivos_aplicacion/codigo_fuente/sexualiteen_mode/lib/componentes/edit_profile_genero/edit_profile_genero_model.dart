import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_profile_genero_widget.dart' show EditProfileGeneroWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileGeneroModel extends FlutterFlowModel<EditProfileGeneroWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DroPEdit widget.
  String? droPEditValue;
  FormFieldController<String>? droPEditValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
