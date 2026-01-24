import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'delete_receipe_model.dart';
export 'delete_receipe_model.dart';

class DeleteReceipeWidget extends StatefulWidget {
  const DeleteReceipeWidget({
    super.key,
    required this.receipeId,
  });

  final int? receipeId;

  @override
  State<DeleteReceipeWidget> createState() => _DeleteReceipeWidgetState();
}

class _DeleteReceipeWidgetState extends State<DeleteReceipeWidget> {
  late DeleteReceipeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeleteReceipeModel());

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
      width: () {
        if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
          return 300.0;
        } else if (MediaQuery.sizeOf(context).width < kBreakpointMedium) {
          return 400.0;
        } else if (MediaQuery.sizeOf(context).width < kBreakpointLarge) {
          return 500.0;
        } else {
          return 500.0;
        }
      }(),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Voulez vous supprimer cette recette ?',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    font: GoogleFonts.interTight(
                      fontWeight: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .fontWeight,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
                    letterSpacing: 0.0,
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
            ),
            FutureBuilder<List<ReceipeRow>>(
              future: ReceipeTable().querySingleRow(
                queryFn: (q) => q.eqOrNull(
                  'id',
                  widget.receipeId,
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
                List<ReceipeRow> columnReceipeRowList = snapshot.data!;

                final columnReceipeRow = columnReceipeRowList.isNotEmpty
                    ? columnReceipeRowList.first
                    : null;

                return Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FutureBuilder<List<ReceipeImageRow>>(
                      future: ReceipeImageTable().querySingleRow(
                        queryFn: (q) => q
                            .eqOrNull(
                              'receipe_id',
                              widget.receipeId,
                            )
                            .eqOrNull(
                              'type',
                              'main',
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
                        List<ReceipeImageRow> imageReceipeImageRowList =
                            snapshot.data!;

                        // Return an empty Container when the item does not exist.
                        if (snapshot.data!.isEmpty) {
                          return Container();
                        }
                        final imageReceipeImageRow =
                            imageReceipeImageRowList.isNotEmpty
                                ? imageReceipeImageRowList.first
                                : null;

                        return ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            imageReceipeImageRow!.url!,
                            width: 100.0,
                            height: 100.0,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    ),
                    Text(
                      valueOrDefault<String>(
                        columnReceipeRow?.name,
                        'receipe name',
                      ),
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            font: GoogleFonts.interTight(
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontStyle,
                          ),
                    ),
                  ].divide(SizedBox(height: 15.0)),
                );
              },
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    _model.deletedReceipe =
                        await TemporaryReceipeTable().delete(
                      matchingRows: (rows) => rows.eqOrNull(
                        'id',
                        widget.receipeId,
                      ),
                      returnRows: true,
                    );

                    context.pushNamed(ReceipeWidget.routeName);

                    safeSetState(() {});
                  },
                  text: 'Confirmer',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.interTight(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: Colors.white,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(ReceipeWidget.routeName);
                  },
                  text: 'Annuler',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          font: GoogleFonts.interTight(
                            fontWeight: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontWeight,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .fontStyle,
                          ),
                          color: FlutterFlowTheme.of(context).primary,
                          letterSpacing: 0.0,
                          fontWeight: FlutterFlowTheme.of(context)
                              .titleSmall
                              .fontWeight,
                          fontStyle:
                              FlutterFlowTheme.of(context).titleSmall.fontStyle,
                        ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ].divide(SizedBox(width: 20.0)),
            ),
          ].divide(SizedBox(height: 20.0)),
        ),
      ),
    );
  }
}
