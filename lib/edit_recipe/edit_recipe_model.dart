import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/mobile_navbar_widget.dart';
import '/components/mobile_sidenav_widget.dart';
import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/receipe/update_ingredient/update_ingredient_widget.dart';
import '/receipe/update_step/update_step_widget.dart';
import 'dart:async';
import '/index.dart';
import 'edit_recipe_widget.dart' show EditRecipeWidget;
import 'package:flutter/material.dart';

class EditRecipeModel extends FlutterFlowModel<EditRecipeWidget> {
  ///  Local state fields for this page.

  List<IngredientsRow> ingredients = [];
  void addToIngredients(IngredientsRow item) => ingredients.add(item);
  void removeFromIngredients(IngredientsRow item) => ingredients.remove(item);
  void removeAtIndexFromIngredients(int index) => ingredients.removeAt(index);
  void insertAtIndexInIngredients(int index, IngredientsRow item) =>
      ingredients.insert(index, item);
  void updateIngredientsAtIndex(int index, Function(IngredientsRow) updateFn) =>
      ingredients[index] = updateFn(ingredients[index]);

  List<StepRow> steps = [];
  void addToSteps(StepRow item) => steps.add(item);
  void removeFromSteps(StepRow item) => steps.remove(item);
  void removeAtIndexFromSteps(int index) => steps.removeAt(index);
  void insertAtIndexInSteps(int index, StepRow item) =>
      steps.insert(index, item);
  void updateStepsAtIndex(int index, Function(StepRow) updateFn) =>
      steps[index] = updateFn(steps[index]);

  String? title;

  String? description;

  List<String> type = [];
  void addToType(String item) => type.add(item);
  void removeFromType(String item) => type.remove(item);
  void removeAtIndexFromType(int index) => type.removeAt(index);
  void insertAtIndexInType(int index, String item) => type.insert(index, item);
  void updateTypeAtIndex(int index, Function(String) updateFn) =>
      type[index] = updateFn(type[index]);

  String? region;

  int? hPrep;

  int? minPrep;

  String? difficulty;

  List<String> tags = [];
  void addToTags(String item) => tags.add(item);
  void removeFromTags(String item) => tags.remove(item);
  void removeAtIndexFromTags(int index) => tags.removeAt(index);
  void insertAtIndexInTags(int index, String item) => tags.insert(index, item);
  void updateTagsAtIndex(int index, Function(String) updateFn) =>
      tags[index] = updateFn(tags[index]);

  FFUploadedFile? mainImage;

  List<FFUploadedFile> imageRecipe = [];
  void addToImageRecipe(FFUploadedFile item) => imageRecipe.add(item);
  void removeFromImageRecipe(FFUploadedFile item) => imageRecipe.remove(item);
  void removeAtIndexFromImageRecipe(int index) => imageRecipe.removeAt(index);
  void insertAtIndexInImageRecipe(int index, FFUploadedFile item) =>
      imageRecipe.insert(index, item);
  void updateImageRecipeAtIndex(int index, Function(FFUploadedFile) updateFn) =>
      imageRecipe[index] = updateFn(imageRecipe[index]);

  IngredientsRow? newIngredient;

  DateTime? sessionStart;

  bool updated = false;

  ReceipeImageRow? mainImageRow;

  List<ReceipeImageRow> imageRow = [];
  void addToImageRow(ReceipeImageRow item) => imageRow.add(item);
  void removeFromImageRow(ReceipeImageRow item) => imageRow.remove(item);
  void removeAtIndexFromImageRow(int index) => imageRow.removeAt(index);
  void insertAtIndexInImageRow(int index, ReceipeImageRow item) =>
      imageRow.insert(index, item);
  void updateImageRowAtIndex(int index, Function(ReceipeImageRow) updateFn) =>
      imageRow[index] = updateFn(imageRow[index]);

  bool unpublished = false;

  List<ReceipeImageRow> imagesRow = [];
  void addToImagesRow(ReceipeImageRow item) => imagesRow.add(item);
  void removeFromImagesRow(ReceipeImageRow item) => imagesRow.remove(item);
  void removeAtIndexFromImagesRow(int index) => imagesRow.removeAt(index);
  void insertAtIndexInImagesRow(int index, ReceipeImageRow item) =>
      imagesRow.insert(index, item);
  void updateImagesRowAtIndex(int index, Function(ReceipeImageRow) updateFn) =>
      imagesRow[index] = updateFn(imagesRow[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in edit-recipe widget.
  List<IngredientsRow>? initialIgredients;
  // Stores action output result for [Backend Call - Query Rows] action in edit-recipe widget.
  List<StepRow>? initialStep;
  // Stores action output result for [Backend Call - Query Rows] action in edit-recipe widget.
  List<ReceipeTagsRow>? initialTag;
  // Stores action output result for [Backend Call - Query Rows] action in edit-recipe widget.
  List<ReceipeImageRow>? initialImages;
  // Model for navbar component.
  late NavbarModel navbarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for Type widget.
  String? typeValue;
  FormFieldController<String>? typeValueController;
  // State field(s) for Region widget.
  String? regionValue;
  FormFieldController<String>? regionValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for difficulty widget.
  String? difficultyValue;
  FormFieldController<String>? difficultyValueController;
  // Stores action output result for [Backend Call - Insert Row] action in Container widget.
  ReceipeTagsRow? insrtTag;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  bool isDataUploading_uploadLocalMainImageedit = false;
  FFUploadedFile uploadedLocalFile_uploadLocalMainImageedit =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadLocalMainImageedit = '';

  // Stores action output result for [Backend Call - Insert Row] action in Container widget.
  ReceipeImageRow? insertMainImage;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Icon widget.
  List<ReceipeImageRow>? deletedLocalMainImage;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  bool isDataUploading_uploadLocalImagesedit = false;
  FFUploadedFile uploadedLocalFile_uploadLocalImagesedit =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadLocalImagesedit = '';

  // Stores action output result for [Backend Call - Insert Row] action in Container widget.
  ReceipeImageRow? insertImage;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<IngredientsRow>? updateIngredientIndexUp;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<IngredientsRow>? updateIngredientIndexDown;
  // Models for updateIngredient.
  late FlutterFlowDynamicModels<UpdateIngredientModel> updateIngredientModels1;
  // Stores action output result for [Backend Call - Update Row(s)] action in Container widget.
  List<IngredientsRow>? updateIngredient;
  // Stores action output result for [Backend Call - Update Row(s)] action in Container widget.
  List<IngredientsRow>? updateIngredientPhone;
  // State field(s) for quantityPC widget.
  FocusNode? quantityPCFocusNode;
  TextEditingController? quantityPCTextController;
  String? Function(BuildContext, String?)? quantityPCTextControllerValidator;
  // State field(s) for unitPC widget.
  String? unitPCValue;
  FormFieldController<String>? unitPCValueController;
  // State field(s) for textPC widget.
  FocusNode? textPCFocusNode1;
  TextEditingController? textPCTextController1;
  String? Function(BuildContext, String?)? textPCTextController1Validator;
  // State field(s) for CheckboxPC widget.
  bool? checkboxPCValue1;
  // State field(s) for quantityPhone widget.
  FocusNode? quantityPhoneFocusNode;
  TextEditingController? quantityPhoneTextController;
  String? Function(BuildContext, String?)? quantityPhoneTextControllerValidator;
  // State field(s) for unitPhone widget.
  String? unitPhoneValue;
  FormFieldController<String>? unitPhoneValueController;
  // State field(s) for CheckboxPhone widget.
  bool? checkboxPhoneValue1;
  // State field(s) for TextPhone widget.
  FocusNode? textPhoneFocusNode1;
  TextEditingController? textPhoneTextController1;
  String? Function(BuildContext, String?)? textPhoneTextController1Validator;
  // Stores action output result for [Backend Call - Insert Row] action in IconPC widget.
  IngredientsRow? newIngerdient;
  // Stores action output result for [Backend Call - Insert Row] action in IconPHONE widget.
  IngredientsRow? newIngerdientPhone;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<IngredientsRow>? updateIndexStepDown;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<IngredientsRow>? updateIndexStepUp;
  // Models for updateStep.
  late FlutterFlowDynamicModels<UpdateStepModel> updateStepModels1;
  // Stores action output result for [Backend Call - Update Row(s)] action in Container widget.
  List<StepRow>? updatedStep;
  // Models for updateStep.
  late FlutterFlowDynamicModels<UpdateStepModel> updateStepModels2;
  // Stores action output result for [Backend Call - Update Row(s)] action in Container widget.
  List<StepRow>? updatedStePhone;
  // State field(s) for numberPC widget.
  FocusNode? numberPCFocusNode;
  TextEditingController? numberPCTextController;
  String? Function(BuildContext, String?)? numberPCTextControllerValidator;
  // State field(s) for textPC widget.
  FocusNode? textPCFocusNode2;
  TextEditingController? textPCTextController2;
  String? Function(BuildContext, String?)? textPCTextController2Validator;
  // State field(s) for CheckboxPC widget.
  bool? checkboxPCValue2;
  // State field(s) for numberPhone widget.
  FocusNode? numberPhoneFocusNode;
  TextEditingController? numberPhoneTextController;
  String? Function(BuildContext, String?)? numberPhoneTextControllerValidator;
  // State field(s) for CheckboxPhone widget.
  bool? checkboxPhoneValue2;
  // State field(s) for textPhone widget.
  FocusNode? textPhoneFocusNode2;
  TextEditingController? textPhoneTextController2;
  String? Function(BuildContext, String?)? textPhoneTextController2Validator;
  // Stores action output result for [Backend Call - Insert Row] action in IconStepPC widget.
  StepRow? newStepPC;
  // Stores action output result for [Backend Call - Insert Row] action in IconStepPhone widget.
  StepRow? newStepPhone;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Button widget.
  List<IngredientsRow>? deeteIngredients;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Button widget.
  List<StepRow>? deleteStep;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Button widget.
  List<ReceipeTagsRow>? deleteTag;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  IngredientsRow? insertedIngredients;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  StepRow? insertedStep;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ReceipeRow>? updateRecipe;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ReceipeRow>? preCleanerRecipe;
  // Stores action output result for [Backend Call - API (receipe cleaner)] action in Button widget.
  ApiCallResponse? recipeCleaner;
  Completer<List<TagsRow>>? requestCompleter;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<IngredientsRow>? cleanedIngredients;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<StepRow>? cleanedStep;
  // Model for mobile_navbar component.
  late MobileNavbarModel mobileNavbarModel;
  // Model for mobile_sidenav component.
  late MobileSidenavModel mobileSidenavModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
    updateIngredientModels1 =
        FlutterFlowDynamicModels(() => UpdateIngredientModel());
    updateStepModels1 = FlutterFlowDynamicModels(() => UpdateStepModel());
    updateStepModels2 = FlutterFlowDynamicModels(() => UpdateStepModel());
    mobileNavbarModel = createModel(context, () => MobileNavbarModel());
    mobileSidenavModel = createModel(context, () => MobileSidenavModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    updateIngredientModels1.dispose();
    quantityPCFocusNode?.dispose();
    quantityPCTextController?.dispose();

    textPCFocusNode1?.dispose();
    textPCTextController1?.dispose();

    quantityPhoneFocusNode?.dispose();
    quantityPhoneTextController?.dispose();

    textPhoneFocusNode1?.dispose();
    textPhoneTextController1?.dispose();

    updateStepModels1.dispose();
    updateStepModels2.dispose();
    numberPCFocusNode?.dispose();
    numberPCTextController?.dispose();

    textPCFocusNode2?.dispose();
    textPCTextController2?.dispose();

    numberPhoneFocusNode?.dispose();
    numberPhoneTextController?.dispose();

    textPhoneFocusNode2?.dispose();
    textPhoneTextController2?.dispose();

    mobileNavbarModel.dispose();
    mobileSidenavModel.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
