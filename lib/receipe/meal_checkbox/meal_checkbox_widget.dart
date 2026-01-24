import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'meal_checkbox_model.dart';
export 'meal_checkbox_model.dart';

class MealCheckboxWidget extends StatefulWidget {
  const MealCheckboxWidget({
    super.key,
    this.type,
    required this.receipeId,
    this.ok,
  });

  final String? type;
  final int? receipeId;
  final bool? ok;

  @override
  State<MealCheckboxWidget> createState() => _MealCheckboxWidgetState();
}

class _MealCheckboxWidgetState extends State<MealCheckboxWidget> {
  late MealCheckboxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MealCheckboxModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.receipeType = await SupabaseGroup.receipeTypeCall.call(
        receipeId: widget.receipeId,
        type: widget.type,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Theme(
        data: ThemeData(
          checkboxTheme: CheckboxThemeData(
            visualDensity: VisualDensity.compact,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          unselectedWidgetColor: FlutterFlowTheme.of(context).alternate,
        ),
        child: CheckboxListTile(
          value: _model.checkboxListTileValue ??=
              SupabaseGroup.receipeTypeCall.result(
                        (_model.receipeType?.jsonBody ?? ''),
                      ) ==
                      true
                  ? true
                  : false,
          onChanged: (newValue) async {
            safeSetState(() => _model.checkboxListTileValue = newValue!);
            if (newValue!) {
              _model.addType =
                  await SupabaseGroup.receipeTypeModificationCall.call(
                isIn: true,
                receipeId: widget.receipeId,
                type: widget.type,
              );

              safeSetState(() {});
            } else {
              _model.apiResultjt8 =
                  await SupabaseGroup.receipeTypeModificationCall.call(
                isIn: false,
                receipeId: widget.receipeId,
                type: widget.type,
              );

              safeSetState(() {});
            }
          },
          title: Text(
            valueOrDefault<String>(
              SupabaseGroup.receipeTypeCall
                  .result(
                    (_model.receipeType?.jsonBody ?? ''),
                  )
                  ?.toString(),
              'result',
            ),
            style: FlutterFlowTheme.of(context).titleSmall.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).titleSmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).titleSmall.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).titleSmall.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).titleSmall.fontStyle,
                ),
          ),
          tileColor: FlutterFlowTheme.of(context).secondaryBackground,
          activeColor: FlutterFlowTheme.of(context).primary,
          checkColor: FlutterFlowTheme.of(context).info,
          dense: false,
          controlAffinity: ListTileControlAffinity.trailing,
          contentPadding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
