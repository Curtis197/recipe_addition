import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/navbar/navbar_widget.dart';
import '/index.dart';
import 'accueil_widget.dart' show AccueilWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class AccueilModel extends FlutterFlowModel<AccueilWidget> {
  ///  Local state fields for this page.

  List<IngredientCategoryRow> receipeCategory = [];
  void addToReceipeCategory(IngredientCategoryRow item) =>
      receipeCategory.add(item);
  void removeFromReceipeCategory(IngredientCategoryRow item) =>
      receipeCategory.remove(item);
  void removeAtIndexFromReceipeCategory(int index) =>
      receipeCategory.removeAt(index);
  void insertAtIndexInReceipeCategory(int index, IngredientCategoryRow item) =>
      receipeCategory.insert(index, item);
  void updateReceipeCategoryAtIndex(
          int index, Function(IngredientCategoryRow) updateFn) =>
      receipeCategory[index] = updateFn(receipeCategory[index]);

  List<int> ids = [];
  void addToIds(int item) => ids.add(item);
  void removeFromIds(int item) => ids.remove(item);
  void removeAtIndexFromIds(int index) => ids.removeAt(index);
  void insertAtIndexInIds(int index, int item) => ids.insert(index, item);
  void updateIdsAtIndex(int index, Function(int) updateFn) =>
      ids[index] = updateFn(ids[index]);

  int? oldIndex;

  int? newIndex;

  IngredientCategoryRow? deletedRow;

  List<IngredientCategoryRow> orderedRow = [];
  void addToOrderedRow(IngredientCategoryRow item) => orderedRow.add(item);
  void removeFromOrderedRow(IngredientCategoryRow item) =>
      orderedRow.remove(item);
  void removeAtIndexFromOrderedRow(int index) => orderedRow.removeAt(index);
  void insertAtIndexInOrderedRow(int index, IngredientCategoryRow item) =>
      orderedRow.insert(index, item);
  void updateOrderedRowAtIndex(
          int index, Function(IngredientCategoryRow) updateFn) =>
      orderedRow[index] = updateFn(orderedRow[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in Accueil widget.
  List<IngredientCategoryRow>? test;
  // Model for navbar component.
  late NavbarModel navbarModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for foodRegionChoiceChips widget.
  FormFieldController<List<String>>? foodRegionChoiceChipsValueController;
  String? get foodRegionChoiceChipsValue =>
      foodRegionChoiceChipsValueController?.value?.firstOrNull;
  set foodRegionChoiceChipsValue(String? val) =>
      foodRegionChoiceChipsValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Backend Call - Query Rows] action in Row widget.
  List<ReceipeRow>? queriedCountReceipe;
  // State field(s) for ChoiceChipsTag widget.
  FormFieldController<List<String>>? choiceChipsTagValueController;
  String? get choiceChipsTagValue =>
      choiceChipsTagValueController?.value?.firstOrNull;
  set choiceChipsTagValue(String? val) =>
      choiceChipsTagValueController?.value = val != null ? [val] : [];
  Completer<ApiCallResponse>? apiRequestCompleter1;
  // Stores action output result for [Backend Call - Query Rows] action in Row widget.
  List<ReceipeRow>? queriedTagReceipe;
  // State field(s) for ChoiceChipsFoodRegion widget.
  FormFieldController<List<String>>? choiceChipsFoodRegionValueController;
  String? get choiceChipsFoodRegionValue =>
      choiceChipsFoodRegionValueController?.value?.firstOrNull;
  set choiceChipsFoodRegionValue(String? val) =>
      choiceChipsFoodRegionValueController?.value = val != null ? [val] : [];
  Completer<ApiCallResponse>? apiRequestCompleter2;
  // Stores action output result for [Backend Call - Query Rows] action in Row widget.
  List<ReceipeRow>? queriedFoodRegionReceipe;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForApiRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
