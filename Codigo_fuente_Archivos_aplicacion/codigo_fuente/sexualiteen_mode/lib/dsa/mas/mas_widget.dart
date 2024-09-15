import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mas_model.dart';
export 'mas_model.dart';

class MasWidget extends StatefulWidget {
  const MasWidget({super.key});

  @override
  State<MasWidget> createState() => _MasWidgetState();
}

class _MasWidgetState extends State<MasWidget> {
  late MasModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MasModel());

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
                    'ltl940tv' /* A partir de ese día los varone... */,
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
            logFirebaseEvent('MAS_COMP_Icon_yik0lnys_ON_TAP');
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
