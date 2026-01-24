import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/navbar/navbar_widget.dart';
import 'receipe_detail_web_widget.dart' show ReceipeDetailWebWidget;
import 'package:flutter/material.dart';

class ReceipeDetailWebModel extends FlutterFlowModel<ReceipeDetailWebWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;
  Stream<List<IngredientsRow>>? columnSupabaseStream1;
  Stream<List<IngredientsRow>>? columnSupabaseStream2;
  Stream<List<IngredientsRow>>? columnSupabaseStream3;
  Stream<List<StepRow>>? columnSupabaseStream4;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
