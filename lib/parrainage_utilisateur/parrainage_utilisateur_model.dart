import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'parrainage_utilisateur_widget.dart' show ParrainageUtilisateurWidget;
import 'package:flutter/material.dart';

class ParrainageUtilisateurModel
    extends FlutterFlowModel<ParrainageUtilisateurWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}
