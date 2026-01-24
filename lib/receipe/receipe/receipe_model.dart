import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/navbar/navbar_widget.dart';
import '/receipe/delete_receipe/delete_receipe_widget.dart';
import '/receipe/delete_temporary_receipe/delete_temporary_receipe_widget.dart';
import '/index.dart';
import 'receipe_widget.dart' show ReceipeWidget;
import 'package:flutter/material.dart';

class ReceipeModel extends FlutterFlowModel<ReceipeWidget> {
  ///  Local state fields for this page.

  int? receipeId;

  bool editReceipe = false;

  int? editRepeipeId;

  int? editImage;

  bool savedReceipe = false;

  bool editTemporaryReceipe = false;

  int? temporaryId;

  bool deleteReceipe = false;

  bool deleteTemporary = false;

  bool? popUp = false;

  bool deleteImage = false;

  List<int> selectedReceipe = [];
  void addToSelectedReceipe(int item) => selectedReceipe.add(item);
  void removeFromSelectedReceipe(int item) => selectedReceipe.remove(item);
  void removeAtIndexFromSelectedReceipe(int index) =>
      selectedReceipe.removeAt(index);
  void insertAtIndexInSelectedReceipe(int index, int item) =>
      selectedReceipe.insert(index, item);
  void updateSelectedReceipeAtIndex(int index, Function(int) updateFn) =>
      selectedReceipe[index] = updateFn(selectedReceipe[index]);

  List<int> selectedTemporaryReceipe = [];
  void addToSelectedTemporaryReceipe(int item) =>
      selectedTemporaryReceipe.add(item);
  void removeFromSelectedTemporaryReceipe(int item) =>
      selectedTemporaryReceipe.remove(item);
  void removeAtIndexFromSelectedTemporaryReceipe(int index) =>
      selectedTemporaryReceipe.removeAt(index);
  void insertAtIndexInSelectedTemporaryReceipe(int index, int item) =>
      selectedTemporaryReceipe.insert(index, item);
  void updateSelectedTemporaryReceipeAtIndex(
          int index, Function(int) updateFn) =>
      selectedTemporaryReceipe[index] =
          updateFn(selectedTemporaryReceipe[index]);

  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  TemporaryReceipeRow? newReceipe;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  TemporaryReceipeRow? newReceipeWeb;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Container widget.
  List<ReceipeRow>? deletedReceipe;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Container widget.
  List<TemporaryReceipeRow>? deletedTemporaryReceipe;
  // Model for deleteTemporaryReceipe component.
  late DeleteTemporaryReceipeModel deleteTemporaryReceipeModel;
  // Model for deleteReceipe component.
  late DeleteReceipeModel deleteReceipeModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
    deleteTemporaryReceipeModel =
        createModel(context, () => DeleteTemporaryReceipeModel());
    deleteReceipeModel = createModel(context, () => DeleteReceipeModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
    deleteTemporaryReceipeModel.dispose();
    deleteReceipeModel.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
