import '/auth/firebase_auth/auth_util.dart';
import '/componentes/btnenviado/btnenviado_widget.dart';
import '/componentes/verifi_compo/verifi_compo_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'acount_widget.dart' show AcountWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AcountModel extends FlutterFlowModel<AcountWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress_Create widget.
  FocusNode? emailAddressCreateFocusNode;
  TextEditingController? emailAddressCreateTextController;
  String? Function(BuildContext, String?)?
      emailAddressCreateTextControllerValidator;
  String? _emailAddressCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ssjarwin' /* Campo requerido */,
      );
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }
    if (val.length > 100) {
      return 'Maximum 100 characters allowed, currently ${val.length}.';
    }
    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'xtmq4yln' /* Correo no valido */,
      );
    }
    return null;
  }

  // State field(s) for password_Create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  String? _passwordCreateTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'boabqtpe' /* Campo requerido */,
      );
    }

    if (val.length < 8) {
      return FFLocalizations.of(context).getText(
        '5i3e2zar' /* Debe contener minimo 8 caracte... */,
      );
    }
    if (val.length > 100) {
      return 'Maximum 100 characters allowed, currently ${val.length}.';
    }
    if (!RegExp(
            '^(?=.*\\d)(?=.*[\\u0021-\\u002b\\u003c-\\u0040])(?=.*[A-Z])(?=.*[a-z])\\S{8,100}\$')
        .hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'lkg0bnbd' /* No cumple con los requisitos */,
      );
    }
    return null;
  }

  // State field(s) for passwor_CreateCon widget.
  FocusNode? passworCreateConFocusNode;
  TextEditingController? passworCreateConTextController;
  late bool passworCreateConVisibility;
  String? Function(BuildContext, String?)?
      passworCreateConTextControllerValidator;
  String? _passworCreateConTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '7u08ojfe' /* Las contraseñas no coinciden */,
      );
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }
    if (val.length > 100) {
      return 'Maximum 100 characters allowed, currently ${val.length}.';
    }
    if (!RegExp(
            '^(?=.*\\d)(?=.*[\\u0021-\\u002b\\u003c-\\u0040])(?=.*[A-Z])(?=.*[a-z])\\S{8,100}\$')
        .hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'i0cftaoi' /* No cumple con los requisitos d... */,
      );
    }
    return null;
  }

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  String? _emailAddressTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'l9836309' /* Campo requerido */,
      );
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }
    if (val.length > 100) {
      return 'Maximum 100 characters allowed, currently ${val.length}.';
    }
    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        '1anwigas' /* Correo no valido */,
      );
    }
    return null;
  }

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'fs8liguf' /* Campo requerido */,
      );
    }

    if (val.length < 8) {
      return FFLocalizations.of(context).getText(
        'rdcwx5qi' /* Debe contener minimo 8 caracte... */,
      );
    }
    if (val.length > 100) {
      return 'Maximum 100 characters allowed, currently ${val.length}.';
    }
    if (!RegExp(
            '^(?=.*\\d)(?=.*[\\u0021-\\u002b\\u003c-\\u0040])(?=.*[A-Z])(?=.*[a-z])\\S{8,100}\$')
        .hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'ho5xr06w' /* La contraseña no cumple con lo... */,
      );
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    emailAddressCreateTextControllerValidator =
        _emailAddressCreateTextControllerValidator;
    passwordCreateVisibility = false;
    passwordCreateTextControllerValidator =
        _passwordCreateTextControllerValidator;
    passworCreateConVisibility = false;
    passworCreateConTextControllerValidator =
        _passworCreateConTextControllerValidator;
    emailAddressTextControllerValidator = _emailAddressTextControllerValidator;
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailAddressCreateFocusNode?.dispose();
    emailAddressCreateTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();

    passworCreateConFocusNode?.dispose();
    passworCreateConTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
