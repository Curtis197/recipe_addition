import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/navbar/navbar_widget.dart';
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'test_accueil_model.dart';
export 'test_accueil_model.dart';

class TestAccueilWidget extends StatefulWidget {
  const TestAccueilWidget({super.key});

  static String routeName = 'testAccueil';
  static String routePath = '/testAccueil';

  @override
  State<TestAccueilWidget> createState() => _TestAccueilWidgetState();
}

class _TestAccueilWidgetState extends State<TestAccueilWidget> {
  late TestAccueilModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TestAccueilModel());

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
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: responsiveVisibility(
          context: context,
          tabletLandscape: false,
          desktop: false,
        )
            ? AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primary,
                automaticallyImplyLeading: false,
                title: Text(
                  'Page Title',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        font: GoogleFonts.interTight(
                          fontWeight: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .fontWeight,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .fontStyle,
                        ),
                        color: Colors.white,
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                        fontWeight: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontWeight,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                ),
                actions: [],
                centerTitle: false,
                elevation: 2.0,
              )
            : null,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              wrapWithModel(
                model: _model.navbarModel,
                updateCallback: () => safeSetState(() {}),
                child: NavbarWidget(),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 800.0,
                    decoration: BoxDecoration(),
                    child: FutureBuilder<List<TemporaryReceipeRow>>(
                      future: TemporaryReceipeTable().queryRows(
                        queryFn: (q) => q,
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
                        List<TemporaryReceipeRow> rowTemporaryReceipeRowList =
                            snapshot.data!;

                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                rowTemporaryReceipeRowList.length, (rowIndex) {
                              final rowTemporaryReceipeRow =
                                  rowTemporaryReceipeRowList[rowIndex];
                              return Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.receipe = rowTemporaryReceipeRow;
                                    safeSetState(() {});
                                    safeSetState(
                                        () => _model.requestCompleter = null);
                                    await _model.waitForRequestCompleted();
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.network(
                                          'https://picsum.photos/seed/494/600',
                                          width: 200.0,
                                          height: 200.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Text(
                                        valueOrDefault<String>(
                                          rowTemporaryReceipeRow.name,
                                          'name',
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
                                    ].divide(SizedBox(height: 10.0)),
                                  ),
                                ),
                              );
                            }).divide(SizedBox(width: 10.0)),
                          ),
                        );
                      },
                    ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      _model.receipe?.name,
                      'name',
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
                  FFButtonWidget(
                    onPressed: () async {
                      _model.newReceipeCopy = await ReceipeTable().insert({
                        'name': _model.receipe?.name,
                        'description': _model.receipe?.description,
                        'time_of_cooking_min': _model.receipe?.timeOfCookingMin,
                        'creator_id': _model.receipe?.creatorId,
                        'type': _model.receipe?.type,
                        'Food Region': _model.receipe?.foodRegion,
                        'time_of_cooking_hour':
                            _model.receipe?.timeOfCookingHour,
                      });

                      safeSetState(() {});
                    },
                    text: 'Button',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
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
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  Text(
                    valueOrDefault<String>(
                      _model.newReceipeCopy?.name,
                      '0',
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
                  FutureBuilder<List<IngredientsRow>>(
                    future: (_model.requestCompleter ??=
                            Completer<List<IngredientsRow>>()
                              ..complete(IngredientsTable().queryRows(
                                queryFn: (q) => q.eqOrNull(
                                  'temporary_receipe_id',
                                  _model.receipe?.id,
                                ),
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
                      List<IngredientsRow> columnIngredientsRowList =
                          snapshot.data!;

                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(columnIngredientsRowList.length,
                            (columnIndex) {
                          final columnIngredientsRow =
                              columnIngredientsRowList[columnIndex];
                          return Text(
                            valueOrDefault<String>(
                              columnIngredientsRow.name,
                              'name',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
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
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .fontStyle,
                                ),
                          );
                        }),
                      );
                    },
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      _model.updatedIngredientCopy =
                          await IngredientsTable().update(
                        data: {
                          'receipe_id': _model.newReceipeCopy?.id,
                        },
                        matchingRows: (rows) => rows.eqOrNull(
                          'temporary_receipe_id',
                          _model.receipe?.id,
                        ),
                        returnRows: true,
                      );

                      safeSetState(() {});
                    },
                    text: 'Button',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
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
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      final ing = _model.updatedIngredientCopy?.toList() ?? [];

                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(ing.length, (ingIndex) {
                          final ingItem = ing[ingIndex];
                          return Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  ingItem.receipeId?.toString(),
                                  'id',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
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
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  ingItem.name,
                                  'name',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
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
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ],
                          );
                        }),
                      );
                    },
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      _model.newReceipe = await ReceipeTable().insert({
                        'name': _model.receipe?.name,
                        'description': _model.receipe?.description,
                        'time_of_cooking_min': _model.receipe?.timeOfCookingMin,
                        'creator_id': _model.receipe?.creatorId,
                        'type': _model.receipe?.type,
                        'Food Region': _model.receipe?.foodRegion,
                        'time_of_cooking_hour':
                            _model.receipe?.timeOfCookingHour,
                      });
                      _model.updatedIngredient =
                          await IngredientsTable().update(
                        data: {
                          'receipe_id': _model.newReceipe?.id,
                          'temporary_receipe_id': 0,
                        },
                        matchingRows: (rows) => rows.eqOrNull(
                          'temporary_receipe_id',
                          _model.receipe?.id,
                        ),
                        returnRows: true,
                      );
                      _model.updatedStep = await StepTable().update(
                        data: {
                          'receipe_id': _model.newReceipe?.id,
                          'temprorary_receipe_id': 0,
                        },
                        matchingRows: (rows) => rows.eqOrNull(
                          'temprorary_receipe_id',
                          _model.receipe?.id,
                        ),
                        returnRows: true,
                      );
                      _model.receipeMacro =
                          await SupabaseGroup.receipeinfoCall.call(
                        receipeId: _model.newReceipe?.id,
                      );

                      if ((_model.receipeMacro?.succeeded ?? true)) {
                        if (() {
                          if (MediaQuery.sizeOf(context).width <
                              kBreakpointSmall) {
                            return true;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointMedium) {
                            return true;
                          } else if (MediaQuery.sizeOf(context).width <
                              kBreakpointLarge) {
                            return false;
                          } else {
                            return false;
                          }
                        }()) {
                          context.pushNamed(
                            ReceipeDetailWidget.routeName,
                            queryParameters: {
                              'receipeId': serializeParam(
                                _model.newReceipe?.id,
                                ParamType.int,
                              ),
                            }.withoutNulls,
                          );
                        } else {
                          context.pushNamed(
                            ReceipeDetailWebWidget.routeName,
                            queryParameters: {
                              'receipe': serializeParam(
                                _model.newReceipe,
                                ParamType.SupabaseRow,
                              ),
                              'receipeId': serializeParam(
                                _model.newReceipe?.id,
                                ParamType.int,
                              ),
                            }.withoutNulls,
                          );
                        }
                      }

                      safeSetState(() {});
                    },
                    text: 'Publier',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
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
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .fontStyle,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      final uing = _model.updatedIngredient?.toList() ?? [];

                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: List.generate(uing.length, (uingIndex) {
                          final uingItem = uing[uingIndex];
                          return Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                valueOrDefault<String>(
                                  uingItem.receipeId?.toString(),
                                  'id',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
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
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  uingItem.name,
                                  'name',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
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
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ],
                          );
                        }),
                      );
                    },
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
