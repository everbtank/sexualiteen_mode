import '/componentes/nav_bar/nav_bar_widget.dart';
import '/event_s_auto/event_consejos_autocui/event_consejos_autocui_widget.dart';
import '/event_s_auto/event_consejos_autocui2/event_consejos_autocui2_widget.dart';
import '/event_s_auto/event_consejos_autocui3/event_consejos_autocui3_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'autocuidado_widget.dart' show AutocuidadoWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AutocuidadoModel extends FlutterFlowModel<AutocuidadoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

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
