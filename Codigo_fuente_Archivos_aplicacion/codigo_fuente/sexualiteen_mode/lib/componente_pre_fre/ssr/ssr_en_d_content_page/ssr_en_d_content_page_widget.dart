import '/auth/firebase_auth/auth_util.dart';
import '/componentes/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ssr_en_d_content_page_model.dart';
export 'ssr_en_d_content_page_model.dart';

class SsrEnDContentPageWidget extends StatefulWidget {
  const SsrEnDContentPageWidget({
    super.key,
    required this.tittleSub,
    required this.nameSubtitulo,
  });

  final DocumentReference? tittleSub;
  final String? nameSubtitulo;

  @override
  State<SsrEnDContentPageWidget> createState() =>
      _SsrEnDContentPageWidgetState();
}

class _SsrEnDContentPageWidgetState extends State<SsrEnDContentPageWidget>
    with TickerProviderStateMixin {
  late SsrEnDContentPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SsrEnDContentPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ssrEnDContentPage'});
    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 80.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 150.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(-160.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnActionTriggerAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 50.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 2700.0.ms,
            begin: Offset(360.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnActionTriggerAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 50.0),
            end: Offset(0.0, 50.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        applyInitialState: true,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1000.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, -360.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFFFCFCFC),
          appBar: AppBar(
            backgroundColor: Color(0xFFF20289),
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 8.0, 0.0, 0.0),
                            child: FlutterFlowIconButton(
                              borderColor: Color(0x00FFFFFF),
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 50.0,
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                size: 30.0,
                              ),
                              onPressed: () async {
                                logFirebaseEvent(
                                    'SSR_EN_D_CONTENT_arrow_back_rounded_ICN_');
                                logFirebaseEvent('IconButton_navigate_back');
                                context.safePop();
                              },
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  32.0, 0.0, 32.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  widget!.nameSubtitulo,
                                  'null',
                                ),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontSize: 22.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            toolbarHeight: 80.0,
            elevation: 0.0,
          ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 650.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFFCFCFC),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.96, 0.15),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/obstetra.png',
                                  width: 100.0,
                                  height: 300.0,
                                  fit: BoxFit.contain,
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['imageOnPageLoadAnimation']!),
                            ),
                            Opacity(
                              opacity: FFAppState().btnENDcarta == true
                                  ? 0.20
                                  : 0.60,
                              child: Align(
                                alignment: AlignmentDirectional(1.34, 0.81),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/ENFERMERA_EN_OBSTETRICIA-remove.png',
                                    width: 150.0,
                                    height: 288.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            if (FFAppState().btnENDcarta == true)
                              Align(
                                alignment: AlignmentDirectional(0.63, -0.32),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 8.0),
                                  child: Container(
                                    width: 295.0,
                                    height: 450.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xCEFFFFFF),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(20.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .tertiary,
                                        width: 6.0,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        if (FFAppState().estadoActual == 0)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'xcexp051' /* Valeria tenía 12 años y estaba... */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 1)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'gqn89ia6' /* aparte de los cambios físicos ... */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 2)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'wl41k8mo' /* Un día de camino al colegio Di... */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 3)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'tcodlaf8' /* Diego: Valeria me gustas… */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 4)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '0yt5fjqk' /* Valeria no sabía que decir ent... */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 5)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '0cx55fmm' /* Diego: ¿Valeria quieres ser mi... */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 6)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '6obewmkw' /* Valeria: (muy emocionada) Sí.  */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 7)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '5l3xyshg' /* Y es ahí cuando comenzó una bo... */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 8)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'c3v95yvw' /* Amigos de Diego: ¿ya tuviste r... */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 9)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'yfqviy3q' /* Diego: No */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 10)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'r2ig8znh' /* Amigos de Diego: jajajjaja ten... */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 11)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '7mny5cfo' /* Diego: (avergonzado se fue a c... */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 12)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '28n8mljp' /* Unos días después y Diego pens... */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 13)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '6ya096vn' /* Valeria al encontrarse con sus... */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 14)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'ewt8opep' /* Un día que Diego invito a su c... */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 15)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'gxyxa4fp' /* Valeria: no se tengo miedo */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 16)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'o9autszq' /* Diego: ¿de que tienes miedo? */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 17)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '3bn0nqsm' /* Valeria: de quedar embarazada  */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 18)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'm7hwb9oy' /* Diego: a mi me contaron que pr... */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 19)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '0f9izp6g' /* Valeria: esta bien 
Diego y Va... */
                                                  ,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 20)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  's8d6ui2w' /* Paso un mes mas Valeria ya no ... */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 21)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '7g7tvi5d' /* El medico encargado les da la ... */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 22)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    13.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'o1sx9cj6' /* •	 Dejaron el colegio.
•	 Sufr... */
                                                  ,
                                                ),
                                                textAlign: TextAlign.start,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 23)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    13.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '8et71qhn' /* Te tengo algunas preguntas */,
                                                ),
                                                textAlign: TextAlign.start,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 23)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    13.0, 4.0, 4.0, 4.0),
                                            child: AuthUserStreamWidget(
                                              builder: (context) =>
                                                  SelectionArea(
                                                      child:
                                                          AnimatedDefaultTextStyle(
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Readex Pro',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      fontSize: 19.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                duration:
                                                    Duration(milliseconds: 600),
                                                curve: Curves.easeIn,
                                                child: Text(
                                                  currentUserDisplayName,
                                                  textAlign: TextAlign.start,
                                                  maxLines: 27,
                                                ),
                                              )),
                                            ),
                                          ),
                                        if (FFAppState().estadoActual == 24)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    13.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'sngigour' /* ¿Qué hubieras hecho en el luga... */,
                                                ),
                                                textAlign: TextAlign.start,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 25)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    13.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  '52auialv' /* ¿Qué le dirías ahora a Diego o... */,
                                                ),
                                                textAlign: TextAlign.start,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                        if (FFAppState().estadoActual == 26)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    13.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    fontSize: 19.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'uyg0tizp' /* ¿Te identificas con esta histo... */,
                                                ),
                                                textAlign: TextAlign.start,
                                                maxLines: 27,
                                              ),
                                            )),
                                          ),
                                      ],
                                    ),
                                  )
                                      .animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation2']!)
                                      .animateOnActionTrigger(
                                        animationsMap[
                                            'containerOnActionTriggerAnimation1']!,
                                      ),
                                ),
                              ),
                            if (FFAppState().btnENDcarta == false)
                              Align(
                                alignment: AlignmentDirectional(0.26, 0.04),
                                child: Container(
                                  height: 120.0,
                                  decoration: BoxDecoration(),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'SSR_EN_D_CONTENT_Column_8o1ey9sp_ON_TAP');
                                      logFirebaseEvent(
                                          'Column_update_app_state');
                                      FFAppState().btnENDcarta = true;
                                      safeSetState(() {});
                                    },
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          Icons.mark_email_unread_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .tertiary,
                                          size:
                                              FFAppState().btnENDcarta == false
                                                  ? 80.0
                                                  : 100.0,
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '5dslcjyh' /* Leer */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation3']!),
                              ),
                            if (FFAppState().btnENDcarta == false)
                              Align(
                                alignment: AlignmentDirectional(1.08, -0.7),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 8.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.7,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.15,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(20.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      border: Border.all(
                                        color: Color(0xFFF20289),
                                        width: 4.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 5.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 4.0, 4.0, 4.0),
                                                child: SelectionArea(
                                                    child:
                                                        AnimatedDefaultTextStyle(
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                  duration: Duration(
                                                      milliseconds: 600),
                                                  curve: Curves.easeIn,
                                                  child: Text(
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                      '7e469nsj' /* Hola */,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                    maxLines: 6,
                                                  ),
                                                )),
                                              ),
                                              Flexible(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          4.0, 4.0, 4.0, 4.0),
                                                  child: AuthUserStreamWidget(
                                                    builder: (context) =>
                                                        SelectionArea(
                                                            child:
                                                                AnimatedDefaultTextStyle(
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Readex Pro',
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                      duration: Duration(
                                                          milliseconds: 600),
                                                      curve: Curves.easeIn,
                                                      child: Text(
                                                        currentUserDisplayName,
                                                        textAlign:
                                                            TextAlign.center,
                                                        maxLines: 6,
                                                      ),
                                                    )),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 4.0, 4.0, 4.0),
                                            child: SelectionArea(
                                                child: AnimatedDefaultTextStyle(
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                              duration:
                                                  Duration(milliseconds: 600),
                                              curve: Curves.easeIn,
                                              child: Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'swjzyf87' /* Te invito a leer conmigo una h... */,
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 6,
                                              ),
                                            )),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                      .animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation4']!)
                                      .animateOnActionTrigger(
                                        animationsMap[
                                            'containerOnActionTriggerAnimation2']!,
                                      ),
                                ),
                              ),
                            if (FFAppState().btnENDcarta == true)
                              Align(
                                alignment: AlignmentDirectional(0.75, -0.64),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'SSR_EN_D_CONTENT_Icon_j4tvbhdt_ON_TAP');
                                    logFirebaseEvent('Icon_update_app_state');
                                    FFAppState().btnENDcarta = false;
                                    FFAppState().estadoActual = 0;
                                    safeSetState(() {});
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color:
                                        FlutterFlowTheme.of(context).tertiary,
                                    size: 30.0,
                                  ),
                                ),
                              ),
                            Align(
                              alignment: AlignmentDirectional(0.3, 0.6),
                              child: Container(
                                width: 200.0,
                                decoration: BoxDecoration(),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    if (FFAppState().estadoActual >= 1)
                                      FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'SSR_EN_D_CONTENT_ATRAS_BTN_ON_TAP');
                                          logFirebaseEvent(
                                              'Button_update_app_state');
                                          FFAppState().estadoActual =
                                              FFAppState().estadoActual + -1;
                                          safeSetState(() {});
                                          if (FFAppState().estadoActual == 0) {
                                            logFirebaseEvent(
                                                'Button_update_app_state');
                                            FFAppState().estadoActual = 0;
                                            safeSetState(() {});
                                          }
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          's8fpwj03' /* Atras */,
                                        ),
                                        options: FFButtonOptions(
                                          height: 26.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w800,
                                              ),
                                          elevation: 0.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 0.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    if ((FFAppState().estadoActual < 26) &&
                                        (FFAppState().btnENDcarta == true))
                                      FFButtonWidget(
                                        onPressed: () async {
                                          logFirebaseEvent(
                                              'SSR_EN_D_CONTENT_SIGUIENTE_BTN_ON_TAP');
                                          logFirebaseEvent(
                                              'Button_update_app_state');
                                          FFAppState().estadoActual =
                                              FFAppState().estadoActual + 1;
                                          safeSetState(() {});
                                          if (FFAppState().estadoActual > 26) {
                                            logFirebaseEvent(
                                                'Button_update_app_state');
                                            FFAppState().estadoActual = 0;
                                            safeSetState(() {});
                                          }
                                        },
                                        text:
                                            FFLocalizations.of(context).getText(
                                          'rw3cemwu' /* Siguiente */,
                                        ),
                                        options: FFButtonOptions(
                                          height: 26.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w800,
                                              ),
                                          elevation: 0.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 0.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ).animateOnPageLoad(
                        animationsMap['containerOnPageLoadAnimation1']!),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  wrapWithModel(
                    model: _model.navBarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: NavBarWidget(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
