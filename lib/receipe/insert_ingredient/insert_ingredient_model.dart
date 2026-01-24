import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'insert_ingredient_widget.dart' show InsertIngredientWidget;
import 'package:flutter/material.dart';

class InsertIngredientModel extends FlutterFlowModel<InsertIngredientWidget> {
  ///  Local state fields for this component.

  bool title = false;

  int? roundTypeIndex = 1;

  ///  State fields for stateful widgets in this component.

  // State field(s) for quantity widget.
  FocusNode? quantityFocusNode;
  TextEditingController? quantityTextController;
  String? Function(BuildContext, String?)? quantityTextControllerValidator;
  // State field(s) for unit widget.
  String? unitValue;
  FormFieldController<String>? unitValueController;
  // State field(s) for round widget.
  String? roundValue;
  FormFieldController<String>? roundValueController;
  // Stores action output result for [Backend Call - Query Rows] action in round widget.
  List<RoundTypeRow>? roundType;
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    quantityFocusNode?.dispose();
    quantityTextController?.dispose();

    nameFocusNode?.dispose();
    nameTextController?.dispose();
  }
}
