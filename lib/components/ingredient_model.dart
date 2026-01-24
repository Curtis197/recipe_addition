import '/flutter_flow/flutter_flow_util.dart';
import '/receipe/insert_ingredient/insert_ingredient_widget.dart';
import 'ingredient_widget.dart' show IngredientWidget;
import 'package:flutter/material.dart';

class IngredientModel extends FlutterFlowModel<IngredientWidget> {
  ///  Local state fields for this component.

  bool edit = false;

  ///  State fields for stateful widgets in this component.

  // Model for insertIngredient component.
  late InsertIngredientModel insertIngredientModel;

  @override
  void initState(BuildContext context) {
    insertIngredientModel = createModel(context, () => InsertIngredientModel());
  }

  @override
  void dispose() {
    insertIngredientModel.dispose();
  }
}
