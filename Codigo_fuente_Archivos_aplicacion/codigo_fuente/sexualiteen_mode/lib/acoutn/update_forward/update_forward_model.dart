import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'update_forward_widget.dart' show UpdateForwardWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UpdateForwardModel extends FlutterFlowModel<UpdateForwardWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for updatepassword widget.
  FocusNode? updatepasswordFocusNode;
  TextEditingController? updatepasswordTextController;
  late bool updatepasswordVisibility;
  String? Function(BuildContext, String?)?
      updatepasswordTextControllerValidator;
  // State field(s) for updatepasswordConfrimar widget.
  FocusNode? updatepasswordConfrimarFocusNode;
  TextEditingController? updatepasswordConfrimarTextController;
  late bool updatepasswordConfrimarVisibility;
  String? Function(BuildContext, String?)?
      updatepasswordConfrimarTextControllerValidator;

  @override
  void initState(BuildContext context) {
    updatepasswordVisibility = false;
    updatepasswordConfrimarVisibility = false;
  }

  @override
  void dispose() {
    updatepasswordFocusNode?.dispose();
    updatepasswordTextController?.dispose();

    updatepasswordConfrimarFocusNode?.dispose();
    updatepasswordConfrimarTextController?.dispose();
  }
}
