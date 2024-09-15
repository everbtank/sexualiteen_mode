import '/componentes/nav_bar/nav_bar_widget.dart';
import '/event_m_isvalores/event_consejos_m_p_v_j1/event_consejos_m_p_v_j1_widget.dart';
import '/event_m_isvalores/event_consejos_m_p_v_j2/event_consejos_m_p_v_j2_widget.dart';
import '/event_m_isvalores/event_consejos_m_p_v_j3/event_consejos_m_p_v_j3_widget.dart';
import '/event_m_isvalores/event_consejos_m_p_v_j4/event_consejos_m_p_v_j4_widget.dart';
import '/event_m_isvalores/event_consejos_m_p_v_j5/event_consejos_m_p_v_j5_widget.dart';
import '/event_m_isvalores/event_consejos_m_p_v_j6/event_consejos_m_p_v_j6_widget.dart';
import '/event_m_isvalores/event_consejos_m_p_v_j7/event_consejos_m_p_v_j7_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'mv_page_widget.dart' show MvPageWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MvPageModel extends FlutterFlowModel<MvPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController1;
  int get tabBarCurrentIndex1 =>
      tabBarController1 != null ? tabBarController1!.index : 0;

  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  // State field(s) for TabBar widget.
  TabController? tabBarController2;
  int get tabBarCurrentIndex2 =>
      tabBarController2 != null ? tabBarController2!.index : 0;

  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    tabBarController1?.dispose();
    tabBarController2?.dispose();
    navBarModel.dispose();
  }
}
