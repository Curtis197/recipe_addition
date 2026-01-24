import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'temporary_receipe_type_model.dart';
export 'temporary_receipe_type_model.dart';

class TemporaryReceipeTypeWidget extends StatefulWidget {
  const TemporaryReceipeTypeWidget({
    super.key,
    this.type,
    required this.receipeId,
  });

  final String? type;
  final int? receipeId;

  @override
  State<TemporaryReceipeTypeWidget> createState() =>
      _TemporaryReceipeTypeWidgetState();
}

class _TemporaryReceipeTypeWidgetState
    extends State<TemporaryReceipeTypeWidget> {
  late TemporaryReceipeTypeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TemporaryReceipeTypeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: (_model.apiRequestCompleter ??= Completer<ApiCallResponse>()
            ..complete(SupabaseGroup.temporaryReceipeTypeCall.call(
              receipeId: widget.receipeId,
              type: widget.type,
            )))
          .future,
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
        final containerTemporaryReceipeTypeResponse = snapshot.data!;

        return Container(
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    valueOrDefault<String>(
                      SupabaseGroup.temporaryReceipeTypeCall.type(
                        containerTemporaryReceipeTypeResponse.jsonBody,
                      ),
                      'Type',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          font: GoogleFonts.inter(
                            fontWeight: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .fontStyle,
                          ),
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                        ),
                  ),
                ),
                if (!SupabaseGroup.temporaryReceipeTypeCall.result(
                  containerTemporaryReceipeTypeResponse.jsonBody,
                )!)
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.addType = await SupabaseGroup
                          .temporaryReceipeTypeModificationCall
                          .call(
                        isIn: true,
                        receipeId: widget.receipeId,
                        type: widget.type,
                      );

                      safeSetState(() => _model.apiRequestCompleter = null);
                      await _model.waitForApiRequestCompleted();

                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.check_box_outline_blank,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                  ),
                if (SupabaseGroup.temporaryReceipeTypeCall.result(
                      containerTemporaryReceipeTypeResponse.jsonBody,
                    ) ??
                    true)
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.removeType = await SupabaseGroup
                          .temporaryReceipeTypeModificationCall
                          .call(
                        isIn: false,
                        receipeId: widget.receipeId,
                        type: widget.type,
                      );

                      safeSetState(() => _model.apiRequestCompleter = null);
                      await _model.waitForApiRequestCompleted();

                      safeSetState(() {});
                    },
                    child: Icon(
                      Icons.check_box_rounded,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
