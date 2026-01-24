import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/navbar/navbar_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'temporary_receipe_detail_model.dart';
export 'temporary_receipe_detail_model.dart';

class TemporaryReceipeDetailWidget extends StatefulWidget {
  const TemporaryReceipeDetailWidget({
    super.key,
    required this.receipeId,
  });

  final int? receipeId;

  static String routeName = 'TemporaryReceipeDetail';
  static String routePath = '/temporaryReceipeDetail';

  @override
  State<TemporaryReceipeDetailWidget> createState() =>
      _TemporaryReceipeDetailWidgetState();
}

class _TemporaryReceipeDetailWidgetState
    extends State<TemporaryReceipeDetailWidget> {
  late TemporaryReceipeDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TemporaryReceipeDetailModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<TemporaryReceipeRow>>(
      future: TemporaryReceipeTable().querySingleRow(
        queryFn: (q) => q.eqOrNull(
          'id',
          widget.receipeId,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
        List<TemporaryReceipeRow>
            temporaryReceipeDetailTemporaryReceipeRowList = snapshot.data!;

        final temporaryReceipeDetailTemporaryReceipeRow =
            temporaryReceipeDetailTemporaryReceipeRowList.isNotEmpty
                ? temporaryReceipeDetailTemporaryReceipeRowList.first
                : null;

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
                    title: Text(
                      valueOrDefault<String>(
                        temporaryReceipeDetailTemporaryReceipeRow?.name,
                        'receipe name',
                      ),
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
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
                    centerTitle: true,
                    elevation: 2.0,
                  )
                : null,
            body: SafeArea(
              top: true,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
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
                          Container(
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
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                  ))
                                    Text(
                                      valueOrDefault<String>(
                                        temporaryReceipeDetailTemporaryReceipeRow
                                            ?.name,
                                        'nom de la recette ',
                                      ),
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
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
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
                                  FutureBuilder<List<ReceipeImageRow>>(
                                    future: ReceipeImageTable().queryRows(
                                      queryFn: (q) => q.eqOrNull(
                                        'temporary_receipe_id',
                                        temporaryReceipeDetailTemporaryReceipeRow
                                            ?.id,
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
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<ReceipeImageRow>
                                          containerReceipeImageRowList =
                                          snapshot.data!;

                                      return Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (containerReceipeImageRowList
                                                .isNotEmpty)
                                              Builder(
                                                builder: (context) {
                                                  final containerVar =
                                                      containerReceipeImageRowList
                                                          .toList();

                                                  return Container(
                                                    width: double.infinity,
                                                    height: () {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          kBreakpointSmall) {
                                                        return 200.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointMedium) {
                                                        return 250.0;
                                                      } else if (MediaQuery
                                                                  .sizeOf(
                                                                      context)
                                                              .width <
                                                          kBreakpointLarge) {
                                                        return 300.0;
                                                      } else {
                                                        return 350.0;
                                                      }
                                                    }(),
                                                    child:
                                                        CarouselSlider.builder(
                                                      itemCount:
                                                          containerVar.length,
                                                      itemBuilder: (context,
                                                          containerVarIndex,
                                                          _) {
                                                        final containerVarItem =
                                                            containerVar[
                                                                containerVarIndex];
                                                        return Visibility(
                                                          visible:
                                                              containerVarItem
                                                                          .id !=
                                                                      '',
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              containerVarItem.url !=
                                                                          null &&
                                                                      containerVarItem
                                                                              .url !=
                                                                          ''
                                                                  ? containerVarItem
                                                                      .url!
                                                                  : 'https://picsum.photos/seed/506/600',
                                                              width: 200.0,
                                                              height: 200.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                      carouselController: _model
                                                              .carouselController ??=
                                                          CarouselSliderController(),
                                                      options: CarouselOptions(
                                                        initialPage: max(
                                                            0,
                                                            min(
                                                                1,
                                                                containerVar
                                                                        .length -
                                                                    1)),
                                                        viewportFraction: 0.5,
                                                        disableCenter: true,
                                                        enlargeCenterPage: true,
                                                        enlargeFactor: 0.25,
                                                        enableInfiniteScroll:
                                                            true,
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        autoPlay: false,
                                                        onPageChanged: (index,
                                                                _) =>
                                                            _model.carouselCurrentIndex =
                                                                index,
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ),
                                            if (!(containerReceipeImageRowList
                                                .isNotEmpty))
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  'https://picsum.photos/seed/392/600',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                  FutureBuilder<List<ReceipeTagsRow>>(
                                    future: ReceipeTagsTable().queryRows(
                                      queryFn: (q) => q.eqOrNull(
                                        'receipe_id',
                                        temporaryReceipeDetailTemporaryReceipeRow
                                            ?.id,
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
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
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
                                              wrapReceipeTagsRowList[wrapIndex];
                                          return Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 5.0, 10.0, 5.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Text(
                                                    valueOrDefault<String>(
                                                      wrapReceipeTagsRow.name,
                                                      'name',
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
                                                  ),
                                                ].divide(SizedBox(width: 5.0)),
                                              ),
                                            ),
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                  Text(
                                    'Description',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      temporaryReceipeDetailTemporaryReceipeRow
                                          ?.description,
                                      'Description de la recette',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          font: GoogleFonts.inter(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                  Text(
                                    'Ingredients',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                  FutureBuilder<List<IngredientsRow>>(
                                    future: IngredientsTable().queryRows(
                                      queryFn: (q) => q.eqOrNull(
                                        'temporary_receipe_id',
                                        temporaryReceipeDetailTemporaryReceipeRow
                                            ?.id,
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
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<IngredientsRow>
                                          containerIngredientsRowList =
                                          snapshot.data!;

                                      return Container(
                                        decoration: BoxDecoration(),
                                      );
                                    },
                                  ),
                                  FutureBuilder<List<IngredientsRow>>(
                                    future: IngredientsTable().queryRows(
                                      queryFn: (q) => q
                                          .eqOrNull(
                                            'temporary_receipe_id',
                                            temporaryReceipeDetailTemporaryReceipeRow
                                                ?.id,
                                          )
                                          .order('index', ascending: true),
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
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<IngredientsRow>
                                          containerIngredientsRowList =
                                          snapshot.data!;

                                      return Container(
                                        decoration: BoxDecoration(),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (containerIngredientsRowList
                                                .isNotEmpty)
                                              Builder(
                                                builder: (context) {
                                                  final containerVar =
                                                      containerIngredientsRowList
                                                          .toList();

                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: List.generate(
                                                        containerVar.length,
                                                        (containerVarIndex) {
                                                      final containerVarItem =
                                                          containerVar[
                                                              containerVarIndex];
                                                      return Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child:
                                                                    Visibility(
                                                                  visible:
                                                                      containerVarItem
                                                                              .quantity !=
                                                                          null,
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      containerVarItem
                                                                          .quantity
                                                                          ?.toString(),
                                                                      ' 0',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.interTight(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          if (containerVarItem
                                                                      .unit !=
                                                                  null &&
                                                              containerVarItem
                                                                      .unit !=
                                                                  '')
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      containerVarItem
                                                                          .unit,
                                                                      'unit',
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
                                                                ),
                                                              ],
                                                            ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              if (containerVarItem
                                                                      .title ==
                                                                  true)
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      containerVarItem
                                                                          .name,
                                                                      'name',
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .override(
                                                                          font:
                                                                              GoogleFonts.interTight(
                                                                            fontWeight:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontWeight,
                                                                            fontStyle:
                                                                                FlutterFlowTheme.of(context).titleSmall.fontStyle,
                                                                          ),
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontWeight,
                                                                          fontStyle: FlutterFlowTheme.of(context)
                                                                              .titleSmall
                                                                              .fontStyle,
                                                                        ),
                                                                  ),
                                                                ),
                                                              if (containerVarItem
                                                                      .title ==
                                                                  false)
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      containerVarItem
                                                                          .name,
                                                                      'name',
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
                                                                ),
                                                            ],
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 10.0)),
                                                      );
                                                    }).divide(
                                                        SizedBox(height: 10.0)),
                                                  );
                                                },
                                              ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                  Text(
                                    'Etapes',
                                    style: FlutterFlowTheme.of(context)
                                        .titleLarge
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleLarge
                                                    .fontStyle,
                                          ),
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleLarge
                                                  .fontStyle,
                                        ),
                                  ),
                                  FutureBuilder<List<StepRow>>(
                                    future: StepTable().queryRows(
                                      queryFn: (q) => q
                                          .eqOrNull(
                                            'temprorary_receipe_id',
                                            temporaryReceipeDetailTemporaryReceipeRow
                                                ?.id,
                                          )
                                          .order('index', ascending: true),
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
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<StepRow> containerStepRowList =
                                          snapshot.data!;

                                      return Container(
                                        decoration: BoxDecoration(),
                                        child: Visibility(
                                          visible:
                                              containerStepRowList.isNotEmpty,
                                          child: Builder(
                                            builder: (context) {
                                              final containerVar =
                                                  containerStepRowList.toList();

                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    containerVar.length,
                                                    (containerVarIndex) {
                                                  final containerVarItem =
                                                      containerVar[
                                                          containerVarIndex];
                                                  return Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (containerVarItem
                                                              .number !=
                                                          null)
                                                        Text(
                                                          valueOrDefault<
                                                              String>(
                                                            containerVarItem
                                                                .number
                                                                ?.toString(),
                                                            '0',
                                                          ),
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
                                                                    .secondary,
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
                                                      if (containerVarItem
                                                              .title ??
                                                          true)
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                          child: Visibility(
                                                            visible:
                                                                containerVarItem
                                                                        .title ==
                                                                    true,
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                containerVarItem
                                                                    .text,
                                                                'text',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmall
                                                                  .override(
                                                                    font: GoogleFonts
                                                                        .interTight(
                                                                      fontWeight: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontWeight,
                                                                      fontStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleSmall
                                                                          .fontStyle,
                                                                    ),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleSmall
                                                                        .fontStyle,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                      if (!containerVarItem
                                                          .title!)
                                                        Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                          child: Visibility(
                                                            visible:
                                                                containerVarItem
                                                                        .title ==
                                                                    false,
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                containerVarItem
                                                                    .text,
                                                                'text',
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
                                                          ),
                                                        ),
                                                    ].divide(
                                                        SizedBox(width: 20.0)),
                                                  );
                                                }).divide(
                                                    SizedBox(height: 10.0)),
                                              );
                                            },
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                  Container(
                                    decoration: BoxDecoration(),
                                  ),
                                ].divide(SizedBox(height: 20.0)),
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
      },
    );
  }
}
