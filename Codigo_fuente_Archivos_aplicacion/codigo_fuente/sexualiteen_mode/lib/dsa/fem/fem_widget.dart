import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fem_model.dart';
export 'fem_model.dart';

class FemWidget extends StatefulWidget {
  const FemWidget({super.key});

  @override
  State<FemWidget> createState() => _FemWidgetState();
}

class _FemWidgetState extends State<FemWidget> {
  late FemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 8.0, 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primary,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    'jw53vcig' /* a partir de ese día las mujere... */,
                  ),
                  maxLines: 5,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
            ),
          ),
        ),
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            logFirebaseEvent('FEM_COMP_Icon_built3rt_ON_TAP');
            logFirebaseEvent('Icon_bottom_sheet');
            Navigator.pop(context);
          },
          child: Icon(
            Icons.close_sharp,
            color: FlutterFlowTheme.of(context).primary,
            size: 30.0,
          ),
        ),
      ],
    );
  }
}
