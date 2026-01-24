import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ingredi_widget.dart' show IngrediWidget;
import 'package:flutter/material.dart';

class IngrediModel extends FlutterFlowModel<IngrediWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for quantity widget.
  FocusNode? quantityFocusNode;
  TextEditingController? quantityTextController;
  String? Function(BuildContext, String?)? quantityTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
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
