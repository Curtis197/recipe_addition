import '/flutter_flow/flutter_flow_util.dart';
import 'update_step_widget.dart' show UpdateStepWidget;
import 'package:flutter/material.dart';

class UpdateStepModel extends FlutterFlowModel<UpdateStepWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for numberPC widget.
  FocusNode? numberPCFocusNode;
  TextEditingController? numberPCTextController;
  String? Function(BuildContext, String?)? numberPCTextControllerValidator;
  // State field(s) for textPC widget.
  FocusNode? textPCFocusNode;
  TextEditingController? textPCTextController;
  String? Function(BuildContext, String?)? textPCTextControllerValidator;
  // State field(s) for CheckboxPC widget.
  bool? checkboxPCValue;
  // State field(s) for numberPhone widget.
  FocusNode? numberPhoneFocusNode;
  TextEditingController? numberPhoneTextController;
  String? Function(BuildContext, String?)? numberPhoneTextControllerValidator;
  // State field(s) for CheckboxPhone widget.
  bool? checkboxPhoneValue;
  // State field(s) for textPhone widget.
  FocusNode? textPhoneFocusNode;
  TextEditingController? textPhoneTextController;
  String? Function(BuildContext, String?)? textPhoneTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    numberPCFocusNode?.dispose();
    numberPCTextController?.dispose();

    textPCFocusNode?.dispose();
    textPCTextController?.dispose();

    numberPhoneFocusNode?.dispose();
    numberPhoneTextController?.dispose();

    textPhoneFocusNode?.dispose();
    textPhoneTextController?.dispose();
  }
}
