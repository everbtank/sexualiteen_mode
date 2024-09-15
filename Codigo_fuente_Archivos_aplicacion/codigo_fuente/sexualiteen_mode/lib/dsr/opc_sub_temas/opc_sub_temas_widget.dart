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
import 'opc_sub_temas_model.dart';
export 'opc_sub_temas_model.dart';

class OpcSubTemasWidget extends StatefulWidget {
  const OpcSubTemasWidget({
    super.key,
    required this.tittleSub,
    required this.nameSubtitulo,
  });

  final DocumentReference? tittleSub;
  final String? nameSubtitulo;

  @override
  State<OpcSubTemasWidget> createState() => _OpcSubTemasWidgetState();
}

class _OpcSubTemasWidgetState extends State<OpcSubTemasWidget> {
  late OpcSubTemasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpcSubTemasModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'OpcSubTemas'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
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
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 30.0,
                          ),
                          onPressed: () async {
                            logFirebaseEvent(
                                'OPC_SUB_TEMAS_arrow_back_rounded_ICN_ON_');
                            logFirebaseEvent('IconButton_navigate_back');
                            context.safePop();
                          },
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget!.nameSubtitulo,
                                '....',
                              ).maybeHandleOverflow(
                                maxChars: 100,
                                replacement: '…',
                              ),
                              textAlign: TextAlign.start,
                              maxLines: 2,
                              style: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: FaIcon(
                            FontAwesomeIcons.venusMars,
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            size: 24.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ].divide(SizedBox(height: 4.0)),
              ),
            ),
            actions: [],
            centerTitle: false,
            toolbarHeight: 72.0,
            elevation: 0.0,
          ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 604.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 605.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFFCFCFC),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(0.0),
                        ),
                      ),
                      child: StreamBuilder<List<SubSubtemaRecord>>(
                        stream: querySubSubtemaRecord(
                          queryBuilder: (subSubtemaRecord) =>
                              subSubtemaRecord.where(
                            'id_subtema',
                            isEqualTo: widget!.tittleSub,
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
                          List<SubSubtemaRecord> listViewSubSubtemaRecordList =
                              snapshot.data!;

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listViewSubSubtemaRecordList.length,
                            itemBuilder: (context, listViewIndex) {
                              final listViewSubSubtemaRecord =
                                  listViewSubSubtemaRecordList[listViewIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 12.0, 20.0, 12.0),
                                child: Container(
                                  width: 100.0,
                                  height: 90.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 20.0,
                                        color: Color(0x25000000),
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
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'OPC_SUB_TEMAS_ListTile_vkiaxpb5_ON_TAP');
                                          logFirebaseEvent(
                                              'ListTile_update_app_state');
                                          FFAppState().estadoActual = 0;
                                          safeSetState(() {});
                                          logFirebaseEvent(
                                              'ListTile_navigate_to');

                                          context.pushNamed(
                                            'OpcSubTemasContenido',
                                            queryParameters: {
                                              'nameSubtitulo': serializeParam(
                                                widget!.nameSubtitulo,
                                                ParamType.String,
                                              ),
                                              'tittleSub': serializeParam(
                                                listViewSubSubtemaRecord
                                                    .idSubtema,
                                                ParamType.DocumentReference,
                                              ),
                                              'nameSubSubtitle': serializeParam(
                                                listViewSubSubtemaRecord
                                                    .nameSubSubtema,
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: Slidable(
                                          endActionPane: ActionPane(
                                            motion: const ScrollMotion(),
                                            extentRatio: 0.25,
                                            children: [
                                              SlidableAction(
                                                label:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  '8gp95z4u' /* Share */,
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
                                            leading: FaIcon(
                                              FontAwesomeIcons.medrt,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                            ),
                                            title: Text(
                                              listViewSubSubtemaRecord
                                                  .nameSubSubtema,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                            trailing: Icon(
                                              Icons.arrow_forward_ios,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            dense: true,
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
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFCFCFC),
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
        ),
      ),
    );
  }
}
