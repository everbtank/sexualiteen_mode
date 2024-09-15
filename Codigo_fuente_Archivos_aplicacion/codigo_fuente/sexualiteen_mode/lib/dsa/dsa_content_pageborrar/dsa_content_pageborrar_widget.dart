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
import 'dsa_content_pageborrar_model.dart';
export 'dsa_content_pageborrar_model.dart';

class DsaContentPageborrarWidget extends StatefulWidget {
  const DsaContentPageborrarWidget({
    super.key,
    required this.tittleSub,
    required this.nameSubtitulo,
  });

  final DocumentReference? tittleSub;
  final String? nameSubtitulo;

  @override
  State<DsaContentPageborrarWidget> createState() =>
      _DsaContentPageborrarWidgetState();
}

class _DsaContentPageborrarWidgetState extends State<DsaContentPageborrarWidget>
    with TickerProviderStateMixin {
  late DsaContentPageborrarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DsaContentPageborrarModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'dsaContentPageborrar'});
    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
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
      'containerOnActionTriggerAnimation3': AnimationInfo(
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
      'containerOnActionTriggerAnimation4': AnimationInfo(
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
      'containerOnActionTriggerAnimation5': AnimationInfo(
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
      'containerOnActionTriggerAnimation6': AnimationInfo(
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
      'containerOnActionTriggerAnimation7': AnimationInfo(
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
      'containerOnActionTriggerAnimation8': AnimationInfo(
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
      'containerOnActionTriggerAnimation9': AnimationInfo(
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
      'containerOnActionTriggerAnimation10': AnimationInfo(
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
      'containerOnActionTriggerAnimation11': AnimationInfo(
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
      'containerOnActionTriggerAnimation12': AnimationInfo(
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
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              title: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
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
                                    'DSA_CONTENT_PAGEBORRAR_arrow_back_rounde');
                                logFirebaseEvent('IconButton_navigate_back');
                                context.safePop();
                              },
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  32.0, 8.0, 32.0, 0.0),
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primary,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFCFCFC),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0.0),
                                        bottomRight: Radius.circular(0.0),
                                        topLeft: Radius.circular(30.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 8.0, 12.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        height: 620.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 12.0, 0.0, 0.0),
                                          child: Column(
                                            children: [
                                              Align(
                                                alignment: Alignment(0.0, 0),
                                                child: TabBar(
                                                  isScrollable: true,
                                                  labelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  unselectedLabelColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                  labelPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(32.0, 0.0,
                                                              32.0, 0.0),
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color: Colors.white,
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                  unselectedLabelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .override(
                                                            fontFamily:
                                                                'Outfit',
                                                            color: Colors.white,
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                  indicatorColor:
                                                      Color(0xFA4B39EF),
                                                  indicatorWeight: 3.0,
                                                  tabs: [
                                                    Tab(
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'pzh1akv6' /* Masculino */,
                                                      ),
                                                    ),
                                                    Tab(
                                                      text: FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        '9joumcgb' /* Femenino */,
                                                      ),
                                                    ),
                                                  ],
                                                  controller:
                                                      _model.tabBarController,
                                                  onTap: (i) async {
                                                    [
                                                      () async {},
                                                      () async {}
                                                    ][i]();
                                                  },
                                                ),
                                              ),
                                              Expanded(
                                                child: TabBarView(
                                                  controller:
                                                      _model.tabBarController,
                                                  children: [
                                                    Container(
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Stack(
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, -0.1),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/image_9-1.png',
                                                                width: 154.0,
                                                                height: 350.0,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          ),
                                                          if (FFAppState()
                                                                  .showbodyM1 ==
                                                              true)
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.17,
                                                                      -0.84),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        8.0,
                                                                        16.0,
                                                                        8.0),
                                                                child:
                                                                    Container(
                                                                  width: 195.0,
                                                                  height: 190.0,
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    maxWidth:
                                                                        157.0,
                                                                    maxHeight:
                                                                        115.0,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              20.0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              20.0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              20.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              20.0),
                                                                    ),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      width:
                                                                          3.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            4.0,
                                                                            4.0,
                                                                            4.0),
                                                                    child: SelectionArea(
                                                                        child: AnimatedDefaultTextStyle(
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              600),
                                                                      curve: Curves
                                                                          .easeIn,
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'omevaf02' /* Puedes llegar a tener acné, pe... */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            6,
                                                                      ),
                                                                    )),
                                                                  ),
                                                                ).animateOnActionTrigger(
                                                                  animationsMap[
                                                                      'containerOnActionTriggerAnimation1']!,
                                                                ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .showbodyM3 ==
                                                              true)
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.06,
                                                                      -0.23),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        8.0,
                                                                        16.0,
                                                                        8.0),
                                                                child:
                                                                    Container(
                                                                  width: 195.0,
                                                                  height: 190.0,
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    maxWidth:
                                                                        112.0,
                                                                    maxHeight:
                                                                        84.0,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              20.0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              20.0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              20.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              20.0),
                                                                    ),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      width:
                                                                          3.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            4.0,
                                                                            4.0,
                                                                            4.0),
                                                                    child: SelectionArea(
                                                                        child: AnimatedDefaultTextStyle(
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              600),
                                                                      curve: Curves
                                                                          .easeIn,
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'y26w62y7' /* Tus hombros comenzarán a poner... */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            6,
                                                                      ),
                                                                    )),
                                                                  ),
                                                                ).animateOnActionTrigger(
                                                                  animationsMap[
                                                                      'containerOnActionTriggerAnimation2']!,
                                                                ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .showbodyM2 ==
                                                              true)
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.94,
                                                                      -0.73),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        8.0,
                                                                        16.0,
                                                                        8.0),
                                                                child:
                                                                    Container(
                                                                  width: 195.0,
                                                                  height: 190.0,
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    maxWidth:
                                                                        122.0,
                                                                    maxHeight:
                                                                        105.0,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              20.0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              20.0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              20.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              20.0),
                                                                    ),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      width:
                                                                          3.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            4.0,
                                                                            4.0,
                                                                            4.0),
                                                                    child: SelectionArea(
                                                                        child: AnimatedDefaultTextStyle(
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              600),
                                                                      curve: Curves
                                                                          .easeIn,
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '9s90h8wk' /* Tu voz comenzará a cambiar y p... */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            6,
                                                                      ),
                                                                    )),
                                                                  ),
                                                                ).animateOnActionTrigger(
                                                                  animationsMap[
                                                                      'containerOnActionTriggerAnimation3']!,
                                                                ),
                                                              ),
                                                            ),
                                                          if (FFAppState()
                                                                  .showbodyM4 ==
                                                              true)
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.99,
                                                                      -0.16),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        8.0,
                                                                        16.0,
                                                                        8.0),
                                                                child:
                                                                    Container(
                                                                  width: 195.0,
                                                                  height: 190.0,
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    maxWidth:
                                                                        104.0,
                                                                    maxHeight:
                                                                        82.0,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              20.0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              20.0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              20.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              20.0),
                                                                    ),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      width:
                                                                          3.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            4.0,
                                                                            4.0,
                                                                            4.0),
                                                                    child: SelectionArea(
                                                                        child: AnimatedDefaultTextStyle(
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              600),
                                                                      curve: Curves
                                                                          .easeIn,
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '0k4m9tw1' /* Puedes comenzar a ver vellos e... */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            6,
                                                                      ),
                                                                    )),
                                                                  ),
                                                                ).animateOnActionTrigger(
                                                                  animationsMap[
                                                                      'containerOnActionTriggerAnimation4']!,
                                                                ),
                                                              ),
                                                            ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.02, 0.8),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          8.0,
                                                                          16.0,
                                                                          8.0),
                                                              child: Container(
                                                                width: 350.0,
                                                                height: 200.0,
                                                                constraints:
                                                                    BoxConstraints(
                                                                  maxWidth:
                                                                      180.0,
                                                                  maxHeight:
                                                                      100.0,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            20.0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            20.0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            20.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            20.0),
                                                                  ),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    width: 3.0,
                                                                  ),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          4.0,
                                                                          4.0,
                                                                          4.0,
                                                                          4.0),
                                                                  child:
                                                                      SelectionArea(
                                                                          child:
                                                                              AnimatedDefaultTextStyle(
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Readex Pro',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            600),
                                                                    curve: Curves
                                                                        .easeIn,
                                                                    child: Text(
                                                                      FFLocalizations.of(
                                                                              context)
                                                                          .getText(
                                                                        'trt5a9cd' /* ANATOMÌA DEL APARATO REPRODUCT... */,
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      maxLines:
                                                                          6,
                                                                    ),
                                                                  )),
                                                                ),
                                                              )
                                                                  .animateOnPageLoad(
                                                                      animationsMap[
                                                                          'containerOnPageLoadAnimation2']!)
                                                                  .animateOnActionTrigger(
                                                                    animationsMap[
                                                                        'containerOnActionTriggerAnimation5']!,
                                                                  ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.1, -0.41),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'DSA_CONTENT_PAGEBORRAR_Container_iao7qkf');
                                                                logFirebaseEvent(
                                                                    'Container_update_app_state');
                                                                FFAppState()
                                                                        .showbodyM1 =
                                                                    true;
                                                                FFAppState()
                                                                        .showbodyM2 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM3 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM4 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM5 =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x004B39EF),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          5.0,
                                                                      color: Color(
                                                                          0xFFD1CCFF),
                                                                      offset:
                                                                          Offset(
                                                                        0.0,
                                                                        5.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.02, 0.1),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'DSA_CONTENT_PAGEBORRAR_Container_gsru24x');
                                                                logFirebaseEvent(
                                                                    'Container_update_app_state');
                                                                FFAppState()
                                                                        .showbodyM1 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM2 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM3 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM4 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM5 =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x004B39EF),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          5.0,
                                                                      color: Color(
                                                                          0xFFD1CCFF),
                                                                      offset:
                                                                          Offset(
                                                                        0.0,
                                                                        5.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -0.11,
                                                                    -0.15),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'DSA_CONTENT_PAGEBORRAR_Container_g0anv17');
                                                                logFirebaseEvent(
                                                                    'Container_update_app_state');
                                                                FFAppState()
                                                                        .showbodyM1 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM2 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM3 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM4 =
                                                                    true;
                                                                FFAppState()
                                                                        .showbodyM5 =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x004B39EF),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          5.0,
                                                                      color: Color(
                                                                          0xFFD1CCFF),
                                                                      offset:
                                                                          Offset(
                                                                        0.0,
                                                                        5.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -0.07,
                                                                    -0.41),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'DSA_CONTENT_PAGEBORRAR_Container_pq1hzr8');
                                                                logFirebaseEvent(
                                                                    'Container_update_app_state');
                                                                FFAppState()
                                                                        .showbodyM1 =
                                                                    true;
                                                                FFAppState()
                                                                        .showbodyM2 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM3 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM4 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM5 =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x004B39EF),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          5.0,
                                                                      color: Color(
                                                                          0xFFD1CCFF),
                                                                      offset:
                                                                          Offset(
                                                                        0.0,
                                                                        5.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.01, -0.3),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'DSA_CONTENT_PAGEBORRAR_Container_24weseo');
                                                                logFirebaseEvent(
                                                                    'Container_update_app_state');
                                                                FFAppState()
                                                                        .showbodyM1 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM2 =
                                                                    true;
                                                                FFAppState()
                                                                        .showbodyM3 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM4 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM5 =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x004B39EF),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          5.0,
                                                                      color: Color(
                                                                          0xFFD1CCFF),
                                                                      offset:
                                                                          Offset(
                                                                        0.0,
                                                                        5.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -0.17,
                                                                    -0.27),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'DSA_CONTENT_PAGEBORRAR_Container_8q24fps');
                                                                logFirebaseEvent(
                                                                    'Container_update_app_state');
                                                                FFAppState()
                                                                        .showbodyM1 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM2 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM3 =
                                                                    true;
                                                                FFAppState()
                                                                        .showbodyM4 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM5 =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x004B39EF),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          5.0,
                                                                      color: Color(
                                                                          0xFFD1CCFF),
                                                                      offset:
                                                                          Offset(
                                                                        0.0,
                                                                        5.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.24,
                                                                    -0.28),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'DSA_CONTENT_PAGEBORRAR_Container_7shkdb3');
                                                                logFirebaseEvent(
                                                                    'Container_update_app_state');
                                                                FFAppState()
                                                                        .showbodyM1 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM2 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM3 =
                                                                    true;
                                                                FFAppState()
                                                                        .showbodyM4 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM5 =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x004B39EF),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          5.0,
                                                                      color: Color(
                                                                          0xFFD1CCFF),
                                                                      offset:
                                                                          Offset(
                                                                        0.0,
                                                                        5.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.14,
                                                                    -0.19),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                logFirebaseEvent(
                                                                    'DSA_CONTENT_PAGEBORRAR_Container_57o8xt2');
                                                                logFirebaseEvent(
                                                                    'Container_update_app_state');
                                                                FFAppState()
                                                                        .showbodyM1 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM2 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM3 =
                                                                    false;
                                                                FFAppState()
                                                                        .showbodyM4 =
                                                                    true;
                                                                FFAppState()
                                                                        .showbodyM5 =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Container(
                                                                width: 20.0,
                                                                height: 20.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x004B39EF),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      blurRadius:
                                                                          5.0,
                                                                      color: Color(
                                                                          0xFFD1CCFF),
                                                                      offset:
                                                                          Offset(
                                                                        0.0,
                                                                        5.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          if (FFAppState()
                                                                  .showbodyM5 ==
                                                              true)
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.92,
                                                                      0.39),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        8.0,
                                                                        16.0,
                                                                        8.0),
                                                                child:
                                                                    Container(
                                                                  width: 195.0,
                                                                  height: 190.0,
                                                                  constraints:
                                                                      BoxConstraints(
                                                                    maxWidth:
                                                                        104.0,
                                                                    maxHeight:
                                                                        82.0,
                                                                  ),
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              20.0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              20.0),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              20.0),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              20.0),
                                                                    ),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      width:
                                                                          3.0,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            4.0,
                                                                            4.0,
                                                                            4.0),
                                                                    child: SelectionArea(
                                                                        child: AnimatedDefaultTextStyle(
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Readex Pro',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              600),
                                                                      curve: Curves
                                                                          .easeIn,
                                                                      child:
                                                                          Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'mcdytzca' /* Puedes comenzar a ver vellos e... */,
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        maxLines:
                                                                            6,
                                                                      ),
                                                                    )),
                                                                  ),
                                                                ).animateOnActionTrigger(
                                                                  animationsMap[
                                                                      'containerOnActionTriggerAnimation6']!,
                                                                ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    Stack(
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: Image.asset(
                                                              'assets/images/image_9.png',
                                                              width: 154.0,
                                                              height: 350.0,
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Stack(
                                                            children: [
                                                              if (FFAppState()
                                                                      .showbodyF1 ==
                                                                  true)
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.17,
                                                                          -0.84),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            8.0,
                                                                            16.0,
                                                                            8.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          195.0,
                                                                      height:
                                                                          190.0,
                                                                      constraints:
                                                                          BoxConstraints(
                                                                        maxWidth:
                                                                            157.0,
                                                                        maxHeight:
                                                                            115.0,
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(20.0),
                                                                          bottomRight:
                                                                              Radius.circular(20.0),
                                                                          topLeft:
                                                                              Radius.circular(20.0),
                                                                          topRight:
                                                                              Radius.circular(20.0),
                                                                        ),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Color(0xB1FE288E),
                                                                          width:
                                                                              3.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            4.0,
                                                                            4.0,
                                                                            4.0),
                                                                        child: SelectionArea(
                                                                            child: AnimatedDefaultTextStyle(
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                          duration:
                                                                              Duration(milliseconds: 600),
                                                                          curve:
                                                                              Curves.easeIn,
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '9tve0h8t' /* Puedes llegar a tener acné, pe... */,
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            maxLines:
                                                                                6,
                                                                          ),
                                                                        )),
                                                                      ),
                                                                    ).animateOnActionTrigger(
                                                                      animationsMap[
                                                                          'containerOnActionTriggerAnimation7']!,
                                                                    ),
                                                                  ),
                                                                ),
                                                              if (FFAppState()
                                                                      .showbodyF4 ==
                                                                  true)
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.06,
                                                                          -0.23),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            8.0,
                                                                            16.0,
                                                                            8.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          195.0,
                                                                      height:
                                                                          190.0,
                                                                      constraints:
                                                                          BoxConstraints(
                                                                        maxWidth:
                                                                            112.0,
                                                                        maxHeight:
                                                                            84.0,
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(20.0),
                                                                          bottomRight:
                                                                              Radius.circular(20.0),
                                                                          topLeft:
                                                                              Radius.circular(20.0),
                                                                          topRight:
                                                                              Radius.circular(20.0),
                                                                        ),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Color(0xB1FE288E),
                                                                          width:
                                                                              3.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            4.0,
                                                                            4.0,
                                                                            4.0),
                                                                        child: SelectionArea(
                                                                            child: AnimatedDefaultTextStyle(
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                          duration:
                                                                              Duration(milliseconds: 600),
                                                                          curve:
                                                                              Curves.easeIn,
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              'ugabgdvf' /* Los senos te pueden comenzar a... */,
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            maxLines:
                                                                                6,
                                                                          ),
                                                                        )),
                                                                      ),
                                                                    ).animateOnActionTrigger(
                                                                      animationsMap[
                                                                          'containerOnActionTriggerAnimation8']!,
                                                                    ),
                                                                  ),
                                                                ),
                                                              if (FFAppState()
                                                                      .showbodyF2 ==
                                                                  true)
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.94,
                                                                          -0.73),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            8.0,
                                                                            16.0,
                                                                            8.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          195.0,
                                                                      height:
                                                                          190.0,
                                                                      constraints:
                                                                          BoxConstraints(
                                                                        maxWidth:
                                                                            122.0,
                                                                        maxHeight:
                                                                            105.0,
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(20.0),
                                                                          bottomRight:
                                                                              Radius.circular(20.0),
                                                                          topLeft:
                                                                              Radius.circular(20.0),
                                                                          topRight:
                                                                              Radius.circular(20.0),
                                                                        ),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Color(0xB1FE288E),
                                                                          width:
                                                                              3.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            4.0,
                                                                            4.0,
                                                                            4.0),
                                                                        child: SelectionArea(
                                                                            child: AnimatedDefaultTextStyle(
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                          duration:
                                                                              Duration(milliseconds: 600),
                                                                          curve:
                                                                              Curves.easeIn,
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '9qkmtlfk' /* Tu voz comenzará a cambiar y p... */,
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            maxLines:
                                                                                6,
                                                                          ),
                                                                        )),
                                                                      ),
                                                                    ).animateOnActionTrigger(
                                                                      animationsMap[
                                                                          'containerOnActionTriggerAnimation9']!,
                                                                    ),
                                                                  ),
                                                                ),
                                                              if (FFAppState()
                                                                      .showbodyF3 ==
                                                                  true)
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.99,
                                                                          -0.16),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            8.0,
                                                                            16.0,
                                                                            8.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          195.0,
                                                                      height:
                                                                          190.0,
                                                                      constraints:
                                                                          BoxConstraints(
                                                                        maxWidth:
                                                                            104.0,
                                                                        maxHeight:
                                                                            82.0,
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(20.0),
                                                                          bottomRight:
                                                                              Radius.circular(20.0),
                                                                          topLeft:
                                                                              Radius.circular(20.0),
                                                                          topRight:
                                                                              Radius.circular(20.0),
                                                                        ),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Color(0xB1FE288E),
                                                                          width:
                                                                              3.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            4.0,
                                                                            4.0,
                                                                            4.0),
                                                                        child: SelectionArea(
                                                                            child: AnimatedDefaultTextStyle(
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                          duration:
                                                                              Duration(milliseconds: 600),
                                                                          curve:
                                                                              Curves.easeIn,
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '78vgiu66' /* Puedes comenzar a ver vellos e... */,
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            maxLines:
                                                                                6,
                                                                          ),
                                                                        )),
                                                                      ),
                                                                    ).animateOnActionTrigger(
                                                                      animationsMap[
                                                                          'containerOnActionTriggerAnimation10']!,
                                                                    ),
                                                                  ),
                                                                ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.02,
                                                                        0.91),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          8.0,
                                                                          16.0,
                                                                          8.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        350.0,
                                                                    height:
                                                                        200.0,
                                                                    constraints:
                                                                        BoxConstraints(
                                                                      maxWidth:
                                                                          180.0,
                                                                      maxHeight:
                                                                          100.0,
                                                                    ),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0xB1FE288E),
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
                                                                        bottomLeft:
                                                                            Radius.circular(20.0),
                                                                        bottomRight:
                                                                            Radius.circular(20.0),
                                                                        topLeft:
                                                                            Radius.circular(20.0),
                                                                        topRight:
                                                                            Radius.circular(20.0),
                                                                      ),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0x00EE8B60),
                                                                        width:
                                                                            3.0,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          4.0,
                                                                          4.0,
                                                                          4.0,
                                                                          4.0),
                                                                      child: SelectionArea(
                                                                          child: AnimatedDefaultTextStyle(
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Readex Pro',
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                        duration:
                                                                            Duration(milliseconds: 600),
                                                                        curve: Curves
                                                                            .easeIn,
                                                                        child:
                                                                            Text(
                                                                          FFLocalizations.of(context)
                                                                              .getText(
                                                                            'ooknf9mu' /* ANATOMÌA DEL APARATO REPRODUCT... */,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          maxLines:
                                                                              6,
                                                                        ),
                                                                      )),
                                                                    ),
                                                                  ).animateOnActionTrigger(
                                                                    animationsMap[
                                                                        'containerOnActionTriggerAnimation11']!,
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.1,
                                                                        -0.35),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'DSA_CONTENT_PAGEBORRAR_Container_e4pm29m');
                                                                    logFirebaseEvent(
                                                                        'Container_update_app_state');
                                                                    FFAppState()
                                                                            .showbodyF1 =
                                                                        true;
                                                                    FFAppState()
                                                                            .showbodyF2 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF3 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF4 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF5 =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x0DFE288E),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              5.0,
                                                                          color:
                                                                              Color(0x42FE288E),
                                                                          offset:
                                                                              Offset(
                                                                            0.0,
                                                                            5.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.02,
                                                                        0.1),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'DSA_CONTENT_PAGEBORRAR_Container_pbfande');
                                                                    logFirebaseEvent(
                                                                        'Container_update_app_state');
                                                                    FFAppState()
                                                                            .showbodyF1 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF2 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF3 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF4 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF5 =
                                                                        true;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x0DFE288E),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              5.0,
                                                                          color:
                                                                              Color(0x42FE288E),
                                                                          offset:
                                                                              Offset(
                                                                            0.0,
                                                                            5.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -0.05,
                                                                        -0.08),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'DSA_CONTENT_PAGEBORRAR_Container_qoyx58f');
                                                                    logFirebaseEvent(
                                                                        'Container_update_app_state');
                                                                    FFAppState()
                                                                            .showbodyF1 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF2 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF3 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF4 =
                                                                        true;
                                                                    FFAppState()
                                                                            .showbodyF5 =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x0DFE288E),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              5.0,
                                                                          color:
                                                                              Color(0x42FE288E),
                                                                          offset:
                                                                              Offset(
                                                                            0.0,
                                                                            5.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -0.11,
                                                                        -0.35),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'DSA_CONTENT_PAGEBORRAR_Container_ybp00ba');
                                                                    logFirebaseEvent(
                                                                        'Container_update_app_state');
                                                                    FFAppState()
                                                                            .showbodyF1 =
                                                                        true;
                                                                    FFAppState()
                                                                            .showbodyF2 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF3 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF4 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF5 =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x0DFE288E),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              5.0,
                                                                          color:
                                                                              Color(0x42FE288E),
                                                                          offset:
                                                                              Offset(
                                                                            0.0,
                                                                            5.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.01,
                                                                        -0.24),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'DSA_CONTENT_PAGEBORRAR_Container_oe8ehr7');
                                                                    logFirebaseEvent(
                                                                        'Container_update_app_state');
                                                                    FFAppState()
                                                                            .showbodyF1 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF2 =
                                                                        true;
                                                                    FFAppState()
                                                                            .showbodyF3 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF4 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF5 =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x0DFE288E),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              5.0,
                                                                          color:
                                                                              Color(0x42FE288E),
                                                                          offset:
                                                                              Offset(
                                                                            0.0,
                                                                            5.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -0.17,
                                                                        -0.16),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'DSA_CONTENT_PAGEBORRAR_Container_okzhdev');
                                                                    logFirebaseEvent(
                                                                        'Container_update_app_state');
                                                                    FFAppState()
                                                                            .showbodyF1 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF2 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF3 =
                                                                        true;
                                                                    FFAppState()
                                                                            .showbodyF4 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF5 =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x0DFE288E),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              5.0,
                                                                          color:
                                                                              Color(0x42FE288E),
                                                                          offset:
                                                                              Offset(
                                                                            0.0,
                                                                            5.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.16,
                                                                        -0.16),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'DSA_CONTENT_PAGEBORRAR_Container_8m7t8gr');
                                                                    logFirebaseEvent(
                                                                        'Container_update_app_state');
                                                                    FFAppState()
                                                                            .showbodyF1 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF2 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF3 =
                                                                        true;
                                                                    FFAppState()
                                                                            .showbodyF4 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF5 =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x0DFE288E),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              5.0,
                                                                          color:
                                                                              Color(0x42FE288E),
                                                                          offset:
                                                                              Offset(
                                                                            0.0,
                                                                            5.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.07,
                                                                        -0.08),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    logFirebaseEvent(
                                                                        'DSA_CONTENT_PAGEBORRAR_Container_rw89klt');
                                                                    logFirebaseEvent(
                                                                        'Container_update_app_state');
                                                                    FFAppState()
                                                                            .showbodyF1 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF2 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF3 =
                                                                        false;
                                                                    FFAppState()
                                                                            .showbodyF4 =
                                                                        true;
                                                                    FFAppState()
                                                                            .showbodyF5 =
                                                                        false;
                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x0DFE288E),
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          blurRadius:
                                                                              5.0,
                                                                          color:
                                                                              Color(0x42FE288E),
                                                                          offset:
                                                                              Offset(
                                                                            0.0,
                                                                            5.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              if (FFAppState()
                                                                      .showbodyF5 ==
                                                                  true)
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.95,
                                                                          0.4),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            8.0,
                                                                            16.0,
                                                                            8.0),
                                                                    child:
                                                                        Container(
                                                                      width:
                                                                          195.0,
                                                                      height:
                                                                          190.0,
                                                                      constraints:
                                                                          BoxConstraints(
                                                                        maxWidth:
                                                                            104.0,
                                                                        maxHeight:
                                                                            82.0,
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(20.0),
                                                                          bottomRight:
                                                                              Radius.circular(20.0),
                                                                          topLeft:
                                                                              Radius.circular(20.0),
                                                                          topRight:
                                                                              Radius.circular(20.0),
                                                                        ),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              Color(0xB1FE288E),
                                                                          width:
                                                                              3.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            4.0,
                                                                            4.0,
                                                                            4.0,
                                                                            4.0),
                                                                        child: SelectionArea(
                                                                            child: AnimatedDefaultTextStyle(
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Readex Pro',
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                          duration:
                                                                              Duration(milliseconds: 600),
                                                                          curve:
                                                                              Curves.easeIn,
                                                                          child:
                                                                              Text(
                                                                            FFLocalizations.of(context).getText(
                                                                              '83ncwba2' /* Puedes comenzar a ver vellos e... */,
                                                                            ),
                                                                            textAlign:
                                                                                TextAlign.center,
                                                                            maxLines:
                                                                                6,
                                                                          ),
                                                                        )),
                                                                      ),
                                                                    ).animateOnActionTrigger(
                                                                      animationsMap[
                                                                          'containerOnActionTriggerAnimation12']!,
                                                                    ),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'containerOnPageLoadAnimation1']!),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
