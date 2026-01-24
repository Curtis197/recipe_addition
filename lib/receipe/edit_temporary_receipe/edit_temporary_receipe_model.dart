import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/navbar/navbar_widget.dart';
import '/receipe/insert_ingredient/insert_ingredient_widget.dart';
import '/receipe/insert_step/insert_step_widget.dart';
import '/receipe/temporary_receipe_type/temporary_receipe_type_widget.dart';
import '/index.dart';
import 'dart:async';
import 'edit_temporary_receipe_widget.dart' show EditTemporaryReceipeWidget;
import 'package:flutter/material.dart';

class EditTemporaryReceipeModel
    extends FlutterFlowModel<EditTemporaryReceipeWidget> {
  ///  Local state fields for this page.

  bool editImage = false;

  String? imageId;

  bool editTimeOfCooking = false;

  bool editName = false;

  bool? editDescription = false;

  bool editFoodRegion = false;

  bool difficultyEdit = false;

  String? ingredientID;

  String? stepID;

  List<IngredientsRow> ingredientList = [];
  void addToIngredientList(IngredientsRow item) => ingredientList.add(item);
  void removeFromIngredientList(IngredientsRow item) =>
      ingredientList.remove(item);
  void removeAtIndexFromIngredientList(int index) =>
      ingredientList.removeAt(index);
  void insertAtIndexInIngredientList(int index, IngredientsRow item) =>
      ingredientList.insert(index, item);
  void updateIngredientListAtIndex(
          int index, Function(IngredientsRow) updateFn) =>
      ingredientList[index] = updateFn(ingredientList[index]);

  List<StepRow> stepList = [];
  void addToStepList(StepRow item) => stepList.add(item);
  void removeFromStepList(StepRow item) => stepList.remove(item);
  void removeAtIndexFromStepList(int index) => stepList.removeAt(index);
  void insertAtIndexInStepList(int index, StepRow item) =>
      stepList.insert(index, item);
  void updateStepListAtIndex(int index, Function(StepRow) updateFn) =>
      stepList[index] = updateFn(stepList[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in EditTemporaryReceipe widget.
  List<IngredientsRow>? ingredientIDs;
  // Stores action output result for [Backend Call - Query Rows] action in EditTemporaryReceipe widget.
  List<StepRow>? stepIDs;
  // Model for navbar component.
  late NavbarModel navbarModel;
  // State field(s) for insertName widget.
  FocusNode? insertNameFocusNode;
  TextEditingController? insertNameTextController;
  String? Function(BuildContext, String?)? insertNameTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<TemporaryReceipeRow>? insertNAme;
  Completer<List<TemporaryReceipeRow>>? requestCompleter1;
  // State field(s) for updateName widget.
  FocusNode? updateNameFocusNode;
  TextEditingController? updateNameTextController;
  String? Function(BuildContext, String?)? updateNameTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<TemporaryReceipeRow>? updateName;
  bool isDataUploading_updateNewImage = false;
  FFUploadedFile uploadedLocalFile_updateNewImage =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  bool isDataUploading_uploadedEditNewReceipeimage = false;
  FFUploadedFile uploadedLocalFile_uploadedEditNewReceipeimage =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadedEditNewReceipeimage = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<ReceipeImageRow>? updateTemporaryImage;
  Completer<List<ReceipeImageRow>>? requestCompleter2;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<ReceipeImageRow>? updateTemporaryImageField;
  bool isDataUploading_edtNewImage = false;
  FFUploadedFile uploadedLocalFile_edtNewImage =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  bool isDataUploading_uploadedNewReceipeimage = false;
  FFUploadedFile uploadedLocalFile_uploadedNewReceipeimage =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadedNewReceipeimage = '';

  // Stores action output result for [Backend Call - Insert Row] action in Icon widget.
  ReceipeImageRow? insertTemporaryImage;
  // State field(s) for InsertReceipetimeofcookingHour widget.
  FocusNode? insertReceipetimeofcookingHourFocusNode;
  TextEditingController? insertReceipetimeofcookingHourTextController;
  String? Function(BuildContext, String?)?
      insertReceipetimeofcookingHourTextControllerValidator;
  // State field(s) for InsertReceipetimeofcookingMin widget.
  FocusNode? insertReceipetimeofcookingMinFocusNode;
  TextEditingController? insertReceipetimeofcookingMinTextController;
  String? Function(BuildContext, String?)?
      insertReceipetimeofcookingMinTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<TemporaryReceipeRow>? insertTemporaryTimeofCooking;
  // State field(s) for editReceipetimeofcookingHour widget.
  FocusNode? editReceipetimeofcookingHourFocusNode;
  TextEditingController? editReceipetimeofcookingHourTextController;
  String? Function(BuildContext, String?)?
      editReceipetimeofcookingHourTextControllerValidator;
  // State field(s) for editReceipetimeofcookingmin widget.
  FocusNode? editReceipetimeofcookingminFocusNode;
  TextEditingController? editReceipetimeofcookingminTextController;
  String? Function(BuildContext, String?)?
      editReceipetimeofcookingminTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<TemporaryReceipeRow>? uPDATETimeOfCooking;
  // State field(s) for insertDescription widget.
  FocusNode? insertDescriptionFocusNode;
  TextEditingController? insertDescriptionTextController;
  String? Function(BuildContext, String?)?
      insertDescriptionTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<TemporaryReceipeRow>? insertDecription;
  // State field(s) for updateDescription widget.
  FocusNode? updateDescriptionFocusNode;
  TextEditingController? updateDescriptionTextController;
  String? Function(BuildContext, String?)?
      updateDescriptionTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<TemporaryReceipeRow>? updatedDecription;
  // Stores action output result for [Backend Call - API (update ingredient index)] action in ingredientListEditRecepe widget.
  ApiCallResponse? updatedIngredientRow;
  // Models for editingredient.
  late FlutterFlowDynamicModels<InsertIngredientModel> editingredientModels;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<IngredientsRow>? updatedIngredient;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Icon widget.
  List<IngredientsRow>? deletedIIngredient;
  // Stores action output result for [Backend Call - API (update ingredient index)] action in Icon widget.
  ApiCallResponse? deletedIngredientRow;
  // Model for insertIngredient component.
  late InsertIngredientModel insertIngredientModel;
  // Stores action output result for [Backend Call - Insert Row] action in Icon widget.
  IngredientsRow? newIngredient;
  // Stores action output result for [Backend Call - API (step reordering)] action in EditReceipeStepList widget.
  ApiCallResponse? reorderedStep;
  // Models for editStep.
  late FlutterFlowDynamicModels<InsertStepModel> editStepModels;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<StepRow>? updatedStep;
  // Stores action output result for [Backend Call - API (step reordering)] action in Icon widget.
  ApiCallResponse? deletedStep;
  // Model for insertStep component.
  late InsertStepModel insertStepModel;
  // Stores action output result for [Backend Call - Insert Row] action in Icon widget.
  StepRow? newStep;
  // State field(s) for FoodRegionEdit widget.
  String? foodRegionEditValue;
  FormFieldController<String>? foodRegionEditValueController;
  // State field(s) for FoodRegionCreate widget.
  String? foodRegionCreateValue;
  FormFieldController<String>? foodRegionCreateValueController;
  // State field(s) for DifficulyEdit widget.
  String? difficulyEditValue;
  FormFieldController<String>? difficulyEditValueController;
  // State field(s) for DifficultyCreate widget.
  String? difficultyCreateValue;
  FormFieldController<String>? difficultyCreateValueController;
  Completer<List<ReceipeTagsRow>>? requestCompleter3;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Backend Call - Insert Row] action in ChoiceChips widget.
  ReceipeTagsRow? newTag;
  // Model for TemporaryReceipeType component.
  late TemporaryReceipeTypeModel temporaryReceipeTypeModel1;
  // Model for TemporaryReceipeType component.
  late TemporaryReceipeTypeModel temporaryReceipeTypeModel2;
  // Model for TemporaryReceipeType component.
  late TemporaryReceipeTypeModel temporaryReceipeTypeModel3;
  // Model for TemporaryReceipeType component.
  late TemporaryReceipeTypeModel temporaryReceipeTypeModel4;
  // Stores action output result for [Backend Call - API (publish receipe)] action in Sauvegarder widget.
  ApiCallResponse? newReceipe;
  // Stores action output result for [Backend Call - Query Rows] action in Sauvegarder widget.
  List<ReceipeRow>? querriedReceipe;
  // Stores action output result for [Backend Call - API (receipeinfo)] action in Sauvegarder widget.
  ApiCallResponse? receipeMacro;
  // Stores action output result for [Backend Call - API (receipe cleaner)] action in Corriger widget.
  ApiCallResponse? apiResultzn8;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
    editingredientModels =
        FlutterFlowDynamicModels(() => InsertIngredientModel());
    insertIngredientModel = createModel(context, () => InsertIngredientModel());
    editStepModels = FlutterFlowDynamicModels(() => InsertStepModel());
    insertStepModel = createModel(context, () => InsertStepModel());
    temporaryReceipeTypeModel1 =
        createModel(context, () => TemporaryReceipeTypeModel());
    temporaryReceipeTypeModel2 =
        createModel(context, () => TemporaryReceipeTypeModel());
    temporaryReceipeTypeModel3 =
        createModel(context, () => TemporaryReceipeTypeModel());
    temporaryReceipeTypeModel4 =
        createModel(context, () => TemporaryReceipeTypeModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
    insertNameFocusNode?.dispose();
    insertNameTextController?.dispose();

    updateNameFocusNode?.dispose();
    updateNameTextController?.dispose();

    insertReceipetimeofcookingHourFocusNode?.dispose();
    insertReceipetimeofcookingHourTextController?.dispose();

    insertReceipetimeofcookingMinFocusNode?.dispose();
    insertReceipetimeofcookingMinTextController?.dispose();

    editReceipetimeofcookingHourFocusNode?.dispose();
    editReceipetimeofcookingHourTextController?.dispose();

    editReceipetimeofcookingminFocusNode?.dispose();
    editReceipetimeofcookingminTextController?.dispose();

    insertDescriptionFocusNode?.dispose();
    insertDescriptionTextController?.dispose();

    updateDescriptionFocusNode?.dispose();
    updateDescriptionTextController?.dispose();

    editingredientModels.dispose();
    insertIngredientModel.dispose();
    editStepModels.dispose();
    insertStepModel.dispose();
    temporaryReceipeTypeModel1.dispose();
    temporaryReceipeTypeModel2.dispose();
    temporaryReceipeTypeModel3.dispose();
    temporaryReceipeTypeModel4.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForRequestCompleted3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
