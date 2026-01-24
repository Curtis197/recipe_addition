import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/receipe/insert_step/insert_step_widget.dart';
import 'receipe_step_widget.dart' show ReceipeStepWidget;
import 'package:flutter/material.dart';

class ReceipeStepModel extends FlutterFlowModel<ReceipeStepWidget> {
  ///  Local state fields for this component.

  bool edit = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Update Row(s)] action in receipeStep widget.
  List<StepRow>? indexControl;
  Stream<List<StepRow>>? conditionalBuilderSupabaseStream;
  // Model for insertStep component.
  late InsertStepModel insertStepModel;

  @override
  void initState(BuildContext context) {
    insertStepModel = createModel(context, () => InsertStepModel());
  }

  @override
  void dispose() {
    insertStepModel.dispose();
  }
}
