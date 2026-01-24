import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'temporary_receipe_type_widget.dart' show TemporaryReceipeTypeWidget;
import 'package:flutter/material.dart';

class TemporaryReceipeTypeModel
    extends FlutterFlowModel<TemporaryReceipeTypeWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (temporary receipe type modification)] action in Icon widget.
  ApiCallResponse? addType;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (temporary receipe type modification)] action in Icon widget.
  ApiCallResponse? removeType;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
