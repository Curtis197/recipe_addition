import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/mobile_navbar_widget.dart';
import '/components/mobile_sidenav_widget.dart';
import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/receipe/update_ingredient/update_ingredient_widget.dart';
import '/receipe/update_step/update_step_widget.dart';
import 'dart:async';
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'create_recipe_model.dart';
export 'create_recipe_model.dart';

class CreateRecipeWidget extends StatefulWidget {
  const CreateRecipeWidget({
    super.key,
    required this.recipeID,
  });

  final TemporaryReceipeRow? recipeID;

  static String routeName = 'create-recipe';
  static String routePath = '/createRecipe';

  @override
  State<CreateRecipeWidget> createState() => _CreateRecipeWidgetState();
}

class _CreateRecipeWidgetState extends State<CreateRecipeWidget> {
  late CreateRecipeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateRecipeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.sessionStart = getCurrentTimestamp;
      safeSetState(() {});
    });

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    _model.textController4 ??= TextEditingController();
    _model.textFieldFocusNode4 ??= FocusNode();

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  wrapWithModel(
                    model: _model.navbarModel,
                    updateCallback: () => safeSetState(() {}),
                    child: NavbarWidget(),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          0.0,
                          valueOrDefault<double>(
                            () {
                              if (MediaQuery.sizeOf(context).width <
                                  kBreakpointSmall) {
                                return 125.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointMedium) {
                                return 125.0;
                              } else if (MediaQuery.sizeOf(context).width <
                                  kBreakpointLarge) {
                                return 125.0;
                              } else {
                                return 0.0;
                              }
                            }(),
                            0.0,
                          ),
                          0.0,
                          0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 20.0, 20.0, 60.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'Mes recettes',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontStyle,
                                              ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_right_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 20.0,
                                        ),
                                        Text(
                                          'Nouvelle recette',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight: FontWeight.w500,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyLarge
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .fontStyle,
                                              ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(30.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                ))
                                                  Icon(
                                                    Icons.auto_awesome,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    size: 44.0,
                                                  ),
                                                Expanded(
                                                  child: Text(
                                                    'Créer une Nouvelle Recette',
                                                    textAlign: TextAlign.center,
                                                    style:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .displayMedium
                                                            .override(
                                                              font: GoogleFonts
                                                                  .interTight(
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .displayMedium
                                                                    .fontStyle,
                                                              ),
                                                              fontSize: () {
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointSmall) {
                                                                  return 32.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointMedium) {
                                                                  return 32.0;
                                                                } else if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    kBreakpointLarge) {
                                                                  return 32.0;
                                                                } else {
                                                                  return 44.0;
                                                                }
                                                              }(),
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displayMedium
                                                                  .fontWeight,
                                                              fontStyle: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displayMedium
                                                                  .fontStyle,
                                                            ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 20.0)),
                                            ),
                                            Text(
                                              'Partagez votre savoir-faire culinaire et commencez à gagner de l\'argent avec vos recettes.',
                                              textAlign: TextAlign.center,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleLarge
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleLarge
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ].divide(SizedBox(height: 25.0)),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Information de Base',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineLarge
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineLarge
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineLarge
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineLarge
                                                            .fontStyle,
                                                  ),
                                            ),
                                            Text(
                                              'Donnez les informations essentielles sur votre recette.',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleMedium
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleMedium
                                                              .fontStyle,
                                                    ),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Text(
                                                      'Titre de la recette',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                    Text(
                                                      '*',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                fontSize: 20.0,
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
                                                  ].divide(
                                                      SizedBox(width: 15.0)),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller:
                                                        _model.textController1,
                                                    focusNode: _model
                                                        .textFieldFocusNode1,
                                                    onChanged: (_) =>
                                                        EasyDebounce.debounce(
                                                      '_model.textController1',
                                                      Duration(
                                                          milliseconds: 2000),
                                                      () async {
                                                        _model.title = _model
                                                            .textController1
                                                            .text;
                                                        safeSetState(() {});
                                                      },
                                                    ),
                                                    autofocus: false,
                                                    enabled: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                      hintText:
                                                          'Ex: Thieboudiene Rouge ',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      hoverColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
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
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    enableInteractiveSelection:
                                                        true,
                                                    validator: _model
                                                        .textController1Validator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                                Text(
                                                  'Choississez un titre clair et appétissant qui décrit votre recette',
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
                                                ),
                                              ].divide(SizedBox(height: 10.0)),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Text(
                                                      'Description courte',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                    Text(
                                                      '*',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
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
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                fontSize: 20.0,
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
                                                  ].divide(
                                                      SizedBox(width: 15.0)),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller:
                                                        _model.textController2,
                                                    focusNode: _model
                                                        .textFieldFocusNode2,
                                                    onChanged: (_) =>
                                                        EasyDebounce.debounce(
                                                      '_model.textController2',
                                                      Duration(
                                                          milliseconds: 2000),
                                                      () async {
                                                        _model.description =
                                                            _model
                                                                .textController2
                                                                .text;
                                                        safeSetState(() {});
                                                      },
                                                    ),
                                                    autofocus: false,
                                                    enabled: true,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      isDense: true,
                                                      labelStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                      hintText:
                                                          'Décrivez votre recette en 2-3 phrases...',
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color:
                                                              Color(0x00000000),
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      errorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      focusedErrorBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      hoverColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
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
                                                    maxLines: 3,
                                                    cursorColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    enableInteractiveSelection:
                                                        true,
                                                    validator: _model
                                                        .textController2Validator
                                                        .asValidator(context),
                                                  ),
                                                ),
                                                Text(
                                                  'Cette description apparaîtra dans les résultats de recherche',
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
                                                ),
                                              ].divide(SizedBox(height: 10.0)),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              'Type de Repas ',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleLarge
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .interTight(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .fontStyle,
                                                                    ),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                          Text(
                                                            '*',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleLarge
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .interTight(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 20.0)),
                                                      ),
                                                      FutureBuilder<
                                                          List<MealTypeRow>>(
                                                        future: MealTypeTable()
                                                            .queryRows(
                                                          queryFn: (q) => q,
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
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
                                                          List<MealTypeRow>
                                                              typeMealTypeRowList =
                                                              snapshot.data!;

                                                          return FlutterFlowDropDown<
                                                              String>(
                                                            multiSelectController: _model
                                                                    .typeValueController ??=
                                                                FormListFieldController<
                                                                        String>(
                                                                    null),
                                                            options:
                                                                typeMealTypeRowList
                                                                    .map((e) =>
                                                                        e.type)
                                                                    .withoutNulls
                                                                    .toList(),
                                                            width:
                                                                double.infinity,
                                                            height: 40.0,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
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
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .fontStyle,
                                                                    ),
                                                            hintText:
                                                                'Selectionner le type de repas',
                                                            icon: Icon(
                                                              Icons
                                                                  .keyboard_arrow_down_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            elevation: 2.0,
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                            borderWidth: 2.0,
                                                            borderRadius: 8.0,
                                                            margin:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                            hidesUnderline:
                                                                true,
                                                            isOverButton: false,
                                                            isSearchable: false,
                                                            isMultiSelect: true,
                                                            onMultiSelectChanged:
                                                                (val) async {
                                                              safeSetState(() =>
                                                                  _model.typeValue =
                                                                      val);
                                                              _model.type = _model
                                                                  .typeValue!
                                                                  .toList()
                                                                  .cast<
                                                                      String>();
                                                              safeSetState(
                                                                  () {});
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 15.0)),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              'Région culinaire',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleLarge
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .interTight(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .fontStyle,
                                                                    ),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                          Text(
                                                            '*',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleLarge
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .interTight(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 20.0)),
                                                      ),
                                                      Expanded(
                                                        child: FutureBuilder<
                                                            List<
                                                                FoodRegionRow>>(
                                                          future:
                                                              FoodRegionTable()
                                                                  .queryRows(
                                                            queryFn: (q) => q,
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
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
                                                            List<FoodRegionRow>
                                                                regionFoodRegionRowList =
                                                                snapshot.data!;

                                                            return FlutterFlowDropDown<
                                                                String>(
                                                              controller: _model
                                                                      .regionValueController ??=
                                                                  FormFieldController<
                                                                          String>(
                                                                      null),
                                                              options: regionFoodRegionRowList
                                                                  .map((e) =>
                                                                      e.name)
                                                                  .withoutNulls
                                                                  .toList(),
                                                              onChanged:
                                                                  (val) async {
                                                                safeSetState(() =>
                                                                    _model.regionValue =
                                                                        val);
                                                                _model.region =
                                                                    _model
                                                                        .regionValue;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              width: double
                                                                  .infinity,
                                                              height: 40.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
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
                                                              hintText:
                                                                  'Selectionner la région culinairer',
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              elevation: 2.0,
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              borderWidth: 2.0,
                                                              borderRadius: 8.0,
                                                              margin:
                                                                  EdgeInsetsDirectional
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
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 15.0)),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 30.0)),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              'Temps de préparation',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleLarge
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .interTight(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .fontStyle,
                                                                    ),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                          Text(
                                                            '*',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleLarge
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .interTight(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 20.0)),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .textController3,
                                                          focusNode: _model
                                                              .textFieldFocusNode3,
                                                          autofocus: false,
                                                          enabled: true,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            isDense: true,
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            hintText: '1',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            filled: true,
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            hoverColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
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
                                                          cursorColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          enableInteractiveSelection:
                                                              true,
                                                          validator: _model
                                                              .textController3Validator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                      Text(
                                                        'En heure',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 15.0)),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              'Temps de préparation',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleLarge
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .interTight(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .fontStyle,
                                                                    ),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                          Text(
                                                            '*',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleLarge
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .interTight(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 20.0)),
                                                      ),
                                                      Container(
                                                        width: double.infinity,
                                                        child: TextFormField(
                                                          controller: _model
                                                              .textController4,
                                                          focusNode: _model
                                                              .textFieldFocusNode4,
                                                          autofocus: false,
                                                          enabled: true,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            isDense: true,
                                                            labelStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            hintText: '30',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      font: GoogleFonts
                                                                          .inter(
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .fontStyle,
                                                                      ),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .fontStyle,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .alternate,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .error,
                                                                width: 2.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            filled: true,
                                                            fillColor: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            hoverColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
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
                                                          cursorColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          enableInteractiveSelection:
                                                              true,
                                                          validator: _model
                                                              .textController4Validator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                      Text(
                                                        'En minute ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 15.0)),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 30.0)),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              'Nieau de difficulté ',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleLarge
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .interTight(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .fontStyle,
                                                                    ),
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                          Text(
                                                            '*',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleLarge
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .interTight(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 20.0)),
                                                      ),
                                                      Expanded(
                                                        child: FutureBuilder<
                                                            List<
                                                                DifficultyRow>>(
                                                          future:
                                                              DifficultyTable()
                                                                  .queryRows(
                                                            queryFn: (q) => q,
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
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
                                                            List<DifficultyRow>
                                                                difficultyDifficultyRowList =
                                                                snapshot.data!;

                                                            return FlutterFlowDropDown<
                                                                String>(
                                                              controller: _model
                                                                      .difficultyValueController ??=
                                                                  FormFieldController<
                                                                          String>(
                                                                      null),
                                                              options: difficultyDifficultyRowList
                                                                  .map((e) =>
                                                                      e.name)
                                                                  .withoutNulls
                                                                  .toList(),
                                                              onChanged:
                                                                  (val) async {
                                                                safeSetState(() =>
                                                                    _model.difficultyValue =
                                                                        val);
                                                                _model.difficulty =
                                                                    _model
                                                                        .difficultyValue;
                                                                safeSetState(
                                                                    () {});
                                                              },
                                                              width: double
                                                                  .infinity,
                                                              height: 40.0,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
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
                                                              hintText:
                                                                  'Selectionner la difficulté',
                                                              icon: Icon(
                                                                Icons
                                                                    .keyboard_arrow_down_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 24.0,
                                                              ),
                                                              fillColor: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              elevation: 2.0,
                                                              borderColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .alternate,
                                                              borderWidth: 2.0,
                                                              borderRadius: 8.0,
                                                              margin:
                                                                  EdgeInsetsDirectional
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
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 15.0)),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: <Widget>[].divide(
                                                        SizedBox(height: 15.0)),
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 30.0)),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Tags',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleLarge
                                                      .override(
                                                        font: GoogleFonts
                                                            .interTight(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleLarge
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .fontStyle,
                                                      ),
                                                ),
                                                Builder(
                                                  builder: (context) {
                                                    final tag =
                                                        _model.tags.toList();

                                                    return Wrap(
                                                      spacing: 10.0,
                                                      runSpacing: 10.0,
                                                      alignment:
                                                          WrapAlignment.start,
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .start,
                                                      direction:
                                                          Axis.horizontal,
                                                      runAlignment:
                                                          WrapAlignment.start,
                                                      verticalDirection:
                                                          VerticalDirection
                                                              .down,
                                                      clipBehavior: Clip.none,
                                                      children: List.generate(
                                                          tag.length,
                                                          (tagIndex) {
                                                        final tagItem =
                                                            tag[tagIndex];
                                                        return Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0x589C88FF),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        8.0,
                                                                        16.0,
                                                                        8.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    tagItem,
                                                                    'tag',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .override(
                                                                        font: GoogleFonts
                                                                            .interTight(
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleMedium
                                                                              .fontStyle,
                                                                        ),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight: FlutterFlowTheme.of(context)
                                                                            .titleMedium
                                                                            .fontWeight,
                                                                        fontStyle: FlutterFlowTheme.of(context)
                                                                            .titleMedium
                                                                            .fontStyle,
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
                                                                    _model.removeFromTags(
                                                                        tagItem);
                                                                    safeSetState(
                                                                        () {});
                                                                    await ReceipeTagsTable()
                                                                        .delete(
                                                                      matchingRows: (rows) => rows
                                                                          .eqOrNull(
                                                                            'temporary_receipe_id',
                                                                            widget.recipeID?.id,
                                                                          )
                                                                          .eqOrNull(
                                                                            'name',
                                                                            tagItem,
                                                                          ),
                                                                    );
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .close_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 18.0,
                                                                  ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 10.0)),
                                                            ),
                                                          ),
                                                        );
                                                      }),
                                                    );
                                                  },
                                                ),
                                                FutureBuilder<List<TagsRow>>(
                                                  future: (_model
                                                              .requestCompleter ??=
                                                          Completer<
                                                              List<TagsRow>>()
                                                            ..complete(
                                                                TagsTable()
                                                                    .queryRows(
                                                              queryFn: (q) => q,
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
                                                    List<TagsRow>
                                                        wrapTagsRowList =
                                                        snapshot.data!;

                                                    return Wrap(
                                                      spacing: 10.0,
                                                      runSpacing: 10.0,
                                                      alignment:
                                                          WrapAlignment.start,
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .start,
                                                      direction:
                                                          Axis.horizontal,
                                                      runAlignment:
                                                          WrapAlignment.start,
                                                      verticalDirection:
                                                          VerticalDirection
                                                              .down,
                                                      clipBehavior: Clip.none,
                                                      children: List.generate(
                                                          wrapTagsRowList
                                                              .length,
                                                          (wrapIndex) {
                                                        final wrapTagsRow =
                                                            wrapTagsRowList[
                                                                wrapIndex];
                                                        return InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            _model.addToTags(
                                                                wrapTagsRow
                                                                    .name!);
                                                            safeSetState(() {});
                                                            _model.insrtTag =
                                                                await ReceipeTagsTable()
                                                                    .insert({
                                                              'temporary_receipe_id':
                                                                  widget
                                                                      .recipeID
                                                                      ?.id,
                                                              'name':
                                                                  wrapTagsRow
                                                                      .name,
                                                            });

                                                            safeSetState(() {});
                                                          },
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0x553BB78F),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          8.0,
                                                                          16.0,
                                                                          8.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      wrapTagsRow
                                                                          .name,
                                                                      'tag',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleMedium
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.interTight(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).titleMedium.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).titleMedium.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleMedium
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleMedium
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        10.0)),
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      }),
                                                    );
                                                  },
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'Ajoutez des mots-clés pour faciliter la recherche (ex: végétarien, épicé, rapide)',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          font:
                                                              GoogleFonts.inter(
                                                            fontWeight:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontWeight,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                          ),
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                  ),
                                                ),
                                              ].divide(SizedBox(height: 20.0)),
                                            ),
                                          ]
                                              .divide(SizedBox(height: 20.0))
                                              .around(SizedBox(height: 20.0)),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Photos de la recette',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineMedium
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineMedium
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                            Text(
                                              'De belles photos augmentent l\'attrait de votre recette',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                      ),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Color(0x499C88FF),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(20.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Conseil Photo',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontSize: 22.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                    Text(
                                                      '• Utilisez la lumière naturelle (près d\'une fenêtre)\n• Au moins 1 photo du plat final (obligatoire)\n• Format JPG ou PNG, minimum 1200x800 pixels\n• Consultez notre Guide Photo & Vidéo pour plus de conseils',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: () {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointSmall) {
                                                                    return 16.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointMedium) {
                                                                    return 16.0;
                                                                  } else if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      kBreakpointLarge) {
                                                                    return 18.0;
                                                                  } else {
                                                                    return 20.0;
                                                                  }
                                                                }(),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 20.0)),
                                                ),
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Photo principale',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall
                                                      .override(
                                                        font: GoogleFonts
                                                            .interTight(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmall
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .fontStyle,
                                                      ),
                                                ),
                                                Text(
                                                  '*',
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
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        fontSize: 22.0,
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
                                              ].divide(SizedBox(width: 20.0)),
                                            ),
                                            MouseRegion(
                                              opaque: false,
                                              cursor: MouseCursor.defer ??
                                                  MouseCursor.defer,
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  final selectedMedia =
                                                      await selectMediaWithSourceBottomSheet(
                                                    context: context,
                                                    storageFolderPath: 'image',
                                                    allowPhoto: true,
                                                  );
                                                  if (selectedMedia != null &&
                                                      selectedMedia.every((m) =>
                                                          validateFileFormat(
                                                              m.storagePath,
                                                              context))) {
                                                    safeSetState(() => _model
                                                            .isDataUploading_uploadLocalMainImage =
                                                        true);
                                                    var selectedUploadedFiles =
                                                        <FFUploadedFile>[];

                                                    var downloadUrls =
                                                        <String>[];
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

                                                      downloadUrls =
                                                          await uploadSupabaseStorageFiles(
                                                        bucketName: 'receipe',
                                                        selectedFiles:
                                                            selectedMedia,
                                                      );
                                                    } finally {
                                                      _model.isDataUploading_uploadLocalMainImage =
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
                                                        _model.uploadedLocalFile_uploadLocalMainImage =
                                                            selectedUploadedFiles
                                                                .first;
                                                        _model.uploadedFileUrl_uploadLocalMainImage =
                                                            downloadUrls.first;
                                                      });
                                                    } else {
                                                      safeSetState(() {});
                                                      return;
                                                    }
                                                  }

                                                  _model.insertMainImage =
                                                      await ReceipeImageTable()
                                                          .insert({
                                                    'url': _model
                                                        .uploadedFileUrl_uploadLocalMainImage,
                                                    'type': '',
                                                    'receipe_id':
                                                        widget.recipeID?.id,
                                                  });
                                                  _model.mainImageRow =
                                                      _model.insertMainImage;
                                                  safeSetState(() {});

                                                  safeSetState(() {});
                                                },
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 200.0,
                                                  decoration: BoxDecoration(
                                                    color: _model
                                                            .mouseRegionHovered1
                                                        ? Color(0x5E9C88FF)
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                    border: Border.all(
                                                      color: _model
                                                              .mouseRegionHovered1
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 3.0,
                                                    ),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Icon(
                                                        Icons.camera_alt,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 60.0,
                                                      ),
                                                      Text(
                                                        'Cliquez pour télécharger',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .override(
                                                                  font: GoogleFonts
                                                                      .interTight(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                      Text(
                                                        'JPG, PNG (max. 10MB)',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .fontStyle,
                                                                  ),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 15.0)),
                                                  ),
                                                ),
                                              ),
                                              onEnter: ((event) async {
                                                safeSetState(() =>
                                                    _model.mouseRegionHovered1 =
                                                        true);
                                              }),
                                              onExit: ((event) async {
                                                safeSetState(() =>
                                                    _model.mouseRegionHovered1 =
                                                        false);
                                              }),
                                            ),
                                            if (_model.mainImageRow != null)
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Container(
                                                  width: 200.0,
                                                  height: 200.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.network(
                                                            _model.mainImageRow!
                                                                .url!,
                                                            width: 200.0,
                                                            height: 200.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                1.1, -1.1),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .error,
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                          child: InkWell(
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
                                                              unawaited(
                                                                () async {
                                                                  _model.deletedLocalMainImage =
                                                                      await ReceipeImageTable()
                                                                          .delete(
                                                                    matchingRows:
                                                                        (rows) =>
                                                                            rows.eqOrNull(
                                                                      'id',
                                                                      _model
                                                                          .mainImageRow
                                                                          ?.id,
                                                                    ),
                                                                    returnRows:
                                                                        true,
                                                                  );
                                                                }(),
                                                              );
                                                              _model.mainImageRow =
                                                                  null;
                                                              safeSetState(
                                                                  () {});

                                                              safeSetState(
                                                                  () {});
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .close_rounded,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Photos supplémentaires',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .headlineSmall
                                                      .override(
                                                        font: GoogleFonts
                                                            .interTight(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmall
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineSmall
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .fontStyle,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 20.0)),
                                            ),
                                            MouseRegion(
                                              opaque: false,
                                              cursor: MouseCursor.defer ??
                                                  MouseCursor.defer,
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  final selectedMedia =
                                                      await selectMediaWithSourceBottomSheet(
                                                    context: context,
                                                    storageFolderPath: 'image',
                                                    allowPhoto: true,
                                                  );
                                                  if (selectedMedia != null &&
                                                      selectedMedia.every((m) =>
                                                          validateFileFormat(
                                                              m.storagePath,
                                                              context))) {
                                                    safeSetState(() => _model
                                                            .isDataUploading_uploadLocalImages =
                                                        true);
                                                    var selectedUploadedFiles =
                                                        <FFUploadedFile>[];

                                                    var downloadUrls =
                                                        <String>[];
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

                                                      downloadUrls =
                                                          await uploadSupabaseStorageFiles(
                                                        bucketName: 'receipe',
                                                        selectedFiles:
                                                            selectedMedia,
                                                      );
                                                    } finally {
                                                      _model.isDataUploading_uploadLocalImages =
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
                                                        _model.uploadedLocalFile_uploadLocalImages =
                                                            selectedUploadedFiles
                                                                .first;
                                                        _model.uploadedFileUrl_uploadLocalImages =
                                                            downloadUrls.first;
                                                      });
                                                    } else {
                                                      safeSetState(() {});
                                                      return;
                                                    }
                                                  }

                                                  _model.insertImage =
                                                      await ReceipeImageTable()
                                                          .insert({
                                                    'url': _model
                                                        .uploadedFileUrl_uploadLocalImages,
                                                    'type': '',
                                                    'receipe_id':
                                                        widget.recipeID?.id,
                                                  });
                                                  _model.addToImageRow(
                                                      _model.insertImage!);
                                                  safeSetState(() {});

                                                  safeSetState(() {});
                                                },
                                                child: Container(
                                                  width: double.infinity,
                                                  height: 200.0,
                                                  decoration: BoxDecoration(
                                                    color: _model
                                                            .mouseRegionHovered2
                                                        ? Color(0x5E9C88FF)
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                    border: Border.all(
                                                      color: _model
                                                              .mouseRegionHovered2
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 3.0,
                                                    ),
                                                  ),
                                                  child: InkWell(
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
                                                      if (selectedMedia !=
                                                              null &&
                                                          selectedMedia.every((m) =>
                                                              validateFileFormat(
                                                                  m.storagePath,
                                                                  context))) {
                                                        safeSetState(() => _model
                                                                .isDataUploading_uploadRecipeImage =
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
                                                                            .split('/')
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
                                                          _model.isDataUploading_uploadRecipeImage =
                                                              false;
                                                        }
                                                        if (selectedUploadedFiles
                                                                .length ==
                                                            selectedMedia
                                                                .length) {
                                                          safeSetState(() {
                                                            _model.uploadedLocalFile_uploadRecipeImage =
                                                                selectedUploadedFiles
                                                                    .first;
                                                          });
                                                        } else {
                                                          safeSetState(() {});
                                                          return;
                                                        }
                                                      }

                                                      _model.addToImageRecipe(_model
                                                          .uploadedLocalFile_uploadRecipeImage);
                                                      safeSetState(() {});
                                                      safeSetState(() {
                                                        _model.isDataUploading_uploadRecipeImage =
                                                            false;
                                                        _model.uploadedLocalFile_uploadRecipeImage =
                                                            FFUploadedFile(
                                                                bytes: Uint8List
                                                                    .fromList(
                                                                        []),
                                                                originalFilename:
                                                                    '');
                                                      });
                                                    },
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Icon(
                                                          Icons.camera_alt,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 60.0,
                                                        ),
                                                        Text(
                                                          'Cliquez pour télécharger',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Text(
                                                          'JPG, PNG (max. 10MB)',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 15.0)),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              onEnter: ((event) async {
                                                safeSetState(() =>
                                                    _model.mouseRegionHovered2 =
                                                        true);
                                              }),
                                              onExit: ((event) async {
                                                safeSetState(() =>
                                                    _model.mouseRegionHovered2 =
                                                        false);
                                              }),
                                            ),
                                            Container(
                                              child: Visibility(
                                                visible:
                                                    _model.imageRow.isNotEmpty,
                                                child: Builder(
                                                  builder: (context) {
                                                    final imge = _model.imageRow
                                                        .toList();

                                                    return GridView.builder(
                                                      padding: EdgeInsets.zero,
                                                      gridDelegate:
                                                          SliverGridDelegateWithFixedCrossAxisCount(
                                                        crossAxisCount: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 2;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 3;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 4;
                                                          } else {
                                                            return 5;
                                                          }
                                                        }(),
                                                        crossAxisSpacing: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 10.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 15.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 20.0;
                                                          } else {
                                                            return 25.0;
                                                          }
                                                        }(),
                                                        mainAxisSpacing: () {
                                                          if (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <
                                                              kBreakpointSmall) {
                                                            return 10.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointMedium) {
                                                            return 15.0;
                                                          } else if (MediaQuery
                                                                      .sizeOf(
                                                                          context)
                                                                  .width <
                                                              kBreakpointLarge) {
                                                            return 20.0;
                                                          } else {
                                                            return 25.0;
                                                          }
                                                        }(),
                                                        childAspectRatio: 1.0,
                                                      ),
                                                      primary: false,
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount: imge.length,
                                                      itemBuilder:
                                                          (context, imgeIndex) {
                                                        final imgeItem =
                                                            imge[imgeIndex];
                                                        return Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Container(
                                                            width:
                                                                double.infinity,
                                                            height:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child: Stack(
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: Image
                                                                        .network(
                                                                      imgeItem
                                                                          .url!,
                                                                      width: double
                                                                          .infinity,
                                                                      height: double
                                                                          .infinity,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          1.1,
                                                                          -1.1),
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child:
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
                                                                        unawaited(
                                                                          () async {
                                                                            await ReceipeImageTable().delete(
                                                                              matchingRows: (rows) => rows.eqOrNull(
                                                                                'id',
                                                                                imgeItem.id,
                                                                              ),
                                                                            );
                                                                          }(),
                                                                        );
                                                                        _model.removeFromImageRow(
                                                                            imgeItem);
                                                                        safeSetState(
                                                                            () {});
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .close_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          ]
                                              .divide(SizedBox(height: 20.0))
                                              .around(SizedBox(height: 20.0)),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ingrédients',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineMedium
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineMedium
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                            Text(
                                              'Listez tous les ingrédients avec des quantités précises',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                      ),
                                            ),
                                            Builder(
                                              builder: (context) {
                                                final ingredient =
                                                    _model.ingredients.toList();

                                                return ListView.separated(
                                                  padding: EdgeInsets.zero,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: ingredient.length,
                                                  separatorBuilder: (_, __) =>
                                                      SizedBox(height: 10.0),
                                                  itemBuilder: (context,
                                                      ingredientIndex) {
                                                    final ingredientItem =
                                                        ingredient[
                                                            ingredientIndex];
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                          tabletLandscape:
                                                              false,
                                                        ))
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
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
                                                                      await Future
                                                                          .wait([
                                                                        Future(
                                                                            () async {
                                                                          _model.insertAtIndexInIngredients(
                                                                              ingredientIndex - 1,
                                                                              ingredientItem);
                                                                          safeSetState(
                                                                              () {});
                                                                          _model.removeAtIndexFromIngredients(ingredientIndex +
                                                                              1);
                                                                          safeSetState(
                                                                              () {});
                                                                        }),
                                                                      ]);
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .arrow_drop_up_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                      size:
                                                                          44.0,
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
                                                                      await Future
                                                                          .wait([
                                                                        Future(
                                                                            () async {
                                                                          _model.insertAtIndexInIngredients(
                                                                              ingredientIndex,
                                                                              _model.ingredients.elementAtOrNull(ingredientIndex + 1)!);
                                                                          safeSetState(
                                                                              () {});
                                                                        }),
                                                                        Future(
                                                                            () async {
                                                                          _model.insertAtIndexInIngredients(
                                                                              ingredientIndex + 1,
                                                                              ingredientItem);
                                                                          safeSetState(
                                                                              () {});
                                                                          _model.removeAtIndexFromIngredients(ingredientIndex +
                                                                              1);
                                                                          safeSetState(
                                                                              () {});
                                                                          _model.removeAtIndexFromIngredients(ingredientIndex +
                                                                              2);
                                                                          safeSetState(
                                                                              () {});
                                                                        }),
                                                                      ]);
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .arrow_drop_down_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                      size:
                                                                          44.0,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Expanded(
                                                                child:
                                                                    wrapWithModel(
                                                                  model: _model
                                                                      .updateIngredientModels1
                                                                      .getModel(
                                                                    ingredientItem
                                                                        .id,
                                                                    ingredientIndex,
                                                                  ),
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      UpdateIngredientWidget(
                                                                    key: Key(
                                                                      'Key4wn_${ingredientItem.id}',
                                                                    ),
                                                                    ingredients:
                                                                        ingredientItem,
                                                                  ),
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
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
                                                                      _model.updateIngredient =
                                                                          await IngredientsTable()
                                                                              .update(
                                                                        data: {
                                                                          'name':
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.textPhoneTextController.text,
                                                                              );
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.textPhoneTextController.text,
                                                                              );
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.textPhoneTextController.text,
                                                                              );
                                                                            } else {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.textPCTextController.text,
                                                                              );
                                                                            }
                                                                          }(),
                                                                          'unit':
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.unitPhoneValue,
                                                                              );
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.unitPhoneValue,
                                                                              );
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.unitPhoneValue,
                                                                              );
                                                                            } else {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.unitPCValue,
                                                                              );
                                                                            }
                                                                          }(),
                                                                          'quantity':
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return double.tryParse(_model.updateIngredientModels1.getValueForKey(
                                                                                    ingredientItem.id,
                                                                                    (m) => m.quantityPhoneTextController.text,
                                                                                  ) ??
                                                                                  '');
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return double.tryParse(_model.updateIngredientModels1.getValueForKey(
                                                                                    ingredientItem.id,
                                                                                    (m) => m.quantityPhoneTextController.text,
                                                                                  ) ??
                                                                                  '');
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return double.tryParse(_model.updateIngredientModels1.getValueForKey(
                                                                                    ingredientItem.id,
                                                                                    (m) => m.quantityPhoneTextController.text,
                                                                                  ) ??
                                                                                  '');
                                                                            } else {
                                                                              return double.tryParse(_model.updateIngredientModels1.getValueForKey(
                                                                                    ingredientItem.id,
                                                                                    (m) => m.quantityPCTextController.text,
                                                                                  ) ??
                                                                                  '');
                                                                            }
                                                                          }(),
                                                                          'title':
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.checkboxPhoneValue,
                                                                              );
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.checkboxPhoneValue,
                                                                              );
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.checkboxPhoneValue,
                                                                              );
                                                                            } else {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.checkboxPCValue,
                                                                              );
                                                                            }
                                                                          }(),
                                                                        },
                                                                        matchingRows:
                                                                            (rows) =>
                                                                                rows.eqOrNull(
                                                                          'id',
                                                                          ingredientItem
                                                                              .id,
                                                                        ),
                                                                        returnRows:
                                                                            true,
                                                                      );
                                                                      _model
                                                                          .updateIngredientsAtIndex(
                                                                        ingredientIndex,
                                                                        (_) => _model
                                                                            .updateIngredient!
                                                                            .lastOrNull!,
                                                                      );
                                                                      safeSetState(
                                                                          () {});

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiary,
                                                                          width:
                                                                              3.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(5.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .check_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiary,
                                                                          size:
                                                                              32.0,
                                                                        ),
                                                                      ),
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
                                                                      _model.removeAtIndexFromIngredients(
                                                                          ingredientIndex);
                                                                      safeSetState(
                                                                          () {});
                                                                      await IngredientsTable()
                                                                          .delete(
                                                                        matchingRows:
                                                                            (rows) =>
                                                                                rows.eqOrNull(
                                                                          'id',
                                                                          ingredientItem
                                                                              .id,
                                                                        ),
                                                                      );
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              3.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(5.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .close_sharp,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          size:
                                                                              32.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        10.0)),
                                                              ),
                                                            ],
                                                          ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          desktop: false,
                                                        ))
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
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
                                                                      await Future
                                                                          .wait([
                                                                        Future(
                                                                            () async {
                                                                          _model.insertAtIndexInIngredients(
                                                                              ingredientIndex - 1,
                                                                              ingredientItem);
                                                                          safeSetState(
                                                                              () {});
                                                                          _model.removeAtIndexFromIngredients(ingredientIndex +
                                                                              1);
                                                                          safeSetState(
                                                                              () {});
                                                                        }),
                                                                      ]);
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .arrow_drop_up_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                      size:
                                                                          44.0,
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
                                                                      await Future
                                                                          .wait([
                                                                        Future(
                                                                            () async {
                                                                          _model.insertAtIndexInIngredients(
                                                                              ingredientIndex,
                                                                              _model.ingredients.elementAtOrNull(ingredientIndex + 1)!);
                                                                          safeSetState(
                                                                              () {});
                                                                        }),
                                                                        Future(
                                                                            () async {
                                                                          _model.insertAtIndexInIngredients(
                                                                              ingredientIndex + 1,
                                                                              ingredientItem);
                                                                          safeSetState(
                                                                              () {});
                                                                          _model.removeAtIndexFromIngredients(ingredientIndex +
                                                                              1);
                                                                          safeSetState(
                                                                              () {});
                                                                          _model.removeAtIndexFromIngredients(ingredientIndex +
                                                                              2);
                                                                          safeSetState(
                                                                              () {});
                                                                        }),
                                                                      ]);
                                                                    },
                                                                    child: Icon(
                                                                      Icons
                                                                          .arrow_drop_down_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiary,
                                                                      size:
                                                                          44.0,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Expanded(
                                                                child:
                                                                    UpdateIngredientWidget(
                                                                  key: Key(
                                                                      'Key9hf_${ingredientIndex}_of_${ingredient.length}'),
                                                                ),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
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
                                                                      _model.updateIngredientPhone =
                                                                          await IngredientsTable()
                                                                              .update(
                                                                        data: {
                                                                          'name':
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.textPhoneTextController.text,
                                                                              );
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.textPhoneTextController.text,
                                                                              );
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.textPhoneTextController.text,
                                                                              );
                                                                            } else {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.textPCTextController.text,
                                                                              );
                                                                            }
                                                                          }(),
                                                                          'unit':
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.unitPhoneValue,
                                                                              );
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.unitPhoneValue,
                                                                              );
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.unitPhoneValue,
                                                                              );
                                                                            } else {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.unitPCValue,
                                                                              );
                                                                            }
                                                                          }(),
                                                                          'quantity':
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return double.tryParse(_model.updateIngredientModels1.getValueForKey(
                                                                                    ingredientItem.id,
                                                                                    (m) => m.quantityPhoneTextController.text,
                                                                                  ) ??
                                                                                  '');
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return double.tryParse(_model.updateIngredientModels1.getValueForKey(
                                                                                    ingredientItem.id,
                                                                                    (m) => m.quantityPhoneTextController.text,
                                                                                  ) ??
                                                                                  '');
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return double.tryParse(_model.updateIngredientModels1.getValueForKey(
                                                                                    ingredientItem.id,
                                                                                    (m) => m.quantityPhoneTextController.text,
                                                                                  ) ??
                                                                                  '');
                                                                            } else {
                                                                              return double.tryParse(_model.updateIngredientModels1.getValueForKey(
                                                                                    ingredientItem.id,
                                                                                    (m) => m.quantityPCTextController.text,
                                                                                  ) ??
                                                                                  '');
                                                                            }
                                                                          }(),
                                                                          'title':
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.checkboxPhoneValue,
                                                                              );
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.checkboxPhoneValue,
                                                                              );
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.checkboxPhoneValue,
                                                                              );
                                                                            } else {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                ingredientItem.id,
                                                                                (m) => m.checkboxPCValue,
                                                                              );
                                                                            }
                                                                          }(),
                                                                        },
                                                                        matchingRows:
                                                                            (rows) =>
                                                                                rows.eqOrNull(
                                                                          'id',
                                                                          ingredientItem
                                                                              .id,
                                                                        ),
                                                                        returnRows:
                                                                            true,
                                                                      );
                                                                      _model
                                                                          .updateIngredientsAtIndex(
                                                                        ingredientIndex,
                                                                        (_) => _model
                                                                            .updateIngredientPhone!
                                                                            .firstOrNull!,
                                                                      );
                                                                      safeSetState(
                                                                          () {});

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiary,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(5.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .check_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiary,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
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
                                                                      _model.removeAtIndexFromIngredients(
                                                                          ingredientIndex);
                                                                      safeSetState(
                                                                          () {});
                                                                      await IngredientsTable()
                                                                          .delete(
                                                                        matchingRows:
                                                                            (rows) =>
                                                                                rows.eqOrNull(
                                                                          'id',
                                                                          ingredientItem
                                                                              .id,
                                                                        ),
                                                                      );
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(5.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .close_sharp,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        10.0)),
                                                              ),
                                                            ],
                                                          ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                            Text(
                                              'Ajouter un ingrédient',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .newIngredientModel,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child:
                                                        UpdateIngredientWidget(),
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
                                                    _model.newIngerdient =
                                                        await IngredientsTable()
                                                            .insert({
                                                      'quantity': () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return double.tryParse(_model
                                                              .newIngredientModel
                                                              .quantityPhoneTextController
                                                              .text);
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return double.tryParse(_model
                                                              .newIngredientModel
                                                              .quantityPhoneTextController
                                                              .text);
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return double.tryParse(_model
                                                              .newIngredientModel
                                                              .quantityPhoneTextController
                                                              .text);
                                                        } else {
                                                          return double.tryParse(_model
                                                              .newIngredientModel
                                                              .quantityPCTextController
                                                              .text);
                                                        }
                                                      }(),
                                                      'name': () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return _model
                                                              .newIngredientModel
                                                              .textPhoneTextController
                                                              .text;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return _model
                                                              .newIngredientModel
                                                              .textPhoneTextController
                                                              .text;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return _model
                                                              .newIngredientModel
                                                              .textPhoneTextController
                                                              .text;
                                                        } else {
                                                          return _model
                                                              .newIngredientModel
                                                              .textPCTextController
                                                              .text;
                                                        }
                                                      }(),
                                                      'unit': () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return _model
                                                              .newIngredientModel
                                                              .unitPhoneValue;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return _model
                                                              .newIngredientModel
                                                              .unitPhoneValue;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return _model
                                                              .newIngredientModel
                                                              .unitPhoneValue;
                                                        } else {
                                                          return _model
                                                              .newIngredientModel
                                                              .unitPCValue;
                                                        }
                                                      }(),
                                                      'index': _model
                                                          .ingredients.length,
                                                      'receipe_id': 0,
                                                      'temporary_receipe_id':
                                                          widget.recipeID?.id,
                                                    });
                                                    _model
                                                        .insertAtIndexInIngredients(
                                                            _model
                                                                .newIngerdient!
                                                                .index!,
                                                            _model
                                                                .newIngerdient!);
                                                    safeSetState(() {});
                                                    safeSetState(() {
                                                      _model.newIngredientModel
                                                          .quantityPCTextController
                                                          ?.clear();
                                                      _model.newIngredientModel
                                                          .textPCTextController
                                                          ?.clear();
                                                      _model.newIngredientModel
                                                          .quantityPhoneTextController
                                                          ?.clear();
                                                      _model.newIngredientModel
                                                          .textPhoneTextController
                                                          ?.clear();
                                                    });
                                                    safeSetState(() {
                                                      _model.newIngredientModel
                                                              .checkboxPhoneValue =
                                                          _model
                                                              .newIngredientModel
                                                              .widget!
                                                              .ingredients!
                                                              .title!;
                                                      _model.newIngredientModel
                                                              .checkboxPCValue =
                                                          _model
                                                              .newIngredientModel
                                                              .widget!
                                                              .ingredients!
                                                              .title!;
                                                    });

                                                    safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.add_circle_outline,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    size: 44.0,
                                                  ),
                                                ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                ))
                                                  Container(
                                                    width: 70.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                  ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ]
                                              .divide(SizedBox(height: 20.0))
                                              .around(SizedBox(height: 20.0)),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Instructions de préparation',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineMedium
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineMedium
                                                              .fontWeight,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .headlineMedium
                                                              .fontStyle,
                                                    ),
                                                    letterSpacing: 0.0,
                                                    fontWeight:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineMedium
                                                            .fontWeight,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .headlineMedium
                                                            .fontStyle,
                                                  ),
                                            ),
                                            Text(
                                              'Décrivez chaque étape de manière claire et détaillée',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontWeight,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .fontStyle,
                                                        ),
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontWeight,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLarge
                                                                .fontStyle,
                                                      ),
                                            ),
                                            Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                color: Color(0x469C88FF),
                                                borderRadius:
                                                    BorderRadius.circular(20.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(20.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Conseil de rédaction',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleLarge
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleLarge
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                    Text(
                                                      '• Utilisez des phrases courtes et des verbes d\'action\n• Soyez précis sur les temps et températures\n• Mentionnez les indices visuels (ex: \"jusqu\'à ce que doré\")\n• Une étape = une action principale',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelLarge
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelLarge
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLarge
                                                                    .fontStyle,
                                                              ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 15.0)),
                                                ),
                                              ),
                                            ),
                                            Builder(
                                              builder: (context) {
                                                final step = _model.steps
                                                    .sortedList(
                                                        keyOf: (e) => e.index!,
                                                        desc: false)
                                                    .toList();

                                                return ListView.separated(
                                                  padding: EdgeInsets.zero,
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: step.length,
                                                  separatorBuilder: (_, __) =>
                                                      SizedBox(height: 10.0),
                                                  itemBuilder:
                                                      (context, stepIndex) {
                                                    final stepItem =
                                                        step[stepIndex];
                                                    return Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                          tabletLandscape:
                                                              false,
                                                        ))
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          _model.insertAtIndexInSteps(
                                                                              stepIndex - 1,
                                                                              stepItem);
                                                                          safeSetState(
                                                                              () {});
                                                                          _model.removeAtIndexFromSteps(stepIndex +
                                                                              1);
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .arrow_drop_up_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiary,
                                                                          size:
                                                                              44.0,
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
                                                                        onTap:
                                                                            () async {
                                                                          _model.insertAtIndexInSteps(
                                                                              stepIndex + 1,
                                                                              stepItem);
                                                                          safeSetState(
                                                                              () {});
                                                                          _model.removeAtIndexFromSteps(stepIndex -
                                                                              1);
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .arrow_drop_down_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiary,
                                                                          size:
                                                                              44.0,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              Expanded(
                                                                child:
                                                                    wrapWithModel(
                                                                  model: _model
                                                                      .updateStepModels1
                                                                      .getModel(
                                                                    stepItem.id,
                                                                    stepIndex,
                                                                  ),
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      UpdateStepWidget(
                                                                    key: Key(
                                                                      'Key6se_${stepItem.id}',
                                                                    ),
                                                                    step:
                                                                        stepItem,
                                                                  ),
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
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
                                                                      await StepTable()
                                                                          .update(
                                                                        data: {
                                                                          'title':
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return _model.updateStepModels1.getValueForKey(
                                                                                stepItem.id,
                                                                                (m) => m.checkboxPhoneValue,
                                                                              );
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return _model.updateStepModels1.getValueForKey(
                                                                                stepItem.id,
                                                                                (m) => m.checkboxPhoneValue,
                                                                              );
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return _model.updateStepModels1.getValueForKey(
                                                                                stepItem.id,
                                                                                (m) => m.checkboxPhoneValue,
                                                                              );
                                                                            } else {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                stepItem.id,
                                                                                (m) => m.checkboxPCValue,
                                                                              );
                                                                            }
                                                                          }(),
                                                                          'text':
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return _model.updateStepModels1.getValueForKey(
                                                                                stepItem.id,
                                                                                (m) => m.textPhoneTextController.text,
                                                                              );
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return _model.updateStepModels1.getValueForKey(
                                                                                stepItem.id,
                                                                                (m) => m.textPhoneTextController.text,
                                                                              );
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return _model.updateStepModels1.getValueForKey(
                                                                                stepItem.id,
                                                                                (m) => m.textPhoneTextController.text,
                                                                              );
                                                                            } else {
                                                                              return _model.updateStepModels1.getValueForKey(
                                                                                stepItem.id,
                                                                                (m) => m.textPCTextController.text,
                                                                              );
                                                                            }
                                                                          }(),
                                                                          'number':
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return int.tryParse(_model.updateStepModels1.getValueForKey(
                                                                                    stepItem.id,
                                                                                    (m) => m.numberPhoneTextController.text,
                                                                                  ) ??
                                                                                  '');
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return int.tryParse(_model.updateStepModels1.getValueForKey(
                                                                                    stepItem.id,
                                                                                    (m) => m.numberPhoneTextController.text,
                                                                                  ) ??
                                                                                  '');
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return int.tryParse(_model.updateStepModels1.getValueForKey(
                                                                                    stepItem.id,
                                                                                    (m) => m.numberPhoneTextController.text,
                                                                                  ) ??
                                                                                  '');
                                                                            } else {
                                                                              return int.tryParse(_model.updateStepModels1.getValueForKey(
                                                                                    stepItem.id,
                                                                                    (m) => m.numberPCTextController.text,
                                                                                  ) ??
                                                                                  '');
                                                                            }
                                                                          }(),
                                                                        },
                                                                        matchingRows:
                                                                            (rows) =>
                                                                                rows.eqOrNull(
                                                                          'id',
                                                                          stepItem
                                                                              .id,
                                                                        ),
                                                                      );

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiary,
                                                                          width:
                                                                              3.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(5.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .check,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiary,
                                                                          size:
                                                                              32.0,
                                                                        ),
                                                                      ),
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
                                                                      _model.removeAtIndexFromSteps(
                                                                          stepIndex);
                                                                      safeSetState(
                                                                          () {});
                                                                      await StepTable()
                                                                          .delete(
                                                                        matchingRows:
                                                                            (rows) =>
                                                                                rows.eqOrNull(
                                                                          'id',
                                                                          stepItem
                                                                              .id,
                                                                        ),
                                                                      );
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              3.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(5.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .close_sharp,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          size:
                                                                              32.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        10.0)),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 10.0)),
                                                          ),
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          desktop: false,
                                                        ))
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          _model.insertAtIndexInSteps(
                                                                              stepIndex - 1,
                                                                              stepItem);
                                                                          safeSetState(
                                                                              () {});
                                                                          _model.removeAtIndexFromSteps(stepIndex +
                                                                              1);
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .arrow_drop_up_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiary,
                                                                          size:
                                                                              44.0,
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
                                                                        onTap:
                                                                            () async {
                                                                          _model.insertAtIndexInSteps(
                                                                              stepIndex + 1,
                                                                              stepItem);
                                                                          safeSetState(
                                                                              () {});
                                                                          _model.removeAtIndexFromSteps(stepIndex -
                                                                              1);
                                                                          safeSetState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .arrow_drop_down_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiary,
                                                                          size:
                                                                              44.0,
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              Expanded(
                                                                child:
                                                                    wrapWithModel(
                                                                  model: _model
                                                                      .updateStepModels2
                                                                      .getModel(
                                                                    stepItem.id,
                                                                    stepIndex,
                                                                  ),
                                                                  updateCallback: () =>
                                                                      safeSetState(
                                                                          () {}),
                                                                  child:
                                                                      UpdateStepWidget(
                                                                    key: Key(
                                                                      'Key104_${stepItem.id}',
                                                                    ),
                                                                    step:
                                                                        stepItem,
                                                                  ),
                                                                ),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
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
                                                                      await StepTable()
                                                                          .update(
                                                                        data: {
                                                                          'title':
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return _model.updateStepModels2.getValueForKey(
                                                                                stepItem.id,
                                                                                (m) => m.checkboxPhoneValue,
                                                                              );
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return _model.updateStepModels2.getValueForKey(
                                                                                stepItem.id,
                                                                                (m) => m.checkboxPhoneValue,
                                                                              );
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return _model.updateStepModels2.getValueForKey(
                                                                                stepItem.id,
                                                                                (m) => m.checkboxPhoneValue,
                                                                              );
                                                                            } else {
                                                                              return _model.updateIngredientModels1.getValueForKey(
                                                                                stepItem.id,
                                                                                (m) => m.checkboxPCValue,
                                                                              );
                                                                            }
                                                                          }(),
                                                                          'text':
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return _model.updateStepModels2.getValueForKey(
                                                                                stepItem.id,
                                                                                (m) => m.textPhoneTextController.text,
                                                                              );
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return _model.updateStepModels2.getValueForKey(
                                                                                stepItem.id,
                                                                                (m) => m.textPhoneTextController.text,
                                                                              );
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return _model.updateStepModels2.getValueForKey(
                                                                                stepItem.id,
                                                                                (m) => m.textPhoneTextController.text,
                                                                              );
                                                                            } else {
                                                                              return _model.updateStepModels2.getValueForKey(
                                                                                stepItem.id,
                                                                                (m) => m.textPCTextController.text,
                                                                              );
                                                                            }
                                                                          }(),
                                                                          'number':
                                                                              () {
                                                                            if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointSmall) {
                                                                              return int.tryParse(_model.updateStepModels2.getValueForKey(
                                                                                    stepItem.id,
                                                                                    (m) => m.numberPhoneTextController.text,
                                                                                  ) ??
                                                                                  '');
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointMedium) {
                                                                              return int.tryParse(_model.updateStepModels2.getValueForKey(
                                                                                    stepItem.id,
                                                                                    (m) => m.numberPhoneTextController.text,
                                                                                  ) ??
                                                                                  '');
                                                                            } else if (MediaQuery.sizeOf(context).width <
                                                                                kBreakpointLarge) {
                                                                              return int.tryParse(_model.updateStepModels2.getValueForKey(
                                                                                    stepItem.id,
                                                                                    (m) => m.numberPhoneTextController.text,
                                                                                  ) ??
                                                                                  '');
                                                                            } else {
                                                                              return int.tryParse(_model.updateStepModels2.getValueForKey(
                                                                                    stepItem.id,
                                                                                    (m) => m.numberPCTextController.text,
                                                                                  ) ??
                                                                                  '');
                                                                            }
                                                                          }(),
                                                                        },
                                                                        matchingRows:
                                                                            (rows) =>
                                                                                rows.eqOrNull(
                                                                          'id',
                                                                          stepItem
                                                                              .id,
                                                                        ),
                                                                      );

                                                                      safeSetState(
                                                                          () {});
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiary,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(5.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .check,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiary,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
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
                                                                      _model.removeAtIndexFromSteps(
                                                                          stepIndex);
                                                                      safeSetState(
                                                                          () {});
                                                                      await StepTable()
                                                                          .delete(
                                                                        matchingRows:
                                                                            (rows) =>
                                                                                rows.eqOrNull(
                                                                          'id',
                                                                          stepItem
                                                                              .id,
                                                                        ),
                                                                      );
                                                                    },
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              2.0,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding:
                                                                            EdgeInsets.all(5.0),
                                                                        child:
                                                                            Icon(
                                                                          Icons
                                                                              .close_sharp,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          size:
                                                                              20.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        10.0)),
                                                              ),
                                                            ].divide(SizedBox(
                                                                width: 10.0)),
                                                          ),
                                                      ],
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: wrapWithModel(
                                                    model: _model.newStepModel,
                                                    updateCallback: () =>
                                                        safeSetState(() {}),
                                                    child: UpdateStepWidget(),
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
                                                      'title': () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return _model
                                                              .newStepModel
                                                              .checkboxPhoneValue;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return _model
                                                              .newStepModel
                                                              .checkboxPhoneValue;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return _model
                                                              .newStepModel
                                                              .checkboxPhoneValue;
                                                        } else {
                                                          return _model
                                                              .newStepModel
                                                              .checkboxPCValue;
                                                        }
                                                      }(),
                                                      'receipe_id': 0,
                                                      'temprorary_receipe_id':
                                                          widget.recipeID?.id,
                                                      'index':
                                                          _model.steps.length,
                                                      'text': () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return _model
                                                              .newStepModel
                                                              .textPhoneTextController
                                                              .text;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return _model
                                                              .newStepModel
                                                              .textPhoneTextController
                                                              .text;
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return _model
                                                              .newStepModel
                                                              .textPhoneTextController
                                                              .text;
                                                        } else {
                                                          return _model
                                                              .newStepModel
                                                              .textPCTextController
                                                              .text;
                                                        }
                                                      }(),
                                                      'number': () {
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            kBreakpointSmall) {
                                                          return int.tryParse(_model
                                                              .newStepModel
                                                              .numberPhoneTextController
                                                              .text);
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointMedium) {
                                                          return int.tryParse(_model
                                                              .newStepModel
                                                              .numberPhoneTextController
                                                              .text);
                                                        } else if (MediaQuery
                                                                    .sizeOf(
                                                                        context)
                                                                .width <
                                                            kBreakpointLarge) {
                                                          return int.tryParse(_model
                                                              .newStepModel
                                                              .numberPhoneTextController
                                                              .text);
                                                        } else {
                                                          return int.tryParse(_model
                                                              .newStepModel
                                                              .numberPCTextController
                                                              .text);
                                                        }
                                                      }(),
                                                    });
                                                    _model.insertAtIndexInSteps(
                                                        _model.steps.length,
                                                        _model.newStep!);
                                                    safeSetState(() {});
                                                    safeSetState(() {
                                                      _model.newStepModel
                                                              .checkboxPhoneValue =
                                                          _model
                                                              .newStepModel
                                                              .widget!
                                                              .step!
                                                              .title!;
                                                      _model.newStepModel
                                                              .checkboxPCValue =
                                                          _model
                                                              .newStepModel
                                                              .widget!
                                                              .step!
                                                              .title!;
                                                    });
                                                    safeSetState(() {
                                                      _model.newStepModel
                                                          .numberPCTextController
                                                          ?.clear();
                                                      _model.newStepModel
                                                          .textPCTextController
                                                          ?.clear();
                                                      _model.newStepModel
                                                          .numberPhoneTextController
                                                          ?.clear();
                                                      _model.newStepModel
                                                          .textPhoneTextController
                                                          ?.clear();
                                                    });

                                                    safeSetState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.add_circle_outline,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiary,
                                                    size: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 28.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 32.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 32.0;
                                                      } else {
                                                        return 44.0;
                                                      }
                                                    }(),
                                                  ),
                                                ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                ))
                                                  Container(
                                                    width: 90.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                  ),
                                              ].divide(SizedBox(width: 10.0)),
                                            ),
                                          ]
                                              .divide(SizedBox(height: 20.0))
                                              .around(SizedBox(height: 20.0)),
                                        ),
                                      ),
                                    ),
                                    if (_model.updated)
                                      Text(
                                        'Vos modifications ont été enregistré !',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              font: GoogleFonts.interTight(
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineMedium
                                                        .fontStyle,
                                              ),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondary,
                                              letterSpacing: 0.0,
                                              fontWeight:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .fontWeight,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .fontStyle,
                                            ),
                                      ),
                                    if (_model.unpublished)
                                      Text(
                                        'Un ou plusieurs champs obligatoires n\'ont pas été rempli !',
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
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
                                    Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Wrap(
                                          spacing: 10.0,
                                          runSpacing: 10.0,
                                          alignment: WrapAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              WrapCrossAlignment.start,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                              VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: [
                                            FFButtonWidget(
                                              onPressed: () async {
                                                context.pushNamed(
                                                    HomeWidget.routeName);

                                                await IngredientsTable().delete(
                                                  matchingRows: (rows) => rows
                                                      .eqOrNull(
                                                        'temporary_receipe_id',
                                                        widget.recipeID?.id,
                                                      )
                                                      .gtOrNull(
                                                        'created_at',
                                                        supaSerialize<DateTime>(
                                                            _model
                                                                .sessionStart),
                                                      ),
                                                );
                                                await StepTable().delete(
                                                  matchingRows: (rows) => rows
                                                      .eqOrNull(
                                                        'temprorary_receipe_id',
                                                        widget.recipeID?.id,
                                                      )
                                                      .gtOrNull(
                                                        'created_at',
                                                        supaSerialize<DateTime>(
                                                            getCurrentTimestamp),
                                                      ),
                                                );
                                                await ReceipeTagsTable().delete(
                                                  matchingRows: (rows) => rows
                                                      .gtOrNull(
                                                        'created_at',
                                                        supaSerialize<DateTime>(
                                                            getCurrentTimestamp),
                                                      )
                                                      .eqOrNull(
                                                        'temporary_receipe_id',
                                                        widget.recipeID?.id,
                                                      ),
                                                );
                                                await ReceipeImageTable()
                                                    .delete(
                                                  matchingRows: (rows) =>
                                                      rows.eqOrNull(
                                                    'temporary_receipe_id',
                                                    widget.recipeID?.id,
                                                  ),
                                                );
                                                await TemporaryReceipeTable()
                                                    .delete(
                                                  matchingRows: (rows) =>
                                                      rows.eqOrNull(
                                                    'id',
                                                    widget.recipeID?.id,
                                                  ),
                                                );

                                                safeSetState(() {});
                                              },
                                              text: 'Annuler',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                for (int loop1Index = 0;
                                                    loop1Index <
                                                        _model
                                                            .ingredients.length;
                                                    loop1Index++) {
                                                  final currentLoop1Item =
                                                      _model.ingredients[
                                                          loop1Index];
                                                  _model.insertedIngredients =
                                                      await IngredientsTable()
                                                          .insert({
                                                    'index': loop1Index,
                                                    'name':
                                                        currentLoop1Item.name,
                                                    'unit':
                                                        currentLoop1Item.unit,
                                                    'quantity': currentLoop1Item
                                                        .quantity,
                                                    'temporary_receipe_id':
                                                        widget.recipeID?.id,
                                                    'title':
                                                        currentLoop1Item.title,
                                                  });
                                                }
                                                for (int loop2Index = 0;
                                                    loop2Index <
                                                        _model.steps.length;
                                                    loop2Index++) {
                                                  final currentLoop2Item =
                                                      _model.steps[loop2Index];
                                                  _model.insertedStep =
                                                      await StepTable().insert({
                                                    'text':
                                                        currentLoop2Item.text,
                                                    'number':
                                                        currentLoop2Item.number,
                                                    'temprorary_receipe_id':
                                                        widget.recipeID?.id,
                                                    'index': loop2Index,
                                                    'title':
                                                        currentLoop2Item.title,
                                                  });
                                                }
                                                await TemporaryReceipeTable()
                                                    .update(
                                                  data: {
                                                    'name': _model.title,
                                                    'description':
                                                        _model.description,
                                                    'type': _model.type,
                                                    'time_of_cooking min':
                                                        _model.minPrep,
                                                    'time of cooking hour':
                                                        _model.hPrep,
                                                    'difficulty':
                                                        _model.difficulty,
                                                    'Food region':
                                                        _model.region,
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eqOrNull(
                                                    'id',
                                                    widget.recipeID?.id,
                                                  ),
                                                );
                                                _model.updated = true;
                                                safeSetState(() {});
                                                await Future.delayed(
                                                  Duration(
                                                    milliseconds: 1000,
                                                  ),
                                                );
                                                _model.updated = false;
                                                safeSetState(() {});

                                                safeSetState(() {});
                                              },
                                              text: 'Enregistrer ',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: Color(0x6AFF9F1C),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondary,
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  width: 3.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                await TemporaryReceipeTable()
                                                    .update(
                                                  data: {
                                                    'name': _model.title,
                                                    'description':
                                                        _model.description,
                                                    'type': _model.type,
                                                    'time_of_cooking min':
                                                        _model.minPrep,
                                                    'time of cooking hour':
                                                        _model.hPrep,
                                                    'difficulty':
                                                        _model.difficulty,
                                                    'Food region':
                                                        _model.region,
                                                  },
                                                  matchingRows: (rows) =>
                                                      rows.eqOrNull(
                                                    'id',
                                                    widget.recipeID?.id,
                                                  ),
                                                );
                                                _model.recipeCleaner =
                                                    await SupabaseGroup
                                                        .receipeCleanerCall
                                                        .call(
                                                  receipeId:
                                                      widget.recipeID?.id,
                                                );

                                                if ((_model.recipeCleaner
                                                        ?.succeeded ??
                                                    true)) {
                                                  await Future.wait([
                                                    Future(() async {
                                                      safeSetState(() => _model
                                                              .requestCompleter =
                                                          null);
                                                      await _model
                                                          .waitForRequestCompleted();
                                                      safeSetState(() {
                                                        _model
                                                            .typeValueController
                                                            ?.reset();
                                                        _model.typeValue = null;
                                                        _model
                                                            .regionValueController
                                                            ?.reset();
                                                        _model.regionValue =
                                                            null;
                                                        _model
                                                            .difficultyValueController
                                                            ?.reset();
                                                        _model.difficultyValue =
                                                            null;
                                                        _model
                                                            .newIngredientModel
                                                            .unitPCValueController
                                                            ?.reset();
                                                        _model
                                                            .newIngredientModel
                                                            .unitPCValue = null;
                                                        _model
                                                            .newIngredientModel
                                                            .unitPhoneValueController
                                                            ?.reset();
                                                        _model.newIngredientModel
                                                                .unitPhoneValue =
                                                            null;
                                                      });
                                                      safeSetState(() {
                                                        _model.newIngredientModel
                                                                .checkboxPCValue =
                                                            _model
                                                                .newIngredientModel
                                                                .widget!
                                                                .ingredients!
                                                                .title!;
                                                        _model.newIngredientModel
                                                                .checkboxPhoneValue =
                                                            _model
                                                                .newIngredientModel
                                                                .widget!
                                                                .ingredients!
                                                                .title!;
                                                        _model.newStepModel
                                                                .checkboxPCValue =
                                                            _model
                                                                .newStepModel
                                                                .widget!
                                                                .step!
                                                                .title!;
                                                        _model.newStepModel
                                                                .checkboxPhoneValue =
                                                            _model
                                                                .newStepModel
                                                                .widget!
                                                                .step!
                                                                .title!;
                                                      });
                                                      safeSetState(() {
                                                        _model.textController1
                                                            ?.clear();
                                                        _model.textController2
                                                            ?.clear();
                                                        _model.textController3
                                                            ?.clear();
                                                        _model.textController4
                                                            ?.clear();
                                                        _model
                                                                .newIngredientModel
                                                                .quantityPCTextController
                                                                ?.text =
                                                            _model
                                                                .newIngredientModel
                                                                .widget!
                                                                .ingredients!
                                                                .quantity!
                                                                .toString();

                                                        _model
                                                                .newIngredientModel
                                                                .textPCTextController
                                                                ?.text =
                                                            _model
                                                                .newIngredientModel
                                                                .widget!
                                                                .ingredients!
                                                                .name!;

                                                        _model
                                                                .newIngredientModel
                                                                .quantityPhoneTextController
                                                                ?.text =
                                                            _model
                                                                .newIngredientModel
                                                                .widget!
                                                                .ingredients!
                                                                .quantity!
                                                                .toString();

                                                        _model
                                                                .newIngredientModel
                                                                .textPhoneTextController
                                                                ?.text =
                                                            _model
                                                                .newIngredientModel
                                                                .widget!
                                                                .ingredients!
                                                                .name!;

                                                        _model
                                                                .newStepModel
                                                                .numberPCTextController
                                                                ?.text =
                                                            _model
                                                                .newStepModel
                                                                .widget!
                                                                .step!
                                                                .number!
                                                                .toString();

                                                        _model
                                                                .newStepModel
                                                                .textPCTextController
                                                                ?.text =
                                                            _model
                                                                .newStepModel
                                                                .widget!
                                                                .step!
                                                                .text!;

                                                        _model
                                                                .newStepModel
                                                                .numberPhoneTextController
                                                                ?.text =
                                                            _model
                                                                .newStepModel
                                                                .widget!
                                                                .step!
                                                                .number!
                                                                .toString();

                                                        _model
                                                                .newStepModel
                                                                .textPhoneTextController
                                                                ?.text =
                                                            _model
                                                                .newStepModel
                                                                .widget!
                                                                .step!
                                                                .text!;
                                                      });
                                                    }),
                                                    Future(() async {
                                                      _model.cleanedIngredients =
                                                          await IngredientsTable()
                                                              .queryRows(
                                                        queryFn: (q) =>
                                                            q.eqOrNull(
                                                          'temporary_receipe_id',
                                                          widget.recipeID?.id,
                                                        ),
                                                      );
                                                      _model.ingredients = _model
                                                          .cleanedIngredients!
                                                          .toList()
                                                          .cast<
                                                              IngredientsRow>();
                                                      safeSetState(() {});
                                                    }),
                                                    Future(() async {
                                                      _model.cleanedStep =
                                                          await StepTable()
                                                              .queryRows(
                                                        queryFn: (q) =>
                                                            q.eqOrNull(
                                                          'temprorary_receipe_id',
                                                          widget.recipeID?.id,
                                                        ),
                                                      );
                                                      _model.steps = _model
                                                          .cleanedStep!
                                                          .toList()
                                                          .cast<StepRow>();
                                                      safeSetState(() {});
                                                    }),
                                                  ]);
                                                }

                                                safeSetState(() {});
                                              },
                                              text: 'Corriger par IA',
                                              icon: Icon(
                                                Icons.auto_awesome,
                                                size: 24.0,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                iconColor:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                color: Color(0x5E3BB78F),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiary,
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiary,
                                                  width: 3.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                if ((_model.title != null &&
                                                        _model.title != '') &&
                                                    (_model.description !=
                                                            null &&
                                                        _model.description !=
                                                            '') &&
                                                    (_model.type.isNotEmpty) &&
                                                    (_model.region != null &&
                                                        _model.region != '') &&
                                                    (_model.hPrep != null) &&
                                                    (_model.minPrep != null) &&
                                                    (_model.difficulty !=
                                                            null &&
                                                        _model.difficulty !=
                                                            '') &&
                                                    (_model.mainImage != null &&
                                                        (_model.mainImage?.bytes
                                                                ?.isNotEmpty ??
                                                            false))) {
                                                  await Future.wait([
                                                    Future(() async {
                                                      for (int loop1Index = 0;
                                                          loop1Index <
                                                              _model.ingredients
                                                                  .length;
                                                          loop1Index++) {
                                                        final currentLoop1Item =
                                                            _model.ingredients[
                                                                loop1Index];
                                                        _model.publishIngredientsCopy =
                                                            await IngredientsTable()
                                                                .insert({
                                                          'index': loop1Index,
                                                          'name':
                                                              currentLoop1Item
                                                                  .name,
                                                          'unit':
                                                              currentLoop1Item
                                                                  .unit,
                                                          'quantity':
                                                              currentLoop1Item
                                                                  .quantity,
                                                          'temporary_receipe_id':
                                                              widget
                                                                  .recipeID?.id,
                                                          'title':
                                                              currentLoop1Item
                                                                  .title,
                                                        });
                                                      }
                                                    }),
                                                    Future(() async {
                                                      for (int loop2Index = 0;
                                                          loop2Index <
                                                              _model
                                                                  .steps.length;
                                                          loop2Index++) {
                                                        final currentLoop2Item =
                                                            _model.steps[
                                                                loop2Index];
                                                        unawaited(
                                                          () async {
                                                            _model.publishedStep =
                                                                await StepTable()
                                                                    .insert({
                                                              'text':
                                                                  currentLoop2Item
                                                                      .text,
                                                              'number':
                                                                  currentLoop2Item
                                                                      .number,
                                                              'temprorary_receipe_id':
                                                                  widget
                                                                      .recipeID
                                                                      ?.id,
                                                              'index':
                                                                  loop2Index,
                                                              'title':
                                                                  currentLoop2Item
                                                                      .title,
                                                            });
                                                          }(),
                                                        );
                                                      }
                                                    }),
                                                  ]);
                                                  _model.publishedRecipe =
                                                      await SupabaseGroup
                                                          .publishReceipeCall
                                                          .call(
                                                    receipeId:
                                                        widget.recipeID?.id,
                                                  );

                                                  if ((_model.publishedRecipe
                                                          ?.succeeded ??
                                                      true)) {
                                                    context.pushNamed(
                                                      RecipesDetailWidget
                                                          .routeName,
                                                      queryParameters: {
                                                        'recipe':
                                                            serializeParam(
                                                          SupabaseGroup
                                                              .publishReceipeCall
                                                              .receipeID(
                                                            (_model.publishedRecipe
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
                                              icon: Icon(
                                                Icons.check_circle,
                                                size: 24.0,
                                              ),
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .accent1,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          font: GoogleFonts
                                                              .interTight(
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
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 3.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ]
                                      .divide(SizedBox(height: 20.0))
                                      .around(SizedBox(height: 20.0)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    wrapWithModel(
                      model: _model.mobileNavbarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: MobileNavbarWidget(),
                    ),
                    if (FFAppState().sidebarOpen)
                      Expanded(
                        child: wrapWithModel(
                          model: _model.mobileSidenavModel,
                          updateCallback: () => safeSetState(() {}),
                          child: MobileSidenavWidget(),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
