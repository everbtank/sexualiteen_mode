import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'create_account2_widget.dart' show CreateAccount2Widget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateAccount2Model extends FlutterFlowModel<CreateAccount2Widget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nameUpdate widget.
  FocusNode? nameUpdateFocusNode;
  TextEditingController? nameUpdateTextController;
  String? Function(BuildContext, String?)? nameUpdateTextControllerValidator;
  String? _nameUpdateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '5uqon144' /* Campo requerido */,
      );
    }

    return null;
  }

  // State field(s) for edadUpdate widget.
  FocusNode? edadUpdateFocusNode;
  TextEditingController? edadUpdateTextController;
  String? Function(BuildContext, String?)? edadUpdateTextControllerValidator;
  String? _edadUpdateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '5ijnn0fk' /* Campo requerido */,
      );
    }

    if (val.length < 1) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for generoUpdate widget.
  String? generoUpdateValue;
  FormFieldController<String>? generoUpdateValueController;

  @override
  void initState(BuildContext context) {
    nameUpdateTextControllerValidator = _nameUpdateTextControllerValidator;
    edadUpdateTextControllerValidator = _edadUpdateTextControllerValidator;
  }

  @override
  void dispose() {
    nameUpdateFocusNode?.dispose();
    nameUpdateTextController?.dispose();

    edadUpdateFocusNode?.dispose();
    edadUpdateTextController?.dispose();
  }
}
