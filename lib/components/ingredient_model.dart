import '/flutter_flow/flutter_flow_util.dart';
import '/receipe/update_ingredient/update_ingredient_widget.dart';
import 'ingredient_widget.dart' show IngredientWidget;
import 'package:flutter/material.dart';

class IngredientModel extends FlutterFlowModel<IngredientWidget> {
  ///  Local state fields for this component.

  bool edit = false;

  ///  State fields for stateful widgets in this component.

  // Model for updateIngredient component.
  late UpdateIngredientModel updateIngredientModel;

  @override
  void initState(BuildContext context) {
    updateIngredientModel = createModel(context, () => UpdateIngredientModel());
  }

  @override
  void dispose() {
    updateIngredientModel.dispose();
  }
}
