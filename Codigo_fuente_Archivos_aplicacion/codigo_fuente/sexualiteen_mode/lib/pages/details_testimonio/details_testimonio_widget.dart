import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/componentes/nav_bar/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'details_testimonio_model.dart';
export 'details_testimonio_model.dart';

class DetailsTestimonioWidget extends StatefulWidget {
  const DetailsTestimonioWidget({
    super.key,
    required this.datosHomeTestimonio,
  });

  final TestimonioUserRecord? datosHomeTestimonio;

  @override
  State<DetailsTestimonioWidget> createState() =>
      _DetailsTestimonioWidgetState();
}

class _DetailsTestimonioWidgetState extends State<DetailsTestimonioWidget> {
  late DetailsTestimonioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailsTestimonioModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'DetailsTestimonio'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<TestimonioUserRecord>(
      stream: TestimonioUserRecord.getDocument(
          widget!.datosHomeTestimonio!.reference),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }

        final detailsTestimonioTestimonioUserRecord = snapshot.data!;

        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            leading: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('DETAILS_TESTIMONIO_Icon_wd0ii0ax_ON_TAP');
                logFirebaseEvent('Icon_navigate_back');
                context.pop();
              },
              child: Icon(
                Icons.chevron_left_rounded,
                color: Color(0xFF0F1113),
                size: 32.0,
              ),
            ),
            title: Text(
              FFLocalizations.of(context).getText(
                'sjdsbtyk' /* Testimonios Reales */,
              ),
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    color: Color(0xFF0F1113),
                    fontSize: 24.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 0.0,
          ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: 650.0,
                      decoration: BoxDecoration(),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Container(
                                width: 350.0,
                                height: 250.0,
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(12.0),
                                      child: Image.network(
                                        widget!
                                            .datosHomeTestimonio!.imgTestimonio,
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                3.5,
                                        height: 250.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(0.94, -0.94),
                                      child: Builder(
                                        builder: (context) {
                                          if (detailsTestimonioTestimonioUserRecord
                                              .ilike) {
                                            return Align(
                                              alignment: AlignmentDirectional(
                                                  0.94, -0.95),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'DETAILS_TESTIMONIO_Icon_kxfdznjo_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Icon_backend_call');

                                                  await detailsTestimonioTestimonioUserRecord
                                                      .reference
                                                      .update(
                                                          createTestimonioUserRecordData(
                                                    ilike: false,
                                                  ));
                                                },
                                                child: Icon(
                                                  Icons.favorite_sharp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 30.0,
                                                ),
                                              ),
                                            );
                                          } else {
                                            return InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'DETAILS_TESTIMONIO_Icon_pkbaf8rp_ON_TAP');
                                                logFirebaseEvent(
                                                    'Icon_backend_call');

                                                await detailsTestimonioTestimonioUserRecord
                                                    .reference
                                                    .update(
                                                        createTestimonioUserRecordData(
                                                  ilike: true,
                                                ));
                                              },
                                              child: Icon(
                                                Icons.favorite_border,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 30.0,
                                              ),
                                            );
                                          }
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    valueOrDefault<String>(
                                      widget!.datosHomeTestimonio?.titulo,
                                      'Cargando...',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF0F1113),
                                          fontSize: 24.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 8.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        widget!.datosHomeTestimonio?.nameUser,
                                        'Cargando...',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF4B39EF),
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      widget!.datosHomeTestimonio?.descripcion,
                                      'Cargando...',
                                    ),
                                    maxLines: 20,
                                    style: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF57636C),
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  Divider(
                                    height: 32.0,
                                    thickness: 1.0,
                                    color: Color(0xFFDBE2E7),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
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
        );
      },
    );
  }
}
