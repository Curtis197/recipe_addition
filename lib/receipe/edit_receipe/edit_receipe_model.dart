import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/navbar/navbar_widget.dart';
import '/receipe/insert_ingredient/insert_ingredient_widget.dart';
import '/receipe/insert_step/insert_step_widget.dart';
import '/receipe/receipe_type/receipe_type_widget.dart';
import '/index.dart';
import 'dart:async';
import 'edit_receipe_widget.dart' show EditReceipeWidget;
import 'package:flutter/material.dart';

class EditReceipeModel extends FlutterFlowModel<EditReceipeWidget> {
  ///  Local state fields for this page.

  bool editImage = false;

  String? imageId;

  bool editTimeOfCooking = false;

  bool editName = false;

  bool? editDescription = false;

  bool editIngredient = false;

  bool editStep = false;

  bool editFoodRegion = false;

  bool editDifficulty = false;

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

  String? ingredientID;

  String? stepID;

  List<dynamic> updatedIngredients = [];
  void addToUpdatedIngredients(dynamic item) => updatedIngredients.add(item);
  void removeFromUpdatedIngredients(dynamic item) =>
      updatedIngredients.remove(item);
  void removeAtIndexFromUpdatedIngredients(int index) =>
      updatedIngredients.removeAt(index);
  void insertAtIndexInUpdatedIngredients(int index, dynamic item) =>
      updatedIngredients.insert(index, item);
  void updateUpdatedIngredientsAtIndex(int index, Function(dynamic) updateFn) =>
      updatedIngredients[index] = updateFn(updatedIngredients[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in EditReceipe widget.
  List<IngredientsRow>? querriedIngredients;
  // Stores action output result for [Backend Call - Query Rows] action in EditReceipe widget.
  List<StepRow>? querriedStep;
  // Model for navbar component.
  late NavbarModel navbarModel;
  // State field(s) for insertName widget.
  FocusNode? insertNameFocusNode;
  TextEditingController? insertNameTextController;
  String? Function(BuildContext, String?)? insertNameTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<TemporaryReceipeRow>? insertNAme;
  Completer<List<ReceipeRow>>? requestCompleter1;
  // State field(s) for updateName widget.
  FocusNode? updateNameFocusNode;
  TextEditingController? updateNameTextController;
  String? Function(BuildContext, String?)? updateNameTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<ReceipeRow>? updateName;
  bool isDataUploading_updateTemporaryImage = false;
  FFUploadedFile uploadedLocalFile_updateTemporaryImage =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  bool isDataUploading_uploadedReceipeimage2 = false;
  FFUploadedFile uploadedLocalFile_uploadedReceipeimage2 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadedReceipeimage2 = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<ReceipeImageRow>? updateTemporaryImage;
  Completer<List<ReceipeImageRow>>? requestCompleter3;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<ReceipeImageRow>? updateTemporaryImageField;
  bool isDataUploading_editTemporaryImage = false;
  FFUploadedFile uploadedLocalFile_editTemporaryImage =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  bool isDataUploading_uploadedEditredReceipeimage = false;
  FFUploadedFile uploadedLocalFile_uploadedEditredReceipeimage =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadedEditredReceipeimage = '';

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
  List<ReceipeRow>? insertTemporaryTimeofCooking;
  // State field(s) for editReceipetimeofcookingHour widget.
  FocusNode? editReceipetimeofcookingHourFocusNode;
  TextEditingController? editReceipetimeofcookingHourTextController;
  String? Function(BuildContext, String?)?
      editReceipetimeofcookingHourTextControllerValidator;
  // State field(s) for editReceipetimeofcookingMinute widget.
  FocusNode? editReceipetimeofcookingMinuteFocusNode;
  TextEditingController? editReceipetimeofcookingMinuteTextController;
  String? Function(BuildContext, String?)?
      editReceipetimeofcookingMinuteTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<ReceipeRow>? insertTimeOfCooking;
  // State field(s) for insertDescription widget.
  FocusNode? insertDescriptionFocusNode;
  TextEditingController? insertDescriptionTextController;
  String? Function(BuildContext, String?)?
      insertDescriptionTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<ReceipeRow>? insertDecription;
  // State field(s) for updateDescription widget.
  FocusNode? updateDescriptionFocusNode;
  TextEditingController? updateDescriptionTextController;
  String? Function(BuildContext, String?)?
      updateDescriptionTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<ReceipeRow>? updatedDecription;
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
  String? foodRegionEditValue1;
  FormFieldController<String>? foodRegionEditValueController1;
  // State field(s) for FoodRegionEdit widget.
  String? foodRegionEditValue2;
  FormFieldController<String>? foodRegionEditValueController2;
  // State field(s) for DifficulyEdit widget.
  String? difficulyEditValue;
  FormFieldController<String>? difficulyEditValueController;
  // State field(s) for DifficulyCreate widget.
  String? difficulyCreateValue;
  FormFieldController<String>? difficulyCreateValueController;
  Completer<List<ReceipeTagsRow>>? requestCompleter2;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for ReceipeType component.
  late ReceipeTypeModel receipeTypeModel1;
  // Model for ReceipeType component.
  late ReceipeTypeModel receipeTypeModel2;
  // Model for ReceipeType component.
  late ReceipeTypeModel receipeTypeModel3;
  // Model for ReceipeType component.
  late ReceipeTypeModel receipeTypeModel4;
  // Stores action output result for [Backend Call - API (receipe cleaner)] action in IconButton widget.
  ApiCallResponse? apiResultcqw;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
    editingredientModels =
        FlutterFlowDynamicModels(() => InsertIngredientModel());
    insertIngredientModel = createModel(context, () => InsertIngredientModel());
    editStepModels = FlutterFlowDynamicModels(() => InsertStepModel());
    insertStepModel = createModel(context, () => InsertStepModel());
    receipeTypeModel1 = createModel(context, () => ReceipeTypeModel());
    receipeTypeModel2 = createModel(context, () => ReceipeTypeModel());
    receipeTypeModel3 = createModel(context, () => ReceipeTypeModel());
    receipeTypeModel4 = createModel(context, () => ReceipeTypeModel());
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

    editReceipetimeofcookingMinuteFocusNode?.dispose();
    editReceipetimeofcookingMinuteTextController?.dispose();

    insertDescriptionFocusNode?.dispose();
    insertDescriptionTextController?.dispose();

    updateDescriptionFocusNode?.dispose();
    updateDescriptionTextController?.dispose();

    editingredientModels.dispose();
    insertIngredientModel.dispose();
    editStepModels.dispose();
    insertStepModel.dispose();
    receipeTypeModel1.dispose();
    receipeTypeModel2.dispose();
    receipeTypeModel3.dispose();
    receipeTypeModel4.dispose();
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
}
