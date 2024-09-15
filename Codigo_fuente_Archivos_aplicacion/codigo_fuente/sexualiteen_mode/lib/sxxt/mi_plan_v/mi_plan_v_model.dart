import '/component_event_m_p_v/event_consejos_m_p_v1/event_consejos_m_p_v1_widget.dart';
import '/component_event_m_p_v/event_consejos_m_p_v2/event_consejos_m_p_v2_widget.dart';
import '/component_event_m_p_v/event_consejos_m_p_v3/event_consejos_m_p_v3_widget.dart';
import '/componentes/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'mi_plan_v_widget.dart' show MiPlanVWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MiPlanVModel extends FlutterFlowModel<MiPlanVWidget> {
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
