import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'update_ingredient_widget.dart' show UpdateIngredientWidget;
import 'package:flutter/material.dart';

class UpdateIngredientModel extends FlutterFlowModel<UpdateIngredientWidget> {
  ///  Local state fields for this component.

  bool title = false;

  int? roundTypeIndex = 1;

  ///  State fields for stateful widgets in this component.

  // State field(s) for quantityPC widget.
  FocusNode? quantityPCFocusNode;
  TextEditingController? quantityPCTextController;
  String? Function(BuildContext, String?)? quantityPCTextControllerValidator;
  // State field(s) for unitPC widget.
  String? unitPCValue;
  FormFieldController<String>? unitPCValueController;
  // State field(s) for textPC widget.
  FocusNode? textPCFocusNode;
  TextEditingController? textPCTextController;
  String? Function(BuildContext, String?)? textPCTextControllerValidator;
  // State field(s) for CheckboxPC widget.
  bool? checkboxPCValue;
  // State field(s) for quantityPhone widget.
  FocusNode? quantityPhoneFocusNode;
  TextEditingController? quantityPhoneTextController;
  String? Function(BuildContext, String?)? quantityPhoneTextControllerValidator;
  // State field(s) for unitPhone widget.
  String? unitPhoneValue;
  FormFieldController<String>? unitPhoneValueController;
  // State field(s) for CheckboxPhone widget.
  bool? checkboxPhoneValue;
  // State field(s) for TextPhone widget.
  FocusNode? textPhoneFocusNode;
  TextEditingController? textPhoneTextController;
  String? Function(BuildContext, String?)? textPhoneTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    quantityPCFocusNode?.dispose();
    quantityPCTextController?.dispose();

    textPCFocusNode?.dispose();
    textPCTextController?.dispose();

    quantityPhoneFocusNode?.dispose();
    quantityPhoneTextController?.dispose();

    textPhoneFocusNode?.dispose();
    textPhoneTextController?.dispose();
  }
}
