import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/mobile_navbar_widget.dart';
import '/components/mobile_sidenav_widget.dart';
import '/components/navbar_widget.dart';
import '/components/pending_recipe_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  TemporaryReceipeRow? recipe;

  ReceipeImageRow? recipeImage;

  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;
  // Models for pending_recipe_card dynamic component.
  late FlutterFlowDynamicModels<PendingRecipeCardModel> pendingRecipeCardModels;
  // Stores action output result for [Backend Call - API (publish receipe)] action in Button widget.
  ApiCallResponse? publishRecipe2;
  // Stores action output result for [Backend Call - API (publish receipe)] action in Button widget.
  ApiCallResponse? publishRecipe;
  // Model for mobile_navbar component.
  late MobileNavbarModel mobileNavbarModel;
  // Model for mobile_sidenav component.
  late MobileSidenavModel mobileSidenavModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
    pendingRecipeCardModels =
        FlutterFlowDynamicModels(() => PendingRecipeCardModel());
    mobileNavbarModel = createModel(context, () => MobileNavbarModel());
    mobileSidenavModel = createModel(context, () => MobileSidenavModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
    pendingRecipeCardModels.dispose();
    mobileNavbarModel.dispose();
    mobileSidenavModel.dispose();
  }
}
