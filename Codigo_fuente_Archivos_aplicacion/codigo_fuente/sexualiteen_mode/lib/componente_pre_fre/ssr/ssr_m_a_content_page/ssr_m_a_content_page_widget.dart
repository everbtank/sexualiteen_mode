import '/componentes/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ssr_m_a_content_page_model.dart';
export 'ssr_m_a_content_page_model.dart';

class SsrMAContentPageWidget extends StatefulWidget {
  const SsrMAContentPageWidget({
    super.key,
    required this.nametitulo,
  });

  final String? nametitulo;

  @override
  State<SsrMAContentPageWidget> createState() => _SsrMAContentPageWidgetState();
}

class _SsrMAContentPageWidgetState extends State<SsrMAContentPageWidget> {
  late SsrMAContentPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SsrMAContentPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ssrMAContentPage'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        title: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 60.0,
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 30.0,
                    ),
                    onPressed: () async {
                      logFirebaseEvent(
                          'SSR_M_A_CONTENT_arrow_back_rounded_ICN_O');
                      logFirebaseEvent('IconButton_navigate_back');
                      context.safePop();
                    },
                  ),
                  Flexible(
                    child: Text(
                      valueOrDefault<String>(
                        widget!.nametitulo,
                        '....',
                      ).maybeHandleOverflow(
                        maxChars: 100,
                        replacement: '…',
                      ),
                      textAlign: TextAlign.start,
                      maxLines: 2,
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Outfit',
                            color: FlutterFlowTheme.of(context).primaryText,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  FaIcon(
                    FontAwesomeIcons.venusMars,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                ],
              ),
            ),
          ].divide(SizedBox(height: 4.0)),
        ),
        actions: [],
        centerTitle: false,
        toolbarHeight: 72.0,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Container(
                      width: 398.0,
                      height: 650.0,
                      decoration: BoxDecoration(
                        color: Color(0x1A4B39EF),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(50.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 12.0, 20.0, 12.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'SSR_M_A_CONTENT_Container_faecwa9p_ON_TA');
                                  logFirebaseEvent('Container_navigate_to');

                                  context.pushNamed(
                                    'MAanbsP',
                                    queryParameters: {
                                      'nameSubtitulo': serializeParam(
                                        'Métodos de Abstinencia Periódica',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Container(
                                  width: 100.0,
                                  height: 90.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 20.0,
                                        color: Color(0x27000000),
                                        offset: Offset(
                                          0.0,
                                          12.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 15.0, 0.0),
                                      child: Slidable(
                                        endActionPane: ActionPane(
                                          motion: const ScrollMotion(),
                                          extentRatio: 0.25,
                                          children: [
                                            SlidableAction(
                                              label: FFLocalizations.of(context)
                                                  .getText(
                                                'uh6v1ga5' /* Share */,
                                              ),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              icon: Icons.share,
                                              onPressed: (_) {
                                                print(
                                                    'SlidableActionWidget pressed ...');
                                              },
                                            ),
                                          ],
                                        ),
                                        child: ListTile(
                                          leading: Icon(
                                            Icons.nat,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          title: Text(
                                            FFLocalizations.of(context).getText(
                                              't86uczgo' /* Métodos de Abstinencia */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          trailing: Icon(
                                            Icons.arrow_forward_ios,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 20.0,
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          dense: false,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 15.0, 0.0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 12.0, 20.0, 12.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'SSR_M_A_CONTENT_Container_cbj3od0x_ON_TA');
                                  logFirebaseEvent('Container_navigate_to');

                                  context.pushNamed(
                                    'MAbarrera',
                                    queryParameters: {
                                      'nameSubtitulo': serializeParam(
                                        'Métodos de Barrera',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Container(
                                  width: 100.0,
                                  height: 90.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 20.0,
                                        color: Color(0x27000000),
                                        offset: Offset(
                                          0.0,
                                          12.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 15.0, 0.0),
                                      child: Slidable(
                                        endActionPane: ActionPane(
                                          motion: const ScrollMotion(),
                                          extentRatio: 0.25,
                                          children: [
                                            SlidableAction(
                                              label: FFLocalizations.of(context)
                                                  .getText(
                                                'sv2nq8q0' /* Share */,
                                              ),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              icon: Icons.share,
                                              onPressed: (_) {
                                                print(
                                                    'SlidableActionWidget pressed ...');
                                              },
                                            ),
                                          ],
                                        ),
                                        child: ListTile(
                                          leading: Icon(
                                            Icons.nat,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          title: Text(
                                            FFLocalizations.of(context).getText(
                                              'rcshy1w8' /* Método de Barrera */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          trailing: Icon(
                                            Icons.arrow_forward_ios,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 20.0,
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          dense: false,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 15.0, 0.0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 12.0, 20.0, 12.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'SSR_M_A_CONTENT_Container_sb5hu3xw_ON_TA');
                                  logFirebaseEvent('Container_navigate_to');

                                  context.pushNamed(
                                    'MAlistAntiHormo',
                                    queryParameters: {
                                      'nametituloAntiHormo': serializeParam(
                                        'Anticonceptivos Hormonales',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Container(
                                  width: 100.0,
                                  height: 90.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 20.0,
                                        color: Color(0x27000000),
                                        offset: Offset(
                                          0.0,
                                          12.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 15.0, 0.0),
                                      child: Slidable(
                                        endActionPane: ActionPane(
                                          motion: const ScrollMotion(),
                                          extentRatio: 0.25,
                                          children: [
                                            SlidableAction(
                                              label: FFLocalizations.of(context)
                                                  .getText(
                                                '2akwgoji' /* Share */,
                                              ),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              icon: Icons.share,
                                              onPressed: (_) {
                                                print(
                                                    'SlidableActionWidget pressed ...');
                                              },
                                            ),
                                          ],
                                        ),
                                        child: ListTile(
                                          leading: Icon(
                                            Icons.nat,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          title: Text(
                                            FFLocalizations.of(context).getText(
                                              '7l8g8klo' /* Anticonceptivos Hormonales */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          trailing: Icon(
                                            Icons.arrow_forward_ios,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 20.0,
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          dense: false,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 15.0, 0.0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 12.0, 20.0, 12.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'SSR_M_A_CONTENT_Container_nb1ec7dv_ON_TA');
                                  logFirebaseEvent('Container_navigate_to');

                                  context.pushNamed(
                                    'MAlisDIU',
                                    queryParameters: {
                                      'nametituloAntiHormo': serializeParam(
                                        'Dispositivos Intrauterinos (DIU)',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Container(
                                  width: 100.0,
                                  height: 90.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 20.0,
                                        color: Color(0x27000000),
                                        offset: Offset(
                                          0.0,
                                          12.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 15.0, 0.0),
                                      child: Slidable(
                                        endActionPane: ActionPane(
                                          motion: const ScrollMotion(),
                                          extentRatio: 0.25,
                                          children: [
                                            SlidableAction(
                                              label: FFLocalizations.of(context)
                                                  .getText(
                                                'iscgvjor' /* Share */,
                                              ),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              icon: Icons.share,
                                              onPressed: (_) {
                                                print(
                                                    'SlidableActionWidget pressed ...');
                                              },
                                            ),
                                          ],
                                        ),
                                        child: ListTile(
                                          leading: Icon(
                                            Icons.nat,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          title: Text(
                                            FFLocalizations.of(context).getText(
                                              'bjf33yhe' /* Dispositivos Intrauterinos (DI... */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          trailing: Icon(
                                            Icons.arrow_forward_ios,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 20.0,
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          dense: false,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 15.0, 0.0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 12.0, 20.0, 12.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  logFirebaseEvent(
                                      'SSR_M_A_CONTENT_Container_t7bcx3av_ON_TA');
                                  logFirebaseEvent('Container_navigate_to');

                                  context.pushNamed(
                                    'MAAOEContent',
                                    queryParameters: {
                                      'nameSubtitulo': serializeParam(
                                        'Anticoncepción Oral de Emergencia (AOE)',
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Container(
                                  width: 100.0,
                                  height: 90.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 20.0,
                                        color: Color(0x27000000),
                                        offset: Offset(
                                          0.0,
                                          12.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 15.0, 0.0),
                                      child: Slidable(
                                        endActionPane: ActionPane(
                                          motion: const ScrollMotion(),
                                          extentRatio: 0.25,
                                          children: [
                                            SlidableAction(
                                              label: FFLocalizations.of(context)
                                                  .getText(
                                                'stguts0c' /* Share */,
                                              ),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
                                              icon: Icons.share,
                                              onPressed: (_) {
                                                print(
                                                    'SlidableActionWidget pressed ...');
                                              },
                                            ),
                                          ],
                                        ),
                                        child: ListTile(
                                          leading: Icon(
                                            Icons.nat,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          title: Text(
                                            FFLocalizations.of(context).getText(
                                              'wfa1er0d' /* Anticoncepción Oral de Emergen... */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          trailing: Icon(
                                            Icons.arrow_forward_ios,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 20.0,
                                          ),
                                          tileColor:
                                              FlutterFlowTheme.of(context)
                                                  .alternate,
                                          dense: false,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 15.0, 0.0),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0x1A4B39EF),
                ),
                child: wrapWithModel(
                  model: _model.navBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: NavBarWidget(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
