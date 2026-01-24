import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/pages/navbar/navbar_widget.dart';
import '/receipe/insert_ingredient/insert_ingredient_widget.dart';
import '/receipe/insert_step/insert_step_widget.dart';
import '/receipe/temporary_receipe_type/temporary_receipe_type_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_receipe_model.dart';
export 'create_receipe_model.dart';

class CreateReceipeWidget extends StatefulWidget {
  const CreateReceipeWidget({
    super.key,
    required this.receipeId,
  });

  final int? receipeId;

  static String routeName = 'CreateReceipe';
  static String routePath = '/createReceipe';

  @override
  State<CreateReceipeWidget> createState() => _CreateReceipeWidgetState();
}

class _CreateReceipeWidgetState extends State<CreateReceipeWidget> {
  late CreateReceipeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateReceipeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.wait([
        Future(() async {
          _model.ingredientIDs = await IngredientsTable().queryRows(
            queryFn: (q) => q
                .eqOrNull(
                  'temporary_receipe_id',
                  widget.receipeId,
                )
                .order('index', ascending: true),
          );
          _model.ingredientList =
              _model.ingredientIDs!.toList().cast<IngredientsRow>();
          safeSetState(() {});
        }),
        Future(() async {
          _model.stepIDs = await StepTable().queryRows(
            queryFn: (q) => q
                .eqOrNull(
                  'temprorary_receipe_id',
                  widget.receipeId,
                )
                .order('index', ascending: true),
          );
          _model.stepList = _model.stepIDs!.toList().cast<StepRow>();
          safeSetState(() {});
        }),
      ]);
    });

    _model.insertNameTextController ??= TextEditingController();
    _model.insertNameFocusNode ??= FocusNode();

    _model.updateNameFocusNode ??= FocusNode();

    _model.insertReceipetimeofcookingHourTextController ??=
        TextEditingController();
    _model.insertReceipetimeofcookingHourFocusNode ??= FocusNode();

    _model.insertReceipetimeofcookingMinuteTextController ??=
        TextEditingController();
    _model.insertReceipetimeofcookingMinuteFocusNode ??= FocusNode();

    _model.editReceipetimeofcookingHourFocusNode ??= FocusNode();

    _model.editReceipetimeofcookingMinFocusNode ??= FocusNode();

    _model.insertDescriptionTextController ??= TextEditingController();
    _model.insertDescriptionFocusNode ??= FocusNode();

    _model.updateDescriptionFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: responsiveVisibility(
                  context: context,
                  tabletLandscape: false,
                  desktop: false,
                ) &&
                () {
                  if (MediaQuery.sizeOf(context).width < kBreakpointSmall) {
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
                }()
            ? AppBar(
                backgroundColor: FlutterFlowTheme.of(context).primary,
                automaticallyImplyLeading: false,
                leading: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 60.0,
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pop();
                  },
                ),
                actions: [],
                centerTitle: true,
                elevation: 2.0,
              )
            : null,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                wrapWithModel(
                  model: _model.navbarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: NavbarWidget(),
                ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 0.0),
                        child: Container(
                          width: () {
                            if (MediaQuery.sizeOf(context).width <
                                kBreakpointSmall) {
                              return 350.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointMedium) {
                              return 450.0;
                            } else if (MediaQuery.sizeOf(context).width <
                                kBreakpointLarge) {
                              return 600.0;
                            } else {
                              return 900.0;
                            }
                          }(),
                          decoration: BoxDecoration(),
                          child: FutureBuilder<List<TemporaryReceipeRow>>(
                            future: (_model.requestCompleter1 ??=
                                    Completer<List<TemporaryReceipeRow>>()
                                      ..complete(TemporaryReceipeTable()
                                          .querySingleRow(
                                        queryFn: (q) => q.eqOrNull(
                                          'id',
                                          widget.receipeId,
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
                              List<TemporaryReceipeRow>
                                  columnTemporaryReceipeRowList =
                                  snapshot.data!;

                              final columnTemporaryReceipeRow =
                                  columnTemporaryReceipeRowList.isNotEmpty
                                      ? columnTemporaryReceipeRowList.first
                                      : null;

                              return SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 40.0, 0.0, 0.0),
                                      child: Text(
                                        'Modifier votre recette',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              font: GoogleFonts.interTight(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .fontStyle,
                                              ),
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLarge
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLarge
                                                      .fontStyle,
                                            ),
                                      ),
                                    ),
                                    Text(
                                      'Nom',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                    Builder(
                                      builder: (context) {
                                        if (columnTemporaryReceipeRow?.name ==
                                                null ||
                                            columnTemporaryReceipeRow?.name ==
                                                '') {
                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 200.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .insertNameTextController,
                                                  focusNode: _model
                                                      .insertNameFocusNode,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    hintText: 'Insérer un nom',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  enableInteractiveSelection:
                                                      true,
                                                  validator: _model
                                                      .insertNameTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await TemporaryReceipeTable()
                                                      .update(
                                                    data: {
                                                      'name': _model
                                                          .insertNameTextController
                                                          .text,
                                                    },
                                                    matchingRows: (rows) =>
                                                        rows.eqOrNull(
                                                      'id',
                                                      columnTemporaryReceipeRow
                                                          ?.id,
                                                    ),
                                                  );
                                                  safeSetState(() =>
                                                      _model.requestCompleter1 =
                                                          null);
                                                  await _model
                                                      .waitForRequestCompleted1();

                                                  safeSetState(() {});
                                                },
                                                child: Icon(
                                                  Icons.check,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 20.0)),
                                          );
                                        } else if ((columnTemporaryReceipeRow
                                                        ?.name !=
                                                    null &&
                                                columnTemporaryReceipeRow
                                                        ?.name !=
                                                    '') &&
                                            _model.editName) {
                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return 250.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return 300.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointLarge) {
                                                    return 400.0;
                                                  } else {
                                                    return 400.0;
                                                  }
                                                }(),
                                                child: TextFormField(
                                                  controller: _model
                                                          .updateNameTextController ??=
                                                      TextEditingController(
                                                    text: columnTemporaryReceipeRow
                                                                    ?.name !=
                                                                null &&
                                                            columnTemporaryReceipeRow
                                                                    ?.name !=
                                                                ''
                                                        ? columnTemporaryReceipeRow
                                                            ?.name
                                                        : '',
                                                  ),
                                                  focusNode: _model
                                                      .updateNameFocusNode,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  maxLines: null,
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  enableInteractiveSelection:
                                                      true,
                                                  validator: _model
                                                      .updateNameTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await TemporaryReceipeTable()
                                                      .update(
                                                    data: {
                                                      'name': _model
                                                          .updateNameTextController
                                                          .text,
                                                    },
                                                    matchingRows: (rows) =>
                                                        rows.eqOrNull(
                                                      'id',
                                                      columnTemporaryReceipeRow
                                                          ?.id,
                                                    ),
                                                  );
                                                  safeSetState(() =>
                                                      _model.requestCompleter1 =
                                                          null);
                                                  await _model
                                                      .waitForRequestCompleted1();
                                                  _model.editName = false;
                                                  safeSetState(() {});

                                                  safeSetState(() {});
                                                },
                                                child: Icon(
                                                  Icons.check_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 20.0)),
                                          );
                                        } else {
                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  columnTemporaryReceipeRow
                                                      ?.name,
                                                  'receipe name',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.editName = true;
                                                  safeSetState(() {});
                                                },
                                                child: Icon(
                                                  Icons.edit,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 20.0)),
                                          );
                                        }
                                      },
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [],
                                    ),
                                    Text(
                                      'Image',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                    if (_model.editImage)
                                      FutureBuilder<List<ReceipeImageRow>>(
                                        future:
                                            ReceipeImageTable().querySingleRow(
                                          queryFn: (q) => q.eqOrNull(
                                            'id',
                                            _model.imageId,
                                          ),
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50.0,
                                                height: 50.0,
                                                child:
                                                    CircularProgressIndicator(
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                          Color>(
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }
                                          List<ReceipeImageRow>
                                              updateImageWrapReceipeImageRowList =
                                              snapshot.data!;

                                          final updateImageWrapReceipeImageRow =
                                              updateImageWrapReceipeImageRowList
                                                      .isNotEmpty
                                                  ? updateImageWrapReceipeImageRowList
                                                      .first
                                                  : null;

                                          return Wrap(
                                            spacing: 10.0,
                                            runSpacing: 10.0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              if ((_model.uploadedLocalFile_updateImage
                                                          .bytes?.isNotEmpty ??
                                                      false))
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.memory(
                                                    _model.uploadedLocalFile_updateImage
                                                            .bytes ??
                                                        Uint8List.fromList([]),
                                                    width: 100.0,
                                                    height: 100.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              if ((_model.uploadedLocalFile_updateImage
                                                          .bytes?.isEmpty ??
                                                      true))
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    final selectedMedia =
                                                        await selectMediaWithSourceBottomSheet(
                                                      context: context,
                                                      allowPhoto: true,
                                                    );
                                                    if (selectedMedia != null &&
                                                        selectedMedia.every((m) =>
                                                            validateFileFormat(
                                                                m.storagePath,
                                                                context))) {
                                                      safeSetState(() => _model
                                                              .isDataUploading_updateImage =
                                                          true);
                                                      var selectedUploadedFiles =
                                                          <FFUploadedFile>[];

                                                      try {
                                                        selectedUploadedFiles =
                                                            selectedMedia
                                                                .map((m) =>
                                                                    FFUploadedFile(
                                                                      name: m
                                                                          .storagePath
                                                                          .split(
                                                                              '/')
                                                                          .last,
                                                                      bytes: m
                                                                          .bytes,
                                                                      height: m
                                                                          .dimensions
                                                                          ?.height,
                                                                      width: m
                                                                          .dimensions
                                                                          ?.width,
                                                                      blurHash:
                                                                          m.blurHash,
                                                                      originalFilename:
                                                                          m.originalFilename,
                                                                    ))
                                                                .toList();
                                                      } finally {
                                                        _model.isDataUploading_updateImage =
                                                            false;
                                                      }
                                                      if (selectedUploadedFiles
                                                              .length ==
                                                          selectedMedia
                                                              .length) {
                                                        safeSetState(() {
                                                          _model.uploadedLocalFile_updateImage =
                                                              selectedUploadedFiles
                                                                  .first;
                                                        });
                                                      } else {
                                                        safeSetState(() {});
                                                        return;
                                                      }
                                                    }
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      updateImageWrapReceipeImageRow!
                                                          .url!,
                                                      width: 100.0,
                                                      height: 100.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              FlutterFlowDropDown<String>(
                                                controller: _model
                                                        .dropDownValueController1 ??=
                                                    FormFieldController<String>(
                                                        null),
                                                options: [
                                                  'principal',
                                                  'basique'
                                                ],
                                                onChanged: (val) =>
                                                    safeSetState(() => _model
                                                        .dropDownValue1 = val),
                                                width: 200.0,
                                                height: 40.0,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                hintText: 'type d\'image',
                                                icon: Icon(
                                                  Icons
                                                      .keyboard_arrow_down_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 24.0,
                                                ),
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                elevation: 2.0,
                                                borderColor: Colors.transparent,
                                                borderWidth: 0.0,
                                                borderRadius: 8.0,
                                                margin: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                hidesUnderline: true,
                                                isOverButton: false,
                                                isSearchable: false,
                                                isMultiSelect: false,
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  if ((_model
                                                              .uploadedLocalFile_updateImage
                                                              .bytes
                                                              ?.isNotEmpty ??
                                                          false)) {
                                                    {
                                                      safeSetState(() => _model
                                                              .isDataUploading_uploadedEditReceipeimage =
                                                          true);
                                                      var selectedUploadedFiles =
                                                          <FFUploadedFile>[];
                                                      var selectedMedia =
                                                          <SelectedFile>[];
                                                      var downloadUrls =
                                                          <String>[];
                                                      try {
                                                        selectedUploadedFiles = _model
                                                                .uploadedLocalFile_updateImage
                                                                .bytes!
                                                                .isNotEmpty
                                                            ? [
                                                                _model
                                                                    .uploadedLocalFile_updateImage
                                                              ]
                                                            : <FFUploadedFile>[];
                                                        selectedMedia =
                                                            selectedFilesFromUploadedFiles(
                                                          selectedUploadedFiles,
                                                          storageFolderPath:
                                                              'image',
                                                        );
                                                        downloadUrls =
                                                            await uploadSupabaseStorageFiles(
                                                          bucketName: 'receipe',
                                                          selectedFiles:
                                                              selectedMedia,
                                                        );
                                                      } finally {
                                                        _model.isDataUploading_uploadedEditReceipeimage =
                                                            false;
                                                      }
                                                      if (selectedUploadedFiles
                                                                  .length ==
                                                              selectedMedia
                                                                  .length &&
                                                          downloadUrls.length ==
                                                              selectedMedia
                                                                  .length) {
                                                        safeSetState(() {
                                                          _model.uploadedLocalFile_uploadedEditReceipeimage =
                                                              selectedUploadedFiles
                                                                  .first;
                                                          _model.uploadedFileUrl_uploadedEditReceipeimage =
                                                              downloadUrls
                                                                  .first;
                                                        });
                                                      } else {
                                                        safeSetState(() {});
                                                        return;
                                                      }
                                                    }

                                                    await ReceipeImageTable()
                                                        .update(
                                                      data: {
                                                        'url': _model
                                                            .uploadedFileUrl_uploadedEditReceipeimage,
                                                        'type':
                                                            _model.dropDownValue1 ==
                                                                    'principal'
                                                                ? 'main'
                                                                : 'basic',
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eqOrNull(
                                                        'id',
                                                        updateImageWrapReceipeImageRow
                                                            ?.id,
                                                      ),
                                                    );
                                                    safeSetState(() => _model
                                                            .requestCompleter2 =
                                                        null);
                                                    await _model
                                                        .waitForRequestCompleted2();
                                                    _model.editImage = false;
                                                    safeSetState(() {});
                                                    safeSetState(() {
                                                      _model.isDataUploading_updateImage =
                                                          false;
                                                      _model.uploadedLocalFile_updateImage =
                                                          FFUploadedFile(
                                                              bytes: Uint8List
                                                                  .fromList([]),
                                                              originalFilename:
                                                                  '');
                                                    });
                                                  } else {
                                                    await ReceipeImageTable()
                                                        .update(
                                                      data: {
                                                        'type':
                                                            _model.dropDownValue1 ==
                                                                    'principal'
                                                                ? 'main'
                                                                : 'basic',
                                                      },
                                                      matchingRows: (rows) =>
                                                          rows.eqOrNull(
                                                        'id',
                                                        updateImageWrapReceipeImageRow
                                                            ?.id,
                                                      ),
                                                    );
                                                    safeSetState(() => _model
                                                            .requestCompleter2 =
                                                        null);
                                                    await _model
                                                        .waitForRequestCompleted2();
                                                    _model.editImage = false;
                                                    safeSetState(() {});
                                                    safeSetState(() {
                                                      _model.isDataUploading_updateImage =
                                                          false;
                                                      _model.uploadedLocalFile_updateImage =
                                                          FFUploadedFile(
                                                              bytes: Uint8List
                                                                  .fromList([]),
                                                              originalFilename:
                                                                  '');
                                                    });
                                                  }

                                                  safeSetState(() {});
                                                },
                                                child: Icon(
                                                  Icons.check_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    if (!_model.editImage)
                                      Wrap(
                                        spacing: 10.0,
                                        runSpacing: 10.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          if ((_model.uploadedLocalFile_edtImage
                                                      .bytes?.isNotEmpty ??
                                                  false))
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.memory(
                                                _model.uploadedLocalFile_edtImage
                                                        .bytes ??
                                                    Uint8List.fromList([]),
                                                width: 100.0,
                                                height: 100.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          if ((_model.uploadedLocalFile_edtImage
                                                      .bytes?.isEmpty ??
                                                  true))
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                final selectedMedia =
                                                    await selectMediaWithSourceBottomSheet(
                                                  context: context,
                                                  allowPhoto: true,
                                                );
                                                if (selectedMedia != null &&
                                                    selectedMedia.every((m) =>
                                                        validateFileFormat(
                                                            m.storagePath,
                                                            context))) {
                                                  safeSetState(() => _model
                                                          .isDataUploading_edtImage =
                                                      true);
                                                  var selectedUploadedFiles =
                                                      <FFUploadedFile>[];

                                                  try {
                                                    selectedUploadedFiles =
                                                        selectedMedia
                                                            .map((m) =>
                                                                FFUploadedFile(
                                                                  name: m
                                                                      .storagePath
                                                                      .split(
                                                                          '/')
                                                                      .last,
                                                                  bytes:
                                                                      m.bytes,
                                                                  height: m
                                                                      .dimensions
                                                                      ?.height,
                                                                  width: m
                                                                      .dimensions
                                                                      ?.width,
                                                                  blurHash: m
                                                                      .blurHash,
                                                                  originalFilename:
                                                                      m.originalFilename,
                                                                ))
                                                            .toList();
                                                  } finally {
                                                    _model.isDataUploading_edtImage =
                                                        false;
                                                  }
                                                  if (selectedUploadedFiles
                                                          .length ==
                                                      selectedMedia.length) {
                                                    safeSetState(() {
                                                      _model.uploadedLocalFile_edtImage =
                                                          selectedUploadedFiles
                                                              .first;
                                                    });
                                                  } else {
                                                    safeSetState(() {});
                                                    return;
                                                  }
                                                }
                                              },
                                              child: Container(
                                                width: 100.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      Icons.add_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 50.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          FlutterFlowDropDown<String>(
                                            controller: _model
                                                    .dropDownValueController2 ??=
                                                FormFieldController<String>(
                                                    null),
                                            options: ['principal', 'basique'],
                                            onChanged: (val) => safeSetState(
                                                () => _model.dropDownValue2 =
                                                    val),
                                            width: 200.0,
                                            height: 40.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                            hintText: 'type d\'image',
                                            icon: Icon(
                                              Icons.keyboard_arrow_down_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            elevation: 2.0,
                                            borderColor: Colors.transparent,
                                            borderWidth: 0.0,
                                            borderRadius: 8.0,
                                            margin:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            hidesUnderline: true,
                                            isOverButton: false,
                                            isSearchable: false,
                                            isMultiSelect: false,
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              {
                                                safeSetState(() => _model
                                                        .isDataUploading_uploadedReceipeimage =
                                                    true);
                                                var selectedUploadedFiles =
                                                    <FFUploadedFile>[];
                                                var selectedMedia =
                                                    <SelectedFile>[];
                                                var downloadUrls = <String>[];
                                                try {
                                                  selectedUploadedFiles = _model
                                                          .uploadedLocalFile_edtImage
                                                          .bytes!
                                                          .isNotEmpty
                                                      ? [
                                                          _model
                                                              .uploadedLocalFile_edtImage
                                                        ]
                                                      : <FFUploadedFile>[];
                                                  selectedMedia =
                                                      selectedFilesFromUploadedFiles(
                                                    selectedUploadedFiles,
                                                    storageFolderPath: 'image',
                                                  );
                                                  downloadUrls =
                                                      await uploadSupabaseStorageFiles(
                                                    bucketName: 'receipe',
                                                    selectedFiles:
                                                        selectedMedia,
                                                  );
                                                } finally {
                                                  _model.isDataUploading_uploadedReceipeimage =
                                                      false;
                                                }
                                                if (selectedUploadedFiles
                                                            .length ==
                                                        selectedMedia.length &&
                                                    downloadUrls.length ==
                                                        selectedMedia.length) {
                                                  safeSetState(() {
                                                    _model.uploadedLocalFile_uploadedReceipeimage =
                                                        selectedUploadedFiles
                                                            .first;
                                                    _model.uploadedFileUrl_uploadedReceipeimage =
                                                        downloadUrls.first;
                                                  });
                                                } else {
                                                  safeSetState(() {});
                                                  return;
                                                }
                                              }

                                              _model.insertTemporaryImage =
                                                  await ReceipeImageTable()
                                                      .insert({
                                                'temporary_receipe_id':
                                                    columnTemporaryReceipeRow
                                                        ?.id,
                                                'url': _model
                                                    .uploadedFileUrl_uploadedReceipeimage,
                                                'type': _model.dropDownValue2 ==
                                                        'principal'
                                                    ? 'main'
                                                    : 'basic',
                                              });
                                              safeSetState(() => _model
                                                  .requestCompleter2 = null);
                                              await _model
                                                  .waitForRequestCompleted2();
                                              safeSetState(() {
                                                _model.isDataUploading_edtImage =
                                                    false;
                                                _model.uploadedLocalFile_edtImage =
                                                    FFUploadedFile(
                                                        bytes:
                                                            Uint8List.fromList(
                                                                []),
                                                        originalFilename: '');
                                              });

                                              safeSetState(() {});
                                            },
                                            child: Icon(
                                              Icons.check_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 24.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    FutureBuilder<List<ReceipeImageRow>>(
                                      future: (_model.requestCompleter2 ??=
                                              Completer<List<ReceipeImageRow>>()
                                                ..complete(ReceipeImageTable()
                                                    .queryRows(
                                                  queryFn: (q) => q.eqOrNull(
                                                    'temporary_receipe_id',
                                                    columnTemporaryReceipeRow
                                                        ?.id,
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
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        List<ReceipeImageRow>
                                            temporaryImageWrapReceipeImageRowList =
                                            snapshot.data!;

                                        return Wrap(
                                          spacing: 20.0,
                                          runSpacing: 20.0,
                                          alignment: WrapAlignment.start,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.center,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.center,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: List.generate(
                                              temporaryImageWrapReceipeImageRowList
                                                  .length,
                                              (temporaryImageWrapIndex) {
                                            final temporaryImageWrapReceipeImageRow =
                                                temporaryImageWrapReceipeImageRowList[
                                                    temporaryImageWrapIndex];
                                            return Container(
                                              width: 150.0,
                                              height: 150.0,
                                              decoration: BoxDecoration(),
                                              child: Stack(
                                                alignment: AlignmentDirectional(
                                                    1.0, -1.0),
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      temporaryImageWrapReceipeImageRow
                                                          .url!,
                                                      width: 150.0,
                                                      height: 150.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            1.0, -1.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        if (temporaryImageWrapReceipeImageRow
                                                                .type ==
                                                            'main')
                                                          Expanded(
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Icon(
                                                                  Icons
                                                                      .star_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                                  size: 24.0,
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            _model.editImage =
                                                                true;
                                                            _model.imageId =
                                                                temporaryImageWrapReceipeImageRow
                                                                    .id;
                                                            safeSetState(() {});
                                                          },
                                                          child: Icon(
                                                            Icons.edit_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await ReceipeImageTable()
                                                                .delete(
                                                              matchingRows:
                                                                  (rows) => rows
                                                                      .eqOrNull(
                                                                'id',
                                                                temporaryImageWrapReceipeImageRow
                                                                    .id,
                                                              ),
                                                            );
                                                            safeSetState(() =>
                                                                _model.requestCompleter2 =
                                                                    null);
                                                            await _model
                                                                .waitForRequestCompleted2();
                                                          },
                                                          child: Icon(
                                                            Icons
                                                                .delete_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 24.0,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }),
                                        );
                                      },
                                    ),
                                    Text(
                                      'Temps de préparation',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                    Builder(
                                      builder: (context) {
                                        if (columnTemporaryReceipeRow
                                                ?.timeOfCookingMin ==
                                            null) {
                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 35.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .insertReceipetimeofcookingHourTextController,
                                                  focusNode: _model
                                                      .insertReceipetimeofcookingHourFocusNode,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  maxLines: null,
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  enableInteractiveSelection:
                                                      true,
                                                  validator: _model
                                                      .insertReceipetimeofcookingHourTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Text(
                                                'h',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Container(
                                                width: 50.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .insertReceipetimeofcookingMinuteTextController,
                                                  focusNode: _model
                                                      .insertReceipetimeofcookingMinuteFocusNode,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  maxLines: null,
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  enableInteractiveSelection:
                                                      true,
                                                  validator: _model
                                                      .insertReceipetimeofcookingMinuteTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Text(
                                                'min',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.insertTemporaryTimeofCooking =
                                                      await TemporaryReceipeTable()
                                                          .update(
                                                    data: {
                                                      'time of cooking hour':
                                                          int.tryParse(_model
                                                              .insertReceipetimeofcookingHourTextController
                                                              .text),
                                                      'time_of_cooking min':
                                                          int.tryParse(_model
                                                              .insertReceipetimeofcookingMinuteTextController
                                                              .text),
                                                    },
                                                    matchingRows: (rows) =>
                                                        rows.eqOrNull(
                                                      'id',
                                                      columnTemporaryReceipeRow
                                                          ?.id,
                                                    ),
                                                    returnRows: true,
                                                  );
                                                  safeSetState(() =>
                                                      _model.requestCompleter1 =
                                                          null);
                                                  await _model
                                                      .waitForRequestCompleted1();

                                                  safeSetState(() {});
                                                },
                                                child: Icon(
                                                  Icons.check_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 20.0)),
                                          );
                                        } else if (!_model.editTimeOfCooking &&
                                            (columnTemporaryReceipeRow
                                                    ?.timeOfCookingMin !=
                                                null)) {
                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                valueOrDefault<String>(
                                                  columnTemporaryReceipeRow
                                                      ?.timeOfCookingHour
                                                      ?.toString(),
                                                  '0',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'h',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  columnTemporaryReceipeRow
                                                      ?.timeOfCookingMin
                                                      ?.toString(),
                                                  '0',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Text(
                                                'min',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.editTimeOfCooking =
                                                      true;
                                                  safeSetState(() {});
                                                },
                                                child: Icon(
                                                  Icons.edit,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 20.0)),
                                          );
                                        } else {
                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 35.0,
                                                child: TextFormField(
                                                  controller: _model
                                                          .editReceipetimeofcookingHourTextController ??=
                                                      TextEditingController(
                                                    text: columnTemporaryReceipeRow
                                                                ?.timeOfCookingHour !=
                                                            null
                                                        ? columnTemporaryReceipeRow
                                                            ?.timeOfCookingHour
                                                            ?.toString()
                                                        : '0',
                                                  ),
                                                  focusNode: _model
                                                      .editReceipetimeofcookingHourFocusNode,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  maxLines: null,
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  enableInteractiveSelection:
                                                      true,
                                                  validator: _model
                                                      .editReceipetimeofcookingHourTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Text(
                                                'h',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              Container(
                                                width: 50.0,
                                                child: TextFormField(
                                                  controller: _model
                                                          .editReceipetimeofcookingMinTextController ??=
                                                      TextEditingController(
                                                    text: columnTemporaryReceipeRow
                                                                ?.timeOfCookingMin !=
                                                            null
                                                        ? columnTemporaryReceipeRow
                                                            ?.timeOfCookingMin
                                                            ?.toString()
                                                        : '0',
                                                  ),
                                                  focusNode: _model
                                                      .editReceipetimeofcookingMinFocusNode,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  maxLines: null,
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  enableInteractiveSelection:
                                                      true,
                                                  validator: _model
                                                      .editReceipetimeofcookingMinTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              Text(
                                                'min',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await TemporaryReceipeTable()
                                                      .update(
                                                    data: {
                                                      'time of cooking hour':
                                                          int.tryParse(_model
                                                              .insertReceipetimeofcookingHourTextController
                                                              .text),
                                                      'time_of_cooking min':
                                                          int.tryParse(_model
                                                              .insertReceipetimeofcookingMinuteTextController
                                                              .text),
                                                    },
                                                    matchingRows: (rows) =>
                                                        rows.eqOrNull(
                                                      'id',
                                                      columnTemporaryReceipeRow
                                                          ?.id,
                                                    ),
                                                  );
                                                  safeSetState(() =>
                                                      _model.requestCompleter1 =
                                                          null);
                                                  await _model
                                                      .waitForRequestCompleted1();
                                                  _model.editTimeOfCooking =
                                                      false;
                                                  safeSetState(() {});

                                                  safeSetState(() {});
                                                },
                                                child: Icon(
                                                  Icons.check_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 20.0)),
                                          );
                                        }
                                      },
                                    ),
                                    Text(
                                      'Description',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                    Builder(
                                      builder: (context) {
                                        if (columnTemporaryReceipeRow
                                                    ?.description ==
                                                null ||
                                            columnTemporaryReceipeRow
                                                    ?.description ==
                                                '') {
                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return 250.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return 300.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointLarge) {
                                                    return 350.0;
                                                  } else {
                                                    return 400.0;
                                                  }
                                                }(),
                                                child: TextFormField(
                                                  controller: _model
                                                      .insertDescriptionTextController,
                                                  focusNode: _model
                                                      .insertDescriptionFocusNode,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    hintText:
                                                        'Insérer une description',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  maxLines: null,
                                                  minLines: 5,
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  enableInteractiveSelection:
                                                      true,
                                                  validator: _model
                                                      .insertDescriptionTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  await TemporaryReceipeTable()
                                                      .update(
                                                    data: {
                                                      'description': _model
                                                          .insertDescriptionTextController
                                                          .text,
                                                    },
                                                    matchingRows: (rows) =>
                                                        rows.eqOrNull(
                                                      'id',
                                                      columnTemporaryReceipeRow
                                                          ?.id,
                                                    ),
                                                  );
                                                  safeSetState(() =>
                                                      _model.requestCompleter1 =
                                                          null);
                                                  await _model
                                                      .waitForRequestCompleted1();

                                                  safeSetState(() {});
                                                },
                                                child: Icon(
                                                  Icons.check_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 20.0)),
                                          );
                                        } else if ((columnTemporaryReceipeRow
                                                        ?.description !=
                                                    null &&
                                                columnTemporaryReceipeRow
                                                        ?.description !=
                                                    '') &&
                                            !_model.editDescription!) {
                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: 250.0,
                                                decoration: BoxDecoration(),
                                                child: Text(
                                                  valueOrDefault<String>(
                                                    columnTemporaryReceipeRow
                                                        ?.description,
                                                    'description',
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyLarge
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.editDescription = true;
                                                  safeSetState(() {});
                                                },
                                                child: Icon(
                                                  Icons.edit,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 30.0)),
                                          );
                                        } else {
                                          return Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                width: () {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return 250.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return 300.0;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointLarge) {
                                                    return 350.0;
                                                  } else {
                                                    return 400.0;
                                                  }
                                                }(),
                                                child: TextFormField(
                                                  controller: _model
                                                          .updateDescriptionTextController ??=
                                                      TextEditingController(
                                                    text:
                                                        valueOrDefault<String>(
                                                      columnTemporaryReceipeRow
                                                          ?.description,
                                                      'receipe description',
                                                    ),
                                                  ),
                                                  focusNode: _model
                                                      .updateDescriptionFocusNode,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    hintText:
                                                        'Insérer une description',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelMedium
                                                                  .fontStyle,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0x00000000),
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    filled: true,
                                                    fillColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                  maxLines: null,
                                                  minLines: 5,
                                                  cursorColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  enableInteractiveSelection:
                                                      true,
                                                  validator: _model
                                                      .updateDescriptionTextControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.updatedDecription =
                                                      await TemporaryReceipeTable()
                                                          .update(
                                                    data: {
                                                      'description': _model
                                                          .updateDescriptionTextController
                                                          .text,
                                                    },
                                                    matchingRows: (rows) =>
                                                        rows.eqOrNull(
                                                      'id',
                                                      columnTemporaryReceipeRow
                                                          ?.id,
                                                    ),
                                                    returnRows: true,
                                                  );
                                                  safeSetState(() =>
                                                      _model.requestCompleter1 =
                                                          null);
                                                  await _model
                                                      .waitForRequestCompleted1();
                                                  _model.editDescription =
                                                      false;
                                                  safeSetState(() {});

                                                  safeSetState(() {});
                                                },
                                                child: Icon(
                                                  Icons.check_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 20.0)),
                                          );
                                        }
                                      },
                                    ),
                                    Text(
                                      'ingredient',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 30.0),
                                          child: Builder(
                                            builder: (context) {
                                              final ingredientRow = _model
                                                  .ingredientList
                                                  .toList();

                                              return ReorderableListView
                                                  .builder(
                                                padding: EdgeInsets.zero,
                                                primary: false,
                                                proxyDecorator: (Widget child,
                                                        int index,
                                                        Animation<double>
                                                            animation) =>
                                                    Material(
                                                        color:
                                                            Colors.transparent,
                                                        child: child),
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: ingredientRow.length,
                                                itemBuilder: (context,
                                                    ingredientRowIndex) {
                                                  final ingredientRowItem =
                                                      ingredientRow[
                                                          ingredientRowIndex];
                                                  return Container(
                                                    key: ValueKey(
                                                        "ListView_hi5yn4nm" +
                                                            '_' +
                                                            ingredientRowIndex
                                                                .toString()),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  40.0,
                                                                  10.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                if (_model
                                                                        .ingredientID ==
                                                                    ingredientRowItem
                                                                        .id)
                                                                  wrapWithModel(
                                                                    model: _model
                                                                        .editingredientModels
                                                                        .getModel(
                                                                      ingredientRowItem
                                                                          .id,
                                                                      ingredientRowIndex,
                                                                    ),
                                                                    updateCallback: () =>
                                                                        safeSetState(
                                                                            () {}),
                                                                    child:
                                                                        InsertIngredientWidget(
                                                                      key: Key(
                                                                        'Keyb4k_${ingredientRowItem.id}',
                                                                      ),
                                                                      ingredients:
                                                                          ingredientRowItem,
                                                                    ),
                                                                  ),
                                                                if ((ingredientRowItem
                                                                            .id ==
                                                                        _model
                                                                            .stepID) &&
                                                                    ingredientRowItem
                                                                        .title!)
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              ingredientRowItem.name,
                                                                              'title',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  font: GoogleFonts.interTight(
                                                                                    fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                  ),
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            20.0)),
                                                                  ),
                                                                if ((ingredientRowItem
                                                                            .id ==
                                                                        _model
                                                                            .stepID) &&
                                                                    !ingredientRowItem
                                                                        .title!)
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if (ingredientRowItem
                                                                              .quantity !=
                                                                          null)
                                                                        Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              ingredientRowItem.quantity?.toString(),
                                                                              '0',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.inter(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      if ((ingredientRowItem.unit != null &&
                                                                              ingredientRowItem.unit !=
                                                                                  '') &&
                                                                          (ingredientRowItem.unit !=
                                                                              'sans unité'))
                                                                        Container(
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              ingredientRowItem.unit,
                                                                              'g',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  font: GoogleFonts.inter(
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      if (ingredientRowItem.name !=
                                                                              null &&
                                                                          ingredientRowItem.name !=
                                                                              '')
                                                                        Expanded(
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                            ),
                                                                            child:
                                                                                Text(
                                                                              valueOrDefault<String>(
                                                                                ingredientRowItem.name,
                                                                                'title',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    font: GoogleFonts.inter(
                                                                                      fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                      fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                    ),
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                    fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                    ].divide(SizedBox(
                                                                        width:
                                                                            5.0)),
                                                                  ),
                                                              ],
                                                            ),
                                                          ),
                                                          if (ingredientRowItem
                                                                  .id !=
                                                              _model
                                                                  .ingredientID)
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                _model.ingredientID =
                                                                    ingredientRowItem
                                                                        .id;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .edit_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 24.0,
                                                              ),
                                                            ),
                                                          if (_model
                                                                  .ingredientID ==
                                                              ingredientRowItem
                                                                  .id)
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                _model.ingredientID =
                                                                    null;
                                                                _model.editIngredient =
                                                                    false;
                                                                safeSetState(
                                                                    () {});
                                                                _model.updatedIngredient =
                                                                    await IngredientsTable()
                                                                        .update(
                                                                  data: {
                                                                    'name': _model
                                                                        .editingredientModels
                                                                        .getValueForKey(
                                                                      ingredientRowItem
                                                                          .id,
                                                                      (m) => m
                                                                          .nameTextController
                                                                          .text,
                                                                    ),
                                                                    'unit': _model
                                                                        .editingredientModels
                                                                        .getValueForKey(
                                                                      _model
                                                                          .editingredientModels
                                                                          .getValueForKey(
                                                                        ingredientRowItem
                                                                            .id,
                                                                        (m) => m
                                                                            .unitValue,
                                                                      )!,
                                                                      (m) => m
                                                                          .unitValue,
                                                                    ),
                                                                    'quantity':
                                                                        double.tryParse(_model.editingredientModels.getValueForKey(
                                                                              ingredientRowItem.id,
                                                                              (m) => m.quantityTextController.text,
                                                                            ) ??
                                                                            ''),
                                                                    'title': _model
                                                                        .editingredientModels
                                                                        .getValueForKey(
                                                                      ingredientRowItem
                                                                          .id,
                                                                      (m) => m
                                                                          .checkboxValue,
                                                                    ),
                                                                    'round_type_index':
                                                                        FFAppState()
                                                                            .roundtTypeIndex,
                                                                  },
                                                                  matchingRows:
                                                                      (rows) =>
                                                                          rows.eqOrNull(
                                                                    'id',
                                                                    ingredientRowItem
                                                                        .id,
                                                                  ),
                                                                  returnRows:
                                                                      true,
                                                                );
                                                                _model
                                                                    .updateIngredientListAtIndex(
                                                                  ingredientRowIndex,
                                                                  (_) => _model
                                                                      .updatedIngredient!
                                                                      .firstOrNull!,
                                                                );
                                                                safeSetState(
                                                                    () {});
                                                                FFAppState()
                                                                    .roundtTypeIndex = 0;
                                                                safeSetState(
                                                                    () {});

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Icon(
                                                                Icons.check,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 24.0,
                                                              ),
                                                            ),
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              _model.deletedIIngredient =
                                                                  await IngredientsTable()
                                                                      .delete(
                                                                matchingRows:
                                                                    (rows) => rows
                                                                        .eqOrNull(
                                                                  'id',
                                                                  ingredientRowItem
                                                                      .id,
                                                                ),
                                                                returnRows:
                                                                    true,
                                                              );
                                                              _model.removeAtIndexFromIngredientList(
                                                                  ingredientRowIndex);
                                                              safeSetState(
                                                                  () {});
                                                              _model.deletedIngredientRow =
                                                                  await SupabaseGroup
                                                                      .updateIngredientIndexCall
                                                                      .call(
                                                                ingredientsJson:
                                                                    functions.listOfIngredientsJSON(_model
                                                                        .ingredientList
                                                                        .toList()),
                                                                temporaryReceipeId:
                                                                    columnTemporaryReceipeRow
                                                                        ?.id,
                                                              );

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .delete_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 5.0)),
                                                      ),
                                                    ),
                                                  );
                                                },
                                                onReorder: (int
                                                        reorderableOldIndex,
                                                    int reorderableNewIndex) async {
                                                  if (reorderableNewIndex >
                                                      reorderableOldIndex) {
                                                    _model.insertAtIndexInIngredientList(
                                                        reorderableNewIndex,
                                                        ingredientRow
                                                            .elementAtOrNull(
                                                                reorderableOldIndex)!);
                                                    safeSetState(() {});
                                                    _model
                                                        .removeAtIndexFromIngredientList(
                                                            reorderableOldIndex);
                                                    safeSetState(() {});
                                                  } else {
                                                    _model.insertAtIndexInIngredientList(
                                                        reorderableNewIndex,
                                                        ingredientRow
                                                            .elementAtOrNull(
                                                                reorderableOldIndex)!);
                                                    safeSetState(() {});
                                                    _model
                                                        .removeAtIndexFromIngredientList(
                                                            reorderableOldIndex +
                                                                1);
                                                    safeSetState(() {});
                                                  }

                                                  _model.updatedIngredientRow =
                                                      await SupabaseGroup
                                                          .updateIngredientIndexCall
                                                          .call(
                                                    temporaryReceipeId:
                                                        columnTemporaryReceipeRow
                                                            ?.id,
                                                    ingredientsJson: functions
                                                        .listOfIngredientsJSON(
                                                            _model
                                                                .ingredientList
                                                                .toList()),
                                                  );

                                                  safeSetState(() {});
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 40.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: wrapWithModel(
                                                  model: _model
                                                      .insertIngredientModel,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child:
                                                      InsertIngredientWidget(),
                                                ),
                                              ),
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.newIngredient =
                                                      await IngredientsTable()
                                                          .insert({
                                                    'title': _model
                                                        .insertIngredientModel
                                                        .checkboxValue,
                                                    'name': _model
                                                        .insertIngredientModel
                                                        .nameTextController
                                                        .text,
                                                    'quantity': double.tryParse(
                                                        _model
                                                            .insertIngredientModel
                                                            .quantityTextController
                                                            .text),
                                                    'temporary_receipe_id':
                                                        columnTemporaryReceipeRow
                                                            ?.id,
                                                    'unit': _model
                                                        .insertIngredientModel
                                                        .unitValue,
                                                    'round_type_index':
                                                        FFAppState()
                                                            .roundtTypeIndex,
                                                    'index': _model
                                                        .ingredientList.length,
                                                  });
                                                  _model.addToIngredientList(
                                                      _model.newIngredient!);
                                                  safeSetState(() {});
                                                  FFAppState().roundtTypeIndex =
                                                      0;
                                                  safeSetState(() {});
                                                  await Future.wait([
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model
                                                            .insertIngredientModel
                                                            .roundValueController
                                                            ?.reset();
                                                        _model
                                                            .insertIngredientModel
                                                            .roundValue = null;
                                                        _model
                                                            .insertIngredientModel
                                                            .unitValueController
                                                            ?.reset();
                                                        _model
                                                            .insertIngredientModel
                                                            .unitValue = null;
                                                      });
                                                    }),
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model
                                                            .insertIngredientModel
                                                            .quantityTextController
                                                            ?.text = _model
                                                                    .insertIngredientModel
                                                                    .widget!
                                                                    .ingredients
                                                                    ?.quantity !=
                                                                null
                                                            ? _model
                                                                .insertIngredientModel
                                                                .widget!
                                                                .ingredients!
                                                                .quantity!
                                                                .toString()
                                                            : '';

                                                        _model
                                                            .insertIngredientModel
                                                            .nameTextController
                                                            ?.text = _model
                                                                        .insertIngredientModel
                                                                        .widget!
                                                                        .ingredients
                                                                        ?.name !=
                                                                    null &&
                                                                _model
                                                                        .insertIngredientModel
                                                                        .widget!
                                                                        .ingredients
                                                                        ?.name !=
                                                                    ''
                                                            ? _model
                                                                .insertIngredientModel
                                                                .widget!
                                                                .ingredients!
                                                                .name!
                                                            : '';
                                                      });
                                                    }),
                                                    Future(() async {
                                                      safeSetState(() {
                                                        _model
                                                            .insertIngredientModel
                                                            .checkboxValue = _model
                                                                    .insertIngredientModel
                                                                    .widget!
                                                                    .ingredients
                                                                    ?.title !=
                                                                null
                                                            ? _model
                                                                .insertIngredientModel
                                                                .widget!
                                                                .ingredients!
                                                                .title!
                                                            : false;
                                                      });
                                                    }),
                                                  ]);

                                                  safeSetState(() {});
                                                },
                                                child: Icon(
                                                  Icons.add_circle_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 24.0,
                                                ),
                                              ),
                                            ].divide(SizedBox(width: 10.0)),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Etape  de la recette',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                    FutureBuilder<ApiCallResponse>(
                                      future: SupabaseGroup
                                          .selectStepTemporaryReceipeCall
                                          .call(
                                        temporaryReceipeId:
                                            columnTemporaryReceipeRow?.id,
                                      ),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50.0,
                                              height: 50.0,
                                              child: CircularProgressIndicator(
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                                ),
                                              ),
                                            ),
                                          );
                                        }
                                        final editStepSelectStepTemporaryReceipeResponse =
                                            snapshot.data!;

                                        return Container(
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 30.0),
                                                child: Builder(
                                                  builder: (context) {
                                                    final step = _model.stepList
                                                        .toList();

                                                    return ReorderableListView
                                                        .builder(
                                                      padding: EdgeInsets.zero,
                                                      primary: false,
                                                      proxyDecorator: (Widget
                                                                  child,
                                                              int index,
                                                              Animation<double>
                                                                  animation) =>
                                                          Material(
                                                              color: Colors
                                                                  .transparent,
                                                              child: child),
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount: step.length,
                                                      itemBuilder:
                                                          (context, stepIndex) {
                                                        final stepItem =
                                                            step[stepIndex];
                                                        return Container(
                                                          key: ValueKey(
                                                              "ListView_zg36j8op" +
                                                                  '_' +
                                                                  stepIndex
                                                                      .toString()),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        40.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      if (stepItem
                                                                              .id ==
                                                                          _model
                                                                              .stepID)
                                                                        wrapWithModel(
                                                                          model: _model
                                                                              .editStepModels
                                                                              .getModel(
                                                                            stepItem.id,
                                                                            stepIndex,
                                                                          ),
                                                                          updateCallback: () =>
                                                                              safeSetState(() {}),
                                                                          child:
                                                                              InsertStepWidget(
                                                                            key:
                                                                                Key(
                                                                              'Keyfqa_${stepItem.id}',
                                                                            ),
                                                                            step:
                                                                                stepItem,
                                                                          ),
                                                                        ),
                                                                      if ((stepItem.id !=
                                                                              _model.stepID) &&
                                                                          stepItem.title!)
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            if (stepItem.text != null &&
                                                                                stepItem.text != '')
                                                                              Expanded(
                                                                                child: Container(
                                                                                  decoration: BoxDecoration(),
                                                                                  child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      stepItem.text,
                                                                                      'text',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                          font: GoogleFonts.interTight(
                                                                                            fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                          ),
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      if (stepItem
                                                                              .id !=
                                                                          _model
                                                                              .stepID)
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            if (stepItem.number !=
                                                                                null)
                                                                              Container(
                                                                                decoration: BoxDecoration(),
                                                                                child: Text(
                                                                                  valueOrDefault<String>(
                                                                                    stepItem.number?.toString(),
                                                                                    '0',
                                                                                  ),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        font: GoogleFonts.inter(
                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            if (stepItem.text != null &&
                                                                                stepItem.text != '')
                                                                              Expanded(
                                                                                child: Container(
                                                                                  decoration: BoxDecoration(),
                                                                                  child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      stepItem.text,
                                                                                      'text',
                                                                                    ),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          font: GoogleFonts.inter(
                                                                                            fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                            fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                          ),
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                          ].divide(SizedBox(width: 5.0)),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                if (stepItem
                                                                        .id ==
                                                                    _model
                                                                        .stepID)
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      _model.updatedStep =
                                                                          await StepTable()
                                                                              .update(
                                                                        data: {
                                                                          'text': _model
                                                                              .editStepModels
                                                                              .getValueForKey(
                                                                            stepItem.id,
                                                                            (m) =>
                                                                                m.textTextController.text,
                                                                          ),
                                                                          'number': double.tryParse(_model.editStepModels.getValueForKey(
                                                                                stepItem.id,
                                                                                (m) => m.numberTextController.text,
                                                                              ) ??
                                                                              ''),
                                                                        },
                                                                        matchingRows:
                                                                            (rows) =>
                                                                                rows.eqOrNull(
                                                                          'id',
                                                                          stepItem
                                                                              .id,
                                                                        ),
                                                                        returnRows:
                                                                            true,
                                                                      );
                                                                      _model
                                                                          .updateStepListAtIndex(
                                                                        stepIndex,
                                                                        (_) => _model
                                                                            .updatedStep!
                                                                            .firstOrNull!,
                                                                      );
                                                                      _model.stepID =
                                                                          null;
                                                                      safeSetState(
                                                                          () {});

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .check_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                if (stepItem
                                                                        .id !=
                                                                    _model
                                                                        .stepID)
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      _model.stepID =
                                                                          stepItem
                                                                              .id;
                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .edit,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.removeAtIndexFromStepList(
                                                                        stepIndex);
                                                                    safeSetState(
                                                                        () {});
                                                                    _model.deletedStep =
                                                                        await SupabaseGroup
                                                                            .stepReorderingCall
                                                                            .call(
                                                                      stepsJson: functions.newCustomFunction2(_model
                                                                          .stepList
                                                                          .toList()),
                                                                      temporaryReceipId:
                                                                          columnTemporaryReceipeRow
                                                                              ?.id,
                                                                    );

                                                                    safeSetState(
                                                                        () {});
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .delete_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      onReorder: (int
                                                              reorderableOldIndex,
                                                          int reorderableNewIndex) async {
                                                        if (reorderableNewIndex >
                                                            reorderableOldIndex) {
                                                          _model.insertAtIndexInStepList(
                                                              reorderableNewIndex,
                                                              step.elementAtOrNull(
                                                                  reorderableOldIndex)!);
                                                          safeSetState(() {});
                                                          _model.removeAtIndexFromStepList(
                                                              reorderableOldIndex);
                                                          safeSetState(() {});
                                                        } else {
                                                          _model.insertAtIndexInStepList(
                                                              reorderableNewIndex,
                                                              step.elementAtOrNull(
                                                                  reorderableOldIndex)!);
                                                          safeSetState(() {});
                                                          _model.removeAtIndexFromStepList(
                                                              reorderableOldIndex +
                                                                  1);
                                                          safeSetState(() {});
                                                        }

                                                        _model.reorderedStep =
                                                            await SupabaseGroup
                                                                .stepReorderingCall
                                                                .call(
                                                          temporaryReceipId:
                                                              columnTemporaryReceipeRow
                                                                  ?.id,
                                                          stepsJson: functions
                                                              .newCustomFunction2(
                                                                  _model
                                                                      .stepList
                                                                      .toList()),
                                                        );

                                                        safeSetState(() {});
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 40.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .insertStepModel,
                                                        updateCallback: () =>
                                                            safeSetState(() {}),
                                                        child:
                                                            InsertStepWidget(),
                                                      ),
                                                    ),
                                                    InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        _model.newStep =
                                                            await StepTable()
                                                                .insert({
                                                          'text': _model
                                                              .insertStepModel
                                                              .textTextController
                                                              .text,
                                                          'number': double
                                                              .tryParse(_model
                                                                  .insertStepModel
                                                                  .numberTextController
                                                                  .text),
                                                          'temprorary_receipe_id':
                                                              columnTemporaryReceipeRow
                                                                  ?.id,
                                                          'index': _model
                                                              .stepList.length,
                                                          'title': _model
                                                              .insertStepModel
                                                              .checkboxValue,
                                                        });
                                                        _model
                                                            .insertAtIndexInStepList(
                                                                _model.newStep!
                                                                    .index!,
                                                                _model
                                                                    .newStep!);
                                                        safeSetState(() {});
                                                        await Future.wait([
                                                          Future(() async {
                                                            safeSetState(() {
                                                              _model
                                                                  .insertStepModel
                                                                  .checkboxValue = _model
                                                                          .insertStepModel
                                                                          .widget!
                                                                          .step
                                                                          ?.title !=
                                                                      null
                                                                  ? _model
                                                                      .insertStepModel
                                                                      .widget!
                                                                      .step!
                                                                      .title!
                                                                  : false;
                                                            });
                                                          }),
                                                          Future(() async {
                                                            safeSetState(() {
                                                              _model
                                                                  .insertStepModel
                                                                  .numberTextController
                                                                  ?.text = _model
                                                                          .insertStepModel
                                                                          .widget!
                                                                          .step
                                                                          ?.number !=
                                                                      null
                                                                  ? _model
                                                                      .insertStepModel
                                                                      .widget!
                                                                      .step!
                                                                      .number!
                                                                      .toString()
                                                                  : '';

                                                              _model
                                                                  .insertStepModel
                                                                  .textTextController
                                                                  ?.text = _model
                                                                              .insertStepModel
                                                                              .widget!
                                                                              .step
                                                                              ?.text !=
                                                                          null &&
                                                                      _model
                                                                              .insertStepModel
                                                                              .widget!
                                                                              .step
                                                                              ?.text !=
                                                                          ''
                                                                  ? _model
                                                                      .insertStepModel
                                                                      .widget!
                                                                      .step!
                                                                      .text!
                                                                  : '';
                                                            });
                                                          }),
                                                        ]);

                                                        safeSetState(() {});
                                                      },
                                                      child: Icon(
                                                        Icons
                                                            .add_circle_outlined,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Région culinaire',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleMedium
                                                      .override(
                                                        font: GoogleFonts
                                                            .interTight(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleMedium
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .fontStyle,
                                                      ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if ((columnTemporaryReceipeRow
                                                                      ?.foodRegion !=
                                                                  null &&
                                                              columnTemporaryReceipeRow
                                                                      ?.foodRegion !=
                                                                  '') &&
                                                          !_model
                                                              .editFoodRegion)
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                columnTemporaryReceipeRow
                                                                    ?.foodRegion,
                                                                'food region',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .inter(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                _model.editFoodRegion =
                                                                    true;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Icon(
                                                                Icons.edit,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                size: 32.0,
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 20.0)),
                                                        ),
                                                      if ((columnTemporaryReceipeRow
                                                                      ?.foodRegion !=
                                                                  null &&
                                                              columnTemporaryReceipeRow
                                                                      ?.foodRegion !=
                                                                  '') &&
                                                          _model.editFoodRegion)
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            FutureBuilder<
                                                                List<
                                                                    FoodRegionRow>>(
                                                              future:
                                                                  FoodRegionTable()
                                                                      .queryRows(
                                                                queryFn: (q) =>
                                                                    q,
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<FoodRegionRow>
                                                                    foodRegionEditFoodRegionRowList =
                                                                    snapshot
                                                                        .data!;

                                                                return FlutterFlowDropDown<
                                                                    String>(
                                                                  controller: _model
                                                                          .foodRegionEditValueController ??=
                                                                      FormFieldController<
                                                                          String>(
                                                                    _model
                                                                        .foodRegionEditValue ??= columnTemporaryReceipeRow?.foodRegion !=
                                                                                null &&
                                                                            columnTemporaryReceipeRow?.foodRegion !=
                                                                                ''
                                                                        ? columnTemporaryReceipeRow
                                                                            ?.foodRegion
                                                                        : '',
                                                                  ),
                                                                  options: foodRegionEditFoodRegionRowList
                                                                      .map((e) => valueOrDefault<String>(
                                                                            e.name,
                                                                            'name',
                                                                          ))
                                                                      .toList(),
                                                                  onChanged: (val) =>
                                                                      safeSetState(() =>
                                                                          _model.foodRegionEditValue =
                                                                              val),
                                                                  width: 200.0,
                                                                  height: 40.0,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  icon: Icon(
                                                                    Icons
                                                                        .keyboard_arrow_down_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  elevation:
                                                                      2.0,
                                                                  borderColor:
                                                                      Colors
                                                                          .transparent,
                                                                  borderWidth:
                                                                      0.0,
                                                                  borderRadius:
                                                                      8.0,
                                                                  margin: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                                  hidesUnderline:
                                                                      true,
                                                                  isOverButton:
                                                                      false,
                                                                  isSearchable:
                                                                      false,
                                                                  isMultiSelect:
                                                                      false,
                                                                );
                                                              },
                                                            ),
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                _model.newRegion =
                                                                    await TemporaryReceipeTable()
                                                                        .update(
                                                                  data: {
                                                                    'Food region':
                                                                        _model
                                                                            .foodRegionEditValue,
                                                                  },
                                                                  matchingRows:
                                                                      (rows) =>
                                                                          rows.eqOrNull(
                                                                    'id',
                                                                    columnTemporaryReceipeRow
                                                                        ?.id,
                                                                  ),
                                                                  returnRows:
                                                                      true,
                                                                );
                                                                safeSetState(() =>
                                                                    _model.requestCompleter1 =
                                                                        null);
                                                                await _model
                                                                    .waitForRequestCompleted1();
                                                                _model.editFoodRegion =
                                                                    false;
                                                                safeSetState(
                                                                    () {});

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .check_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 32.0,
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 20.0)),
                                                        ),
                                                      if (columnTemporaryReceipeRow
                                                                  ?.foodRegion ==
                                                              null ||
                                                          columnTemporaryReceipeRow
                                                                  ?.foodRegion ==
                                                              '')
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            FutureBuilder<
                                                                List<
                                                                    FoodRegionRow>>(
                                                              future:
                                                                  FoodRegionTable()
                                                                      .queryRows(
                                                                queryFn: (q) =>
                                                                    q,
                                                              ),
                                                              builder: (context,
                                                                  snapshot) {
                                                                // Customize what your widget looks like when it's loading.
                                                                if (!snapshot
                                                                    .hasData) {
                                                                  return Center(
                                                                    child:
                                                                        SizedBox(
                                                                      width:
                                                                          50.0,
                                                                      height:
                                                                          50.0,
                                                                      child:
                                                                          CircularProgressIndicator(
                                                                        valueColor:
                                                                            AlwaysStoppedAnimation<Color>(
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  );
                                                                }
                                                                List<FoodRegionRow>
                                                                    foodRegionCreateFoodRegionRowList =
                                                                    snapshot
                                                                        .data!;

                                                                return FlutterFlowDropDown<
                                                                    String>(
                                                                  controller: _model
                                                                          .foodRegionCreateValueController ??=
                                                                      FormFieldController<
                                                                          String>(
                                                                    _model
                                                                        .foodRegionCreateValue ??= columnTemporaryReceipeRow?.foodRegion !=
                                                                                null &&
                                                                            columnTemporaryReceipeRow?.foodRegion !=
                                                                                ''
                                                                        ? columnTemporaryReceipeRow
                                                                            ?.foodRegion
                                                                        : '',
                                                                  ),
                                                                  options: foodRegionCreateFoodRegionRowList
                                                                      .map((e) => valueOrDefault<String>(
                                                                            e.name,
                                                                            'name',
                                                                          ))
                                                                      .toList(),
                                                                  onChanged: (val) =>
                                                                      safeSetState(() =>
                                                                          _model.foodRegionCreateValue =
                                                                              val),
                                                                  width: 200.0,
                                                                  height: 40.0,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .inter(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .fontStyle,
                                                                      ),
                                                                  icon: Icon(
                                                                    Icons
                                                                        .keyboard_arrow_down_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    size: 24.0,
                                                                  ),
                                                                  fillColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  elevation:
                                                                      2.0,
                                                                  borderColor:
                                                                      Colors
                                                                          .transparent,
                                                                  borderWidth:
                                                                      0.0,
                                                                  borderRadius:
                                                                      8.0,
                                                                  margin: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                                  hidesUnderline:
                                                                      true,
                                                                  isOverButton:
                                                                      false,
                                                                  isSearchable:
                                                                      false,
                                                                  isMultiSelect:
                                                                      false,
                                                                );
                                                              },
                                                            ),
                                                            InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                _model.updateRegion =
                                                                    await TemporaryReceipeTable()
                                                                        .update(
                                                                  data: {
                                                                    'Food region':
                                                                        _model
                                                                            .foodRegionCreateValue,
                                                                  },
                                                                  matchingRows:
                                                                      (rows) =>
                                                                          rows.eqOrNull(
                                                                    'id',
                                                                    columnTemporaryReceipeRow
                                                                        ?.id,
                                                                  ),
                                                                  returnRows:
                                                                      true,
                                                                );
                                                                safeSetState(() =>
                                                                    _model.requestCompleter1 =
                                                                        null);
                                                                await _model
                                                                    .waitForRequestCompleted1();

                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .check_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 32.0,
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 20.0)),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.all(10.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        'Difficulté',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .interTight(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            if ((columnTemporaryReceipeRow
                                                                            ?.difficulty !=
                                                                        null &&
                                                                    columnTemporaryReceipeRow
                                                                            ?.difficulty !=
                                                                        '') &&
                                                                !_model
                                                                    .editDifficulty)
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      columnTemporaryReceipeRow
                                                                          ?.difficulty,
                                                                      'difficulté',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.inter(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                          ),
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      _model.editDifficulty =
                                                                          false;
                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .edit,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      size:
                                                                          32.0,
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        20.0)),
                                                              ),
                                                            if ((columnTemporaryReceipeRow
                                                                            ?.difficulty !=
                                                                        null &&
                                                                    columnTemporaryReceipeRow
                                                                            ?.difficulty !=
                                                                        '') &&
                                                                _model
                                                                    .editDifficulty)
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  FutureBuilder<
                                                                      List<
                                                                          DifficultyRow>>(
                                                                    future: DifficultyTable()
                                                                        .queryRows(
                                                                      queryFn:
                                                                          (q) =>
                                                                              q,
                                                                    ),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<DifficultyRow>
                                                                          difficulyEditDifficultyRowList =
                                                                          snapshot
                                                                              .data!;

                                                                      return FlutterFlowDropDown<
                                                                          String>(
                                                                        controller:
                                                                            _model.difficulyEditValueController ??=
                                                                                FormFieldController<String>(
                                                                          _model
                                                                              .difficulyEditValue ??= columnTemporaryReceipeRow?.difficulty != null &&
                                                                                  columnTemporaryReceipeRow?.difficulty != ''
                                                                              ? columnTemporaryReceipeRow?.difficulty
                                                                              : '',
                                                                        ),
                                                                        options: difficulyEditDifficultyRowList
                                                                            .map((e) => valueOrDefault<String>(
                                                                                  e.name,
                                                                                  'name',
                                                                                ))
                                                                            .toList(),
                                                                        onChanged:
                                                                            (val) =>
                                                                                safeSetState(() => _model.difficulyEditValue = val),
                                                                        width:
                                                                            200.0,
                                                                        height:
                                                                            40.0,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.inter(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).primaryBackground,
                                                                        elevation:
                                                                            2.0,
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderWidth:
                                                                            0.0,
                                                                        borderRadius:
                                                                            8.0,
                                                                        margin: EdgeInsetsDirectional.fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                        hidesUnderline:
                                                                            true,
                                                                        isOverButton:
                                                                            false,
                                                                        isSearchable:
                                                                            false,
                                                                        isMultiSelect:
                                                                            false,
                                                                      );
                                                                    },
                                                                  ),
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      await TemporaryReceipeTable()
                                                                          .update(
                                                                        data: {
                                                                          'difficulty':
                                                                              _model.difficulyEditValue,
                                                                        },
                                                                        matchingRows:
                                                                            (rows) =>
                                                                                rows.eqOrNull(
                                                                          'id',
                                                                          columnTemporaryReceipeRow
                                                                              ?.id,
                                                                        ),
                                                                      );
                                                                      safeSetState(() =>
                                                                          _model.requestCompleter1 =
                                                                              null);
                                                                      await _model
                                                                          .waitForRequestCompleted1();
                                                                      _model.editDifficulty =
                                                                          true;
                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .check_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          32.0,
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        20.0)),
                                                              ),
                                                            if (columnTemporaryReceipeRow
                                                                        ?.difficulty ==
                                                                    null ||
                                                                columnTemporaryReceipeRow
                                                                        ?.difficulty ==
                                                                    '')
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  FutureBuilder<
                                                                      List<
                                                                          DifficultyRow>>(
                                                                    future: DifficultyTable()
                                                                        .queryRows(
                                                                      queryFn:
                                                                          (q) =>
                                                                              q,
                                                                    ),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            child:
                                                                                CircularProgressIndicator(
                                                                              valueColor: AlwaysStoppedAnimation<Color>(
                                                                                FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<DifficultyRow>
                                                                          difficultyCreateDifficultyRowList =
                                                                          snapshot
                                                                              .data!;

                                                                      return FlutterFlowDropDown<
                                                                          String>(
                                                                        controller:
                                                                            _model.difficultyCreateValueController ??=
                                                                                FormFieldController<String>(
                                                                          _model
                                                                              .difficultyCreateValue ??= columnTemporaryReceipeRow?.difficulty != null &&
                                                                                  columnTemporaryReceipeRow?.difficulty != ''
                                                                              ? columnTemporaryReceipeRow?.difficulty
                                                                              : '',
                                                                        ),
                                                                        options: difficultyCreateDifficultyRowList
                                                                            .map((e) => valueOrDefault<String>(
                                                                                  e.name,
                                                                                  'name',
                                                                                ))
                                                                            .toList(),
                                                                        onChanged:
                                                                            (val) =>
                                                                                safeSetState(() => _model.difficultyCreateValue = val),
                                                                        width:
                                                                            200.0,
                                                                        height:
                                                                            40.0,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              font: GoogleFonts.inter(
                                                                                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                              ),
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                                                              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                                                            ),
                                                                        icon:
                                                                            Icon(
                                                                          Icons
                                                                              .keyboard_arrow_down_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        fillColor:
                                                                            FlutterFlowTheme.of(context).primaryBackground,
                                                                        elevation:
                                                                            2.0,
                                                                        borderColor:
                                                                            Colors.transparent,
                                                                        borderWidth:
                                                                            0.0,
                                                                        borderRadius:
                                                                            8.0,
                                                                        margin: EdgeInsetsDirectional.fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                        hidesUnderline:
                                                                            true,
                                                                        isOverButton:
                                                                            false,
                                                                        isSearchable:
                                                                            false,
                                                                        isMultiSelect:
                                                                            false,
                                                                      );
                                                                    },
                                                                  ),
                                                                  InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      await TemporaryReceipeTable()
                                                                          .update(
                                                                        data: {
                                                                          'difficulty':
                                                                              _model.difficultyCreateValue,
                                                                        },
                                                                        matchingRows:
                                                                            (rows) =>
                                                                                rows.eqOrNull(
                                                                          'id',
                                                                          columnTemporaryReceipeRow
                                                                              ?.id,
                                                                        ),
                                                                      );
                                                                      safeSetState(() =>
                                                                          _model.requestCompleter1 =
                                                                              null);
                                                                      await _model
                                                                          .waitForRequestCompleted1();
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .check_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          32.0,
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        20.0)),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Tags associés',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        FutureBuilder<List<ReceipeTagsRow>>(
                                          future: (_model.requestCompleter3 ??=
                                                  Completer<
                                                      List<ReceipeTagsRow>>()
                                                    ..complete(
                                                        ReceipeTagsTable()
                                                            .queryRows(
                                                      queryFn: (q) =>
                                                          q.eqOrNull(
                                                        'temporary_receipe_id',
                                                        columnTemporaryReceipeRow
                                                            ?.id,
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
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<ReceipeTagsRow>
                                                wrapReceipeTagsRowList =
                                                snapshot.data!;

                                            return Wrap(
                                              spacing: 10.0,
                                              runSpacing: 10.0,
                                              alignment: WrapAlignment.start,
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.start,
                                              direction: Axis.horizontal,
                                              runAlignment: WrapAlignment.start,
                                              verticalDirection:
                                                  VerticalDirection.down,
                                              clipBehavior: Clip.none,
                                              children: List.generate(
                                                  wrapReceipeTagsRowList.length,
                                                  (wrapIndex) {
                                                final wrapReceipeTagsRow =
                                                    wrapReceipeTagsRowList[
                                                        wrapIndex];
                                                return Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiary,
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 5.0,
                                                                10.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            wrapReceipeTagsRow
                                                                .name,
                                                            'name',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await ReceipeTagsTable()
                                                                .delete(
                                                              matchingRows:
                                                                  (rows) => rows
                                                                      .eqOrNull(
                                                                'id',
                                                                wrapReceipeTagsRow
                                                                    .id,
                                                              ),
                                                            );
                                                            safeSetState(() =>
                                                                _model.requestCompleter3 =
                                                                    null);
                                                            await _model
                                                                .waitForRequestCompleted3();
                                                          },
                                                          child: Icon(
                                                            Icons.clear_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            size: 16.0,
                                                          ),
                                                        ),
                                                      ].divide(
                                                          SizedBox(width: 5.0)),
                                                    ),
                                                  ),
                                                );
                                              }),
                                            );
                                          },
                                        ),
                                        FutureBuilder<List<TagsRow>>(
                                          future: TagsTable().queryRows(
                                            queryFn: (q) => q,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child:
                                                      CircularProgressIndicator(
                                                    valueColor:
                                                        AlwaysStoppedAnimation<
                                                            Color>(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }
                                            List<TagsRow>
                                                choiceChipsTagsRowList =
                                                snapshot.data!;

                                            return FlutterFlowChoiceChips(
                                              options: choiceChipsTagsRowList
                                                  .map((e) => e.name)
                                                  .withoutNulls
                                                  .toList()
                                                  .map((label) =>
                                                      ChipData(label))
                                                  .toList(),
                                              onChanged: (val) async {
                                                safeSetState(() =>
                                                    _model.choiceChipsValue =
                                                        val?.firstOrNull);
                                                await ReceipeTagsTable()
                                                    .insert({
                                                  'temporary_receipe_id':
                                                      columnTemporaryReceipeRow
                                                          ?.id,
                                                  'name':
                                                      _model.choiceChipsValue,
                                                });
                                                safeSetState(() => _model
                                                    .requestCompleter3 = null);
                                                await _model
                                                    .waitForRequestCompleted3();
                                              },
                                              selectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .info,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                iconColor:
                                                    FlutterFlowTheme.of(context)
                                                        .info,
                                                iconSize: 16.0,
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              unselectedChipStyle: ChipStyle(
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .fontStyle,
                                                      ),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .fontStyle,
                                                    ),
                                                iconColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                iconSize: 16.0,
                                                elevation: 0.0,
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              chipSpacing: 8.0,
                                              rowSpacing: 8.0,
                                              multiselect: false,
                                              alignment: WrapAlignment.start,
                                              controller: _model
                                                      .choiceChipsValueController ??=
                                                  FormFieldController<
                                                      List<String>>(
                                                [],
                                              ),
                                              wrapped: true,
                                            );
                                          },
                                        ),
                                      ].divide(SizedBox(height: 20.0)),
                                    ),
                                    Text(
                                      'Type',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            font: GoogleFonts.interTight(
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .fontStyle,
                                            ),
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model:
                                              _model.temporaryReceipeTypeModel1,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TemporaryReceipeTypeWidget(
                                            type: 'Petit-déjeuner',
                                            receipeId:
                                                columnTemporaryReceipeRow!.id,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model:
                                              _model.temporaryReceipeTypeModel2,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TemporaryReceipeTypeWidget(
                                            type: 'Déjeuner',
                                            receipeId:
                                                columnTemporaryReceipeRow.id,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model:
                                              _model.temporaryReceipeTypeModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TemporaryReceipeTypeWidget(
                                            type: 'Collation',
                                            receipeId:
                                                columnTemporaryReceipeRow.id,
                                          ),
                                        ),
                                        wrapWithModel(
                                          model:
                                              _model.temporaryReceipeTypeModel4,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: TemporaryReceipeTypeWidget(
                                            type: 'Dîner',
                                            receipeId:
                                                columnTemporaryReceipeRow.id,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 50.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () async {
                                              _model.newReceipe =
                                                  await SupabaseGroup
                                                      .publishReceipeCall
                                                      .call(
                                                receipeId:
                                                    columnTemporaryReceipeRow
                                                        .id,
                                              );

                                              _model.querriedReceipe =
                                                  await ReceipeTable()
                                                      .queryRows(
                                                queryFn: (q) => q.eqOrNull(
                                                  'id',
                                                  SupabaseGroup
                                                      .publishReceipeCall
                                                      .receipeID(
                                                    (_model.newReceipe
                                                            ?.jsonBody ??
                                                        ''),
                                                  ),
                                                ),
                                              );
                                              _model.receipeMacro =
                                                  await SupabaseGroup
                                                      .receipeinfoCall
                                                      .call(
                                                receipeId: SupabaseGroup
                                                    .publishReceipeCall
                                                    .receipeID(
                                                  (_model.newReceipe
                                                          ?.jsonBody ??
                                                      ''),
                                                ),
                                              );

                                              if ((_model.receipeMacro
                                                      ?.succeeded ??
                                                  true)) {
                                                if (() {
                                                  if (MediaQuery.sizeOf(context)
                                                          .width <
                                                      kBreakpointSmall) {
                                                    return true;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointMedium) {
                                                    return true;
                                                  } else if (MediaQuery.sizeOf(
                                                              context)
                                                          .width <
                                                      kBreakpointLarge) {
                                                    return false;
                                                  } else {
                                                    return false;
                                                  }
                                                }()) {
                                                  context.pushNamed(
                                                    ReceipeDetailWidget
                                                        .routeName,
                                                    queryParameters: {
                                                      'receipeId':
                                                          serializeParam(
                                                        SupabaseGroup
                                                            .publishReceipeCall
                                                            .receipeID(
                                                          (_model.newReceipe
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ),
                                                        ParamType.int,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                } else {
                                                  context.pushNamed(
                                                    ReceipeDetailWebWidget
                                                        .routeName,
                                                    queryParameters: {
                                                      'receipe': serializeParam(
                                                        _model.querriedReceipe
                                                            ?.firstOrNull,
                                                        ParamType.SupabaseRow,
                                                      ),
                                                      'receipeId':
                                                          serializeParam(
                                                        SupabaseGroup
                                                            .publishReceipeCall
                                                            .receipeID(
                                                          (_model.newReceipe
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ),
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
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                    color: Colors.white,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                              elevation: 0.0,
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () async {
                                              _model.receipeCleaner =
                                                  await SupabaseGroup
                                                      .receipeCleanerCall
                                                      .call(
                                                receipeId:
                                                    columnTemporaryReceipeRow
                                                        .id,
                                                creatorId:
                                                    columnTemporaryReceipeRow
                                                        .creatorId,
                                              );

                                              if ((_model.receipeCleaner
                                                      ?.succeeded ??
                                                  true)) {
                                                context.pushNamed(
                                                    ReceipeWidget.routeName);
                                              }

                                              safeSetState(() {});
                                            },
                                            text: 'Corriger',
                                            icon: Icon(
                                              Icons.auto_awesome,
                                              size: 15.0,
                                            ),
                                            options: FFButtonOptions(
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              iconAlignment: IconAlignment.end,
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                              elevation: 0.0,
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 40.0)),
                                      ),
                                    ),
                                    Container(
                                      width: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            kBreakpointSmall) {
                                          return 250.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointMedium) {
                                          return 350.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            kBreakpointLarge) {
                                          return 500.0;
                                        } else {
                                          return 700.0;
                                        }
                                      }(),
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 20.0)),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
