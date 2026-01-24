import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/receipe/insert_step/insert_step_widget.dart';
import 'step_widget.dart' show StepWidget;
import 'package:flutter/material.dart';

class StepModel extends FlutterFlowModel<StepWidget> {
  ///  Local state fields for this component.

  bool edit = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - Update Row(s)] action in step widget.
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
