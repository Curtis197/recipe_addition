import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/navbar/navbar_widget.dart';
import '/index.dart';
import 'dart:async';
import 'test_accueil_widget.dart' show TestAccueilWidget;
import 'package:flutter/material.dart';

class TestAccueilModel extends FlutterFlowModel<TestAccueilWidget> {
  ///  Local state fields for this page.

  TemporaryReceipeRow? receipe;

  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;
  Completer<List<IngredientsRow>>? requestCompleter;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ReceipeRow? newReceipeCopy;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<IngredientsRow>? updatedIngredientCopy;
  // Stores action output result for [Backend Call - Insert Row] action in Sauvegarder widget.
  ReceipeRow? newReceipe;
  // Stores action output result for [Backend Call - Update Row(s)] action in Sauvegarder widget.
  List<IngredientsRow>? updatedIngredient;
  // Stores action output result for [Backend Call - Update Row(s)] action in Sauvegarder widget.
  List<StepRow>? updatedStep;
  // Stores action output result for [Backend Call - API (receipeinfo)] action in Sauvegarder widget.
  ApiCallResponse? receipeMacro;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
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
