import '/backend/supabase/supabase.dart';
import '/components/mobile_navbar_widget.dart';
import '/components/mobile_sidenav_widget.dart';
import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'dart:async';
import 'recipes_widget.dart' show RecipesWidget;
import 'package:flutter/material.dart';

class RecipesModel extends FlutterFlowModel<RecipesWidget> {
  ///  Local state fields for this page.

  String recipeSearch = 'Toutes';

  String published = 'all';

  String? name;

  String? region;

  String? type;

  String? sorting;

  int? boolean;

  bool? all = true;

  bool? publishedRecipe = false;

  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  TemporaryReceipeRow? temporaryRecipe;
  Completer<List<CreatorDashboardStatsRow>>? requestCompleter;
  // State field(s) for nameRecipeTalet widget.
  FocusNode? nameRecipeTaletFocusNode;
  TextEditingController? nameRecipeTaletTextController;
  String? Function(BuildContext, String?)?
      nameRecipeTaletTextControllerValidator;
  // State field(s) for typeRecipeTablet widget.
  String? typeRecipeTabletValue;
  FormFieldController<String>? typeRecipeTabletValueController;
  // State field(s) for regieonRecipeTablet widget.
  String? regieonRecipeTabletValue;
  FormFieldController<String>? regieonRecipeTabletValueController;
  // State field(s) for sortRecipeTablet widget.
  String? sortRecipeTabletValue;
  FormFieldController<String>? sortRecipeTabletValueController;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<TemporaryReceipeRow>? temporary;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ReceipeRow>? receipe;
  // Model for mobile_navbar component.
  late MobileNavbarModel mobileNavbarModel;
  // Model for mobile_sidenav component.
  late MobileSidenavModel mobileSidenavModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
    mobileNavbarModel = createModel(context, () => MobileNavbarModel());
    mobileSidenavModel = createModel(context, () => MobileSidenavModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
    nameRecipeTaletFocusNode?.dispose();
    nameRecipeTaletTextController?.dispose();

    mobileNavbarModel.dispose();
    mobileSidenavModel.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
