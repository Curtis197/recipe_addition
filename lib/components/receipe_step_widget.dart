import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/receipe/insert_step/insert_step_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'receipe_step_model.dart';
export 'receipe_step_model.dart';

class ReceipeStepWidget extends StatefulWidget {
  const ReceipeStepWidget({
    super.key,
    required this.id,
    required this.index,
  });

  final String? id;
  final int? index;

  @override
  State<ReceipeStepWidget> createState() => _ReceipeStepWidgetState();
}

class _ReceipeStepWidgetState extends State<ReceipeStepWidget> {
  late ReceipeStepModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReceipeStepModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.indexControl = await StepTable().update(
        data: {
          'index': widget.index,
        },
        matchingRows: (rows) => rows.eqOrNull(
          'id',
          widget.id,
        ),
        returnRows: true,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: StreamBuilder<List<StepRow>>(
        stream: _model.conditionalBuilderSupabaseStream ??= SupaFlow.client
            .from("step")
            .stream(primaryKey: ['id'])
            .eqOrNull(
              'id',
              widget.id,
            )
            .map((list) => list.map((item) => StepRow(item)).toList()),
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
          List<StepRow> conditionalBuilderStepRowList = snapshot.data!;

          final conditionalBuilderStepRow =
              conditionalBuilderStepRowList.isNotEmpty
                  ? conditionalBuilderStepRowList.first
                  : null;

          return Builder(
            builder: (context) {
              if (_model.edit) {
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: wrapWithModel(
                              model: _model.insertStepModel,
                              updateCallback: () => safeSetState(() {}),
                              child: InsertStepWidget(),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await StepTable().update(
                                data: {
                                  'text': _model
                                      .insertStepModel.textTextController.text,
                                  'number': double.tryParse(_model
                                      .insertStepModel
                                      .numberTextController
                                      .text),
                                  'title': _model.insertStepModel.checkboxValue,
                                },
                                matchingRows: (rows) => rows.eqOrNull(
                                  'id',
                                  widget.id,
                                ),
                              );
                              _model.edit = false;
                              safeSetState(() {});
                            },
                            child: Icon(
                              Icons.check_rounded,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              } else {
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (conditionalBuilderStepRow?.number != null)
                                Text(
                                  valueOrDefault<String>(
                                    conditionalBuilderStepRow?.number
                                        ?.toString(),
                                    '0',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .fontStyle,
                                      ),
                                ),
                              if (conditionalBuilderStepRow?.title ?? true)
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: Visibility(
                                      visible:
                                          conditionalBuilderStepRow?.title ??
                                              true,
                                      child: Text(
                                        valueOrDefault<String>(
                                          conditionalBuilderStepRow?.text,
                                          'titre',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              if (conditionalBuilderStepRow?.title ?? true)
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: Visibility(
                                      visible:
                                          !conditionalBuilderStepRow!.title!,
                                      child: Text(
                                        valueOrDefault<String>(
                                          conditionalBuilderStepRow.text,
                                          'étape',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              font: GoogleFonts.inter(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                            ].divide(SizedBox(width: 10.0)),
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
                        _model.edit = true;
                        safeSetState(() {});
                      },
                      child: Icon(
                        Icons.edit,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 24.0,
                      ),
                    ),
                  ],
                );
              }
            },
          );
        },
      ),
    );
  }
}
