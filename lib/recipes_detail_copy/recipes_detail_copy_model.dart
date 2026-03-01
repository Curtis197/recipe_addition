import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'recipes_detail_copy_widget.dart' show RecipesDetailCopyWidget;
import 'package:flutter/material.dart';

class RecipesDetailCopyModel extends FlutterFlowModel<RecipesDetailCopyWidget> {
  ///  Local state fields for this page.

  int? year = 0;

  int? week = 0;

  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}
