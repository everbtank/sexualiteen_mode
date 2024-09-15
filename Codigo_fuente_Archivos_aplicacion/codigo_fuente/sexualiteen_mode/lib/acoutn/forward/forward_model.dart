import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'forward_widget.dart' show ForwardWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForwardModel extends FlutterFlowModel<ForwardWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for emailForward widget.
  FocusNode? emailForwardFocusNode;
  TextEditingController? emailForwardTextController;
  String? Function(BuildContext, String?)? emailForwardTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailForwardFocusNode?.dispose();
    emailForwardTextController?.dispose();
  }
}
