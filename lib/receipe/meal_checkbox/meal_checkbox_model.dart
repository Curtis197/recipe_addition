import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'meal_checkbox_widget.dart' show MealCheckboxWidget;
import 'package:flutter/material.dart';

class MealCheckboxModel extends FlutterFlowModel<MealCheckboxWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (receipe type)] action in MealCheckbox widget.
  ApiCallResponse? receipeType;
  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;
  // Stores action output result for [Backend Call - API (receipe type modification)] action in CheckboxListTile widget.
  ApiCallResponse? addType;
  // Stores action output result for [Backend Call - API (receipe type modification)] action in CheckboxListTile widget.
  ApiCallResponse? apiResultjt8;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
