import '/componentes/nav_bar/nav_bar_widget.dart';
import '/event_violencia/event_violenci1/event_violenci1_widget.dart';
import '/event_violencia/event_violenci2/event_violenci2_widget.dart';
import '/event_violencia/event_violenci3/event_violenci3_widget.dart';
import '/event_violencia/event_violenci4/event_violenci4_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'violencia_page_widget.dart' show ViolenciaPageWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ViolenciaPageModel extends FlutterFlowModel<ViolenciaPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    navBarModel.dispose();
  }
}
