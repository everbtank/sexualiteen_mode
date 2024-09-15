import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ar_f_m_d_s_a_model.dart';
export 'ar_f_m_d_s_a_model.dart';

class ArFMDSAWidget extends StatefulWidget {
  const ArFMDSAWidget({super.key});

  @override
  State<ArFMDSAWidget> createState() => _ArFMDSAWidgetState();
}

class _ArFMDSAWidgetState extends State<ArFMDSAWidget>
    with TickerProviderStateMixin {
  late ArFMDSAModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ArFMDSAModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
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
      'containerOnActionTriggerAnimation13': AnimationInfo(
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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 0.0),
        child: Container(
          width: double.infinity,
          height: 620.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment(0.0, 0),
                  child: TabBar(
                    isScrollable: true,
                    labelColor: FlutterFlowTheme.of(context).primary,
                    unselectedLabelColor: FlutterFlowTheme.of(context).primary,
                    labelPadding:
                        EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 32.0, 0.0),
                    labelStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                              fontFamily: 'Outfit',
                              color: Colors.white,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                            ),
                    unselectedLabelStyle:
                        FlutterFlowTheme.of(context).titleMedium.override(
                              fontFamily: 'Outfit',
                              color: Colors.white,
                              fontSize: 18.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                    indicatorColor: Color(0xFA4B39EF),
                    indicatorWeight: 3.0,
                    tabs: [
                      Tab(
                        text: FFLocalizations.of(context).getText(
                          'o94bk1se' /* Masculino */,
                        ),
                      ),
                      Tab(
                        text: FFLocalizations.of(context).getText(
                          'tivu8ftu' /* Femenino */,
                        ),
                      ),
                    ],
                    controller: _model.tabBarController,
                    onTap: (i) async {
                      [() async {}, () async {}][i]();
                    },
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: _model.tabBarController,
                    children: [
                      Container(
                        decoration: BoxDecoration(),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.03, -0.2),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/rM.png',
                                  width: 297.0,
                                  height: 250.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            if (FFAppState().showbodyM1 == true)
                              Align(
                                alignment: AlignmentDirectional(1.15, -1.01),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 8.0),
                                  child: Container(
                                    width: 200.0,
                                    height: 140.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 3.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 4.0, 4.0, 4.0),
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
                                        duration: Duration(milliseconds: 600),
                                        curve: Curves.easeIn,
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '12ymav87' /* Conducto deferente Es la conti... */,
                                          ),
                                          textAlign: TextAlign.center,
                                          maxLines: 6,
                                        ),
                                      )),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation1']!,
                                  ),
                                ),
                              ),
                            if (FFAppState().showbodyM3 == true)
                              Align(
                                alignment: AlignmentDirectional(0.59, -0.94),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      6.0, 8.0, 6.0, 8.0),
                                  child: Container(
                                    width: 169.0,
                                    height: 150.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 3.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 4.0, 4.0, 4.0),
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
                                        duration: Duration(milliseconds: 600),
                                        curve: Curves.easeIn,
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '92v7wha4' /* Vesículas seminales: son dos. ... */,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation2']!,
                                  ),
                                ),
                              ),
                            if (FFAppState().showbodyM2 == true)
                              Align(
                                alignment: AlignmentDirectional(0.85, -0.84),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 8.0),
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 234.0,
                                      maxHeight: 120.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 3.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 4.0, 4.0, 4.0),
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
                                        duration: Duration(milliseconds: 600),
                                        curve: Curves.easeIn,
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'lkxdovxl' /* Próstata: Órgano formado de va... */,
                                          ),
                                          textAlign: TextAlign.center,
                                          maxLines: 6,
                                        ),
                                      )),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation3']!,
                                  ),
                                ),
                              ),
                            if (FFAppState().showbodyM4 == true)
                              Align(
                                alignment: AlignmentDirectional(0.81, 0.49),
                                child: Container(
                                  height: 130.0,
                                  constraints: BoxConstraints(
                                    maxWidth: 165.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0),
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0),
                                    ),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 3.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 4.0, 4.0, 4.0),
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
                                      duration: Duration(milliseconds: 600),
                                      curve: Curves.easeIn,
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'cyg4r1eu' /* Glándulas de COWPER: se locali... */,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                                  ),
                                ).animateOnActionTrigger(
                                  animationsMap[
                                      'containerOnActionTriggerAnimation4']!,
                                ),
                              ),
                            Align(
                              alignment: AlignmentDirectional(-0.49, 0.15),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'AR_F_M_D_S_A_Container_o5unpjnf_ON_TAP');
                                  logFirebaseEvent(
                                      'Container_update_app_state');
                                  FFAppState().showbodyM1 = false;
                                  FFAppState().showbodyM2 = false;
                                  FFAppState().showbodyM3 = false;
                                  FFAppState().showbodyM4 = false;
                                  FFAppState().showbodyM5 = false;
                                  FFAppState().showbodyM6 = true;
                                  FFAppState().showbodyM7 = false;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x004B39EF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.0,
                                        color: Color(0xFFD1CCFF),
                                        offset: Offset(
                                          0.0,
                                          5.0,
                                        ),
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.3, 0.04),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'AR_F_M_D_S_A_Container_nnxyutmc_ON_TAP');
                                  logFirebaseEvent(
                                      'Container_update_app_state');
                                  FFAppState().showbodyM1 = false;
                                  FFAppState().showbodyM2 = false;
                                  FFAppState().showbodyM3 = false;
                                  FFAppState().showbodyM4 = false;
                                  FFAppState().showbodyM5 = true;
                                  FFAppState().showbodyM6 = false;
                                  FFAppState().showbodyM7 = false;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x004B39EF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.0,
                                        color: Color(0xFFD1CCFF),
                                        offset: Offset(
                                          0.0,
                                          5.0,
                                        ),
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.38, -0.48),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'AR_F_M_D_S_A_Container_vjz5ixxx_ON_TAP');
                                  logFirebaseEvent(
                                      'Container_update_app_state');
                                  FFAppState().showbodyM1 = true;
                                  FFAppState().showbodyM2 = false;
                                  FFAppState().showbodyM3 = false;
                                  FFAppState().showbodyM4 = false;
                                  FFAppState().showbodyM5 = false;
                                  FFAppState().showbodyM6 = false;
                                  FFAppState().showbodyM7 = false;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x004B39EF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.0,
                                        color: Color(0xFFD1CCFF),
                                        offset: Offset(
                                          0.0,
                                          5.0,
                                        ),
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.02, -0.25),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'AR_F_M_D_S_A_Container_wv4smu8r_ON_TAP');
                                  logFirebaseEvent(
                                      'Container_update_app_state');
                                  FFAppState().showbodyM1 = false;
                                  FFAppState().showbodyM2 = true;
                                  FFAppState().showbodyM3 = false;
                                  FFAppState().showbodyM4 = false;
                                  FFAppState().showbodyM5 = false;
                                  FFAppState().showbodyM6 = false;
                                  FFAppState().showbodyM7 = false;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x004B39EF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.0,
                                        color: Color(0xFFD1CCFF),
                                        offset: Offset(
                                          0.0,
                                          5.0,
                                        ),
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.06, -0.17),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'AR_F_M_D_S_A_Container_jenw97l7_ON_TAP');
                                  logFirebaseEvent(
                                      'Container_update_app_state');
                                  FFAppState().showbodyM1 = false;
                                  FFAppState().showbodyM2 = false;
                                  FFAppState().showbodyM3 = true;
                                  FFAppState().showbodyM4 = false;
                                  FFAppState().showbodyM5 = false;
                                  FFAppState().showbodyM6 = false;
                                  FFAppState().showbodyM7 = false;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x004B39EF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.0,
                                        color: Color(0xFFD1CCFF),
                                        offset: Offset(
                                          0.0,
                                          5.0,
                                        ),
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.78, -0.05),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'AR_F_M_D_S_A_Container_qjmqj4n4_ON_TAP');
                                  logFirebaseEvent(
                                      'Container_update_app_state');
                                  FFAppState().showbodyM1 = false;
                                  FFAppState().showbodyM2 = false;
                                  FFAppState().showbodyM3 = false;
                                  FFAppState().showbodyM4 = false;
                                  FFAppState().showbodyM5 = false;
                                  FFAppState().showbodyM6 = false;
                                  FFAppState().showbodyM7 = true;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x004B39EF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.0,
                                        color: Color(0xFFD1CCFF),
                                        offset: Offset(
                                          0.0,
                                          5.0,
                                        ),
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.09, -0.1),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'AR_F_M_D_S_A_Container_jswi6okk_ON_TAP');
                                  logFirebaseEvent(
                                      'Container_update_app_state');
                                  FFAppState().showbodyM1 = false;
                                  FFAppState().showbodyM2 = false;
                                  FFAppState().showbodyM3 = false;
                                  FFAppState().showbodyM4 = true;
                                  FFAppState().showbodyM5 = false;
                                  FFAppState().showbodyM6 = false;
                                  FFAppState().showbodyM7 = false;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x004B39EF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.0,
                                        color: Color(0xFFD1CCFF),
                                        offset: Offset(
                                          0.0,
                                          5.0,
                                        ),
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            if (FFAppState().showbodyM5 == true)
                              Align(
                                alignment: AlignmentDirectional(0.86, 0.73),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 8.0),
                                  child: Container(
                                    width: 195.0,
                                    height: 153.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 3.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 4.0, 4.0, 4.0),
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
                                        duration: Duration(milliseconds: 600),
                                        curve: Curves.easeIn,
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '4wtzaeo1' /* Epidídimo: Órgano en forma de ... */,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation5']!,
                                  ),
                                ),
                              ),
                            if (FFAppState().showbodyM6 == true)
                              Align(
                                alignment: AlignmentDirectional(1.17, 0.54),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 8.0),
                                  child: Container(
                                    width: 182.0,
                                    height: 90.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 3.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 4.0, 4.0, 4.0),
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
                                        duration: Duration(milliseconds: 600),
                                        curve: Curves.easeIn,
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            't3xo2roj' /* Testículos: Órganos que produc... */,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation6']!,
                                  ),
                                ),
                              ),
                            if (FFAppState().showbodyM7 == true)
                              Align(
                                alignment: AlignmentDirectional(1.17, 0.54),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 8.0),
                                  child: Container(
                                    width: 182.0,
                                    height: 107.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 3.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 4.0, 4.0, 4.0),
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
                                        duration: Duration(milliseconds: 600),
                                        curve: Curves.easeIn,
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'nh7y2oaw' /* URETRA: se  encarga de elimina... */,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation7']!,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.03, -0.2),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/ar.png',
                                  width: 192.0,
                                  height: 200.0,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            if (FFAppState().showbodyF1 == true)
                              Align(
                                alignment: AlignmentDirectional(-1.17, -0.84),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 8.0),
                                  child: Container(
                                    width: 195.0,
                                    height: 190.0,
                                    constraints: BoxConstraints(
                                      maxWidth: 160.0,
                                      maxHeight: 122.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      border: Border.all(
                                        color: Color(0xFFF20289),
                                        width: 3.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 4.0, 4.0, 4.0),
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
                                        duration: Duration(milliseconds: 600),
                                        curve: Curves.easeIn,
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'kkyzwaii' /* Trompas de Falopio: es como un... */,
                                          ),
                                          textAlign: TextAlign.center,
                                          maxLines: 6,
                                        ),
                                      )),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation8']!,
                                  ),
                                ),
                              ),
                            if (FFAppState().showbodyF3 == true)
                              Align(
                                alignment: AlignmentDirectional(-1.06, -0.23),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      6.0, 8.0, 6.0, 8.0),
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 130.0,
                                      maxHeight: 102.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      border: Border.all(
                                        color: Color(0xFFF20289),
                                        width: 3.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 4.0, 4.0, 4.0),
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
                                        duration: Duration(milliseconds: 600),
                                        curve: Curves.easeIn,
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'kjd5zb85' /* Ovario: Órganos que producen h... */,
                                          ),
                                          textAlign: TextAlign.center,
                                          maxLines: 6,
                                        ),
                                      )),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation9']!,
                                  ),
                                ),
                              ),
                            if (FFAppState().showbodyF2 == true)
                              Align(
                                alignment: AlignmentDirectional(0.19, -0.88),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 8.0),
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxWidth: 234.0,
                                      maxHeight: 120.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      border: Border.all(
                                        color: Color(0xFFF20289),
                                        width: 3.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 4.0, 4.0, 4.0),
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
                                        duration: Duration(milliseconds: 600),
                                        curve: Curves.easeIn,
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '06m9cuca' /* Útero o Matriz: Tiene una capa... */,
                                          ),
                                          textAlign: TextAlign.center,
                                          maxLines: 6,
                                        ),
                                      )),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation10']!,
                                  ),
                                ),
                              ),
                            if (FFAppState().showbodyF4 == true)
                              Align(
                                alignment: AlignmentDirectional(0.99, -0.16),
                                child: Container(
                                  height: 130.0,
                                  constraints: BoxConstraints(
                                    maxWidth: 132.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20.0),
                                      bottomRight: Radius.circular(20.0),
                                      topLeft: Radius.circular(20.0),
                                      topRight: Radius.circular(20.0),
                                    ),
                                    border: Border.all(
                                      color: Color(0xFFF20289),
                                      width: 3.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 4.0, 4.0, 4.0),
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
                                      duration: Duration(milliseconds: 600),
                                      curve: Curves.easeIn,
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'jb4tz3jd' /* Cervix o Cuello Uterino porció... */,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    )),
                                  ),
                                ).animateOnActionTrigger(
                                  animationsMap[
                                      'containerOnActionTriggerAnimation11']!,
                                ),
                              ),
                            Align(
                              alignment: AlignmentDirectional(0.27, -0.38),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'AR_F_M_D_S_A_Container_zerlg0mz_ON_TAP');
                                  logFirebaseEvent(
                                      'Container_update_app_state');
                                  FFAppState().showbodyF1 = true;
                                  FFAppState().showbodyF2 = false;
                                  FFAppState().showbodyF3 = false;
                                  FFAppState().showbodyF4 = false;
                                  FFAppState().showbodyF5 = false;
                                  FFAppState().showbodyF6 = false;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x004B39EF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.0,
                                        color: Color(0x60F60D90),
                                        offset: Offset(
                                          0.0,
                                          5.0,
                                        ),
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.01, 0.06),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'AR_F_M_D_S_A_Container_vh307hmh_ON_TAP');
                                  logFirebaseEvent(
                                      'Container_update_app_state');
                                  FFAppState().showbodyF1 = false;
                                  FFAppState().showbodyF2 = false;
                                  FFAppState().showbodyF3 = false;
                                  FFAppState().showbodyF4 = false;
                                  FFAppState().showbodyF5 = false;
                                  FFAppState().showbodyF6 = true;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x004B39EF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.0,
                                        color: Color(0x60F60D90),
                                        offset: Offset(
                                          0.0,
                                          5.0,
                                        ),
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.02, -0.04),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'AR_F_M_D_S_A_Container_i5j5me0h_ON_TAP');
                                  logFirebaseEvent(
                                      'Container_update_app_state');
                                  FFAppState().showbodyF1 = false;
                                  FFAppState().showbodyF2 = false;
                                  FFAppState().showbodyF3 = false;
                                  FFAppState().showbodyF4 = false;
                                  FFAppState().showbodyF5 = true;
                                  FFAppState().showbodyF6 = false;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x004B39EF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.0,
                                        color: Color(0x60F60D90),
                                        offset: Offset(
                                          0.0,
                                          5.0,
                                        ),
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.26, -0.38),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'AR_F_M_D_S_A_Container_7br34rqf_ON_TAP');
                                  logFirebaseEvent(
                                      'Container_update_app_state');
                                  FFAppState().showbodyF1 = true;
                                  FFAppState().showbodyF2 = false;
                                  FFAppState().showbodyF3 = false;
                                  FFAppState().showbodyF4 = false;
                                  FFAppState().showbodyF5 = false;
                                  FFAppState().showbodyF6 = false;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x004B39EF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.0,
                                        color: Color(0x60F60D90),
                                        offset: Offset(
                                          0.0,
                                          5.0,
                                        ),
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.02, -0.25),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'AR_F_M_D_S_A_Container_q38rluf5_ON_TAP');
                                  logFirebaseEvent(
                                      'Container_update_app_state');
                                  FFAppState().showbodyF1 = false;
                                  FFAppState().showbodyF2 = true;
                                  FFAppState().showbodyF3 = false;
                                  FFAppState().showbodyF4 = false;
                                  FFAppState().showbodyF5 = false;
                                  FFAppState().showbodyF6 = false;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x004B39EF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.0,
                                        color: Color(0x60F60D90),
                                        offset: Offset(
                                          0.0,
                                          5.0,
                                        ),
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.23, -0.21),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'AR_F_M_D_S_A_Container_b3w63zbb_ON_TAP');
                                  logFirebaseEvent(
                                      'Container_update_app_state');
                                  FFAppState().showbodyF1 = false;
                                  FFAppState().showbodyF2 = false;
                                  FFAppState().showbodyF3 = true;
                                  FFAppState().showbodyF4 = false;
                                  FFAppState().showbodyF5 = false;
                                  FFAppState().showbodyF6 = false;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x004B39EF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.0,
                                        color: Color(0x60F60D90),
                                        offset: Offset(
                                          0.0,
                                          5.0,
                                        ),
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.24, -0.21),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'AR_F_M_D_S_A_Container_tspijfyi_ON_TAP');
                                  logFirebaseEvent(
                                      'Container_update_app_state');
                                  FFAppState().showbodyF1 = false;
                                  FFAppState().showbodyF2 = false;
                                  FFAppState().showbodyF3 = true;
                                  FFAppState().showbodyF4 = false;
                                  FFAppState().showbodyF5 = false;
                                  FFAppState().showbodyF6 = false;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x004B39EF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.0,
                                        color: Color(0x60F60D90),
                                        offset: Offset(
                                          0.0,
                                          5.0,
                                        ),
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.01, -0.13),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'AR_F_M_D_S_A_Container_nfamnriu_ON_TAP');
                                  logFirebaseEvent(
                                      'Container_update_app_state');
                                  FFAppState().showbodyF1 = false;
                                  FFAppState().showbodyF2 = false;
                                  FFAppState().showbodyF3 = false;
                                  FFAppState().showbodyF4 = true;
                                  FFAppState().showbodyF5 = false;
                                  FFAppState().showbodyF6 = false;
                                  safeSetState(() {});
                                },
                                child: Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x004B39EF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.0,
                                        color: Color(0x60F60D90),
                                        offset: Offset(
                                          0.0,
                                          5.0,
                                        ),
                                      )
                                    ],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            ),
                            if (FFAppState().showbodyF5 == true)
                              Align(
                                alignment: AlignmentDirectional(-0.78, 0.81),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 8.0),
                                  child: Container(
                                    width: 195.0,
                                    height: 153.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      border: Border.all(
                                        color: Color(0xFFF20289),
                                        width: 3.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 4.0, 4.0, 4.0),
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
                                        duration: Duration(milliseconds: 600),
                                        curve: Curves.easeIn,
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '6saanief' /* Vagina: recepciona semen, por ... */,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation12']!,
                                  ),
                                ),
                              ),
                            if (FFAppState().showbodyF6 == true)
                              Align(
                                alignment: AlignmentDirectional(1.17, 0.54),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 8.0, 16.0, 8.0),
                                  child: Container(
                                    width: 182.0,
                                    height: 90.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(20.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(20.0),
                                      ),
                                      border: Border.all(
                                        color: Color(0xFFF20289),
                                        width: 3.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 4.0, 4.0, 4.0),
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
                                        duration: Duration(milliseconds: 600),
                                        curve: Curves.easeIn,
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            't9ngiig7' /* Glándulas de Bartolini: encarg... */,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      )),
                                    ),
                                  ).animateOnActionTrigger(
                                    animationsMap[
                                        'containerOnActionTriggerAnimation13']!,
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
        ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
      ),
    );
  }
}
