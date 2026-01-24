import '/flutter_flow/flutter_flow_util.dart';
import 'insert_step_widget.dart' show InsertStepWidget;
import 'package:flutter/material.dart';

class InsertStepModel extends FlutterFlowModel<InsertStepWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for number widget.
  FocusNode? numberFocusNode;
  TextEditingController? numberTextController;
  String? Function(BuildContext, String?)? numberTextControllerValidator;
  // State field(s) for text widget.
  FocusNode? textFocusNode;
  TextEditingController? textTextController;
  String? Function(BuildContext, String?)? textTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    numberFocusNode?.dispose();
    numberTextController?.dispose();

    textFocusNode?.dispose();
    textTextController?.dispose();
  }
}
