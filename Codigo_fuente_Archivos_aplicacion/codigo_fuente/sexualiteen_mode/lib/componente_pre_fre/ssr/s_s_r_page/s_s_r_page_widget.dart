import '/backend/backend.dart';
import '/componentes/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 's_s_r_page_model.dart';
export 's_s_r_page_model.dart';

class SSRPageWidget extends StatefulWidget {
  const SSRPageWidget({
    super.key,
    required this.tittle1,
    required this.nametitulo,
  });

  final DocumentReference? tittle1;
  final String? nametitulo;

  @override
  State<SSRPageWidget> createState() => _SSRPageWidgetState();
}

class _SSRPageWidgetState extends State<SSRPageWidget> {
  late SSRPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SSRPageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'SSRPage'});
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
                      logFirebaseEvent('S_S_R_arrow_back_rounded_ICN_ON_TAP');
                      logFirebaseEvent('IconButton_navigate_back');
                      context.safePop();
                    },
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
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
                      height: 725.0,
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
                        child: StreamBuilder<List<SubtemaRecord>>(
                          stream: querySubtemaRecord(
                            queryBuilder: (subtemaRecord) =>
                                subtemaRecord.where(
                              'id_tema',
                              isEqualTo: widget!.tittle1,
                            ),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<SubtemaRecord> listViewSubtemaRecordList =
                                snapshot.data!;

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewSubtemaRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewSubtemaRecord =
                                    listViewSubtemaRecordList[listViewIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 12.0, 20.0, 12.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'S_S_R_Container_9jgqi24n_ON_TAP');
                                      if (listViewSubtemaRecord.nameSubtema ==
                                          'Embarazo no deseado') {
                                        logFirebaseEvent(
                                            'Container_navigate_to');

                                        context.pushNamed(
                                          'ssrEnDContentPage',
                                          queryParameters: {
                                            'tittleSub': serializeParam(
                                              listViewSubtemaRecord.reference,
                                              ParamType.DocumentReference,
                                            ),
                                            'nameSubtitulo': serializeParam(
                                              listViewSubtemaRecord.nameSubtema,
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      } else if (listViewSubtemaRecord
                                              .nameSubtema ==
                                          'Métodos anticonceptivos') {
                                        logFirebaseEvent(
                                            'Container_navigate_to');

                                        context.pushNamed(
                                          'ssrMAContentPage',
                                          queryParameters: {
                                            'nametitulo': serializeParam(
                                              widget!.nametitulo,
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      } else if (listViewSubtemaRecord
                                              .nameSubtema ==
                                          'ITS') {
                                        logFirebaseEvent(
                                            'Container_update_app_state');
                                        FFAppState().estadoActual = 0;
                                        safeSetState(() {});
                                        logFirebaseEvent(
                                            'Container_navigate_to');

                                        context.pushNamed(
                                          'ssrITSContentPage',
                                          queryParameters: {
                                            'tittleSub': serializeParam(
                                              listViewSubtemaRecord.reference,
                                              ParamType.DocumentReference,
                                            ),
                                            'nameSubtitulo': serializeParam(
                                              widget!.nametitulo,
                                              ParamType.String,
                                            ),
                                          }.withoutNulls,
                                        );
                                      }
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
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 15.0, 0.0),
                                          child: Slidable(
                                            endActionPane: ActionPane(
                                              motion: const ScrollMotion(),
                                              extentRatio: 0.25,
                                              children: [
                                                SlidableAction(
                                                  label: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    '9dr03zoy' /* Share */,
                                                  ),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                              leading: FaIcon(
                                                FontAwesomeIcons
                                                    .handHoldingWater,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                              title: Text(
                                                listViewSubtemaRecord
                                                    .nameSubtema,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              trailing: Icon(
                                                Icons.arrow_forward_ios,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 20.0,
                                              ),
                                              tileColor:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              dense: false,
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(
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
                                );
                              },
                            );
                          },
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
