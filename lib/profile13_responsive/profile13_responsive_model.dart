import '/backend/supabase/supabase.dart';
import '/components/edit_name_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/navbar/navbar_widget.dart';
import '/index.dart';
import 'dart:async';
import 'profile13_responsive_widget.dart' show Profile13ResponsiveWidget;
import 'package:flutter/material.dart';

class Profile13ResponsiveModel
    extends FlutterFlowModel<Profile13ResponsiveWidget> {
  ///  Local state fields for this page.

  bool password = false;

  bool editProfil = true;

  bool submit = false;

  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode1;
  TextEditingController? passwordTextController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordTextController1Validator;
  // State field(s) for PasswordConfirmation widget.
  FocusNode? passwordConfirmationFocusNode1;
  TextEditingController? passwordConfirmationTextController1;
  late bool passwordConfirmationVisibility1;
  String? Function(BuildContext, String?)?
      passwordConfirmationTextController1Validator;
  bool isDataUploading_insertProfilImageWeb = false;
  FFUploadedFile uploadedLocalFile_insertProfilImageWeb =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  bool isDataUploading_uploadDataU0qWeb = false;
  FFUploadedFile uploadedLocalFile_uploadDataU0qWeb =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataU0qWeb = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<CreatorRow>? insertImage;
  Completer<List<CreatorRow>>? requestCompleter1;
  bool isDataUploading_uploadupdateProfilImage = false;
  FFUploadedFile uploadedLocalFile_uploadupdateProfilImage =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadupdateProfilImage = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<CreatorRow>? updateImage;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<CreatorRow>? deleteImage;
  bool isDataUploading_updateProfilImageWeb = false;
  FFUploadedFile uploadedLocalFile_updateProfilImageWeb =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Model for editName component.
  late EditNameModel editNameModel1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for Password widget.
  FocusNode? passwordFocusNode2;
  TextEditingController? passwordTextController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? passwordTextController2Validator;
  // State field(s) for PasswordConfirmation widget.
  FocusNode? passwordConfirmationFocusNode2;
  TextEditingController? passwordConfirmationTextController2;
  late bool passwordConfirmationVisibility2;
  String? Function(BuildContext, String?)?
      passwordConfirmationTextController2Validator;
  bool isDataUploading_insertProfilImage = false;
  FFUploadedFile uploadedLocalFile_insertProfilImage =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  bool isDataUploading_uploadDataU0qWeb1 = false;
  FFUploadedFile uploadedLocalFile_uploadDataU0qWeb1 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadDataU0qWeb1 = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<CreatorRow>? insertImage2;
  Completer<List<CreatorRow>>? requestCompleter2;
  bool isDataUploading_uploadupdateProfilImageWeb2 = false;
  FFUploadedFile uploadedLocalFile_uploadupdateProfilImageWeb2 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');
  String uploadedFileUrl_uploadupdateProfilImageWeb2 = '';

  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<CreatorRow>? updateImage1;
  // Stores action output result for [Backend Call - Update Row(s)] action in Icon widget.
  List<CreatorRow>? deleteImage1;
  bool isDataUploading_updateProfilImage = false;
  FFUploadedFile uploadedLocalFile_updateProfilImage =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Model for editName component.
  late EditNameModel editNameModel2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController8;
  String? Function(BuildContext, String?)? textController8Validator;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
    passwordVisibility1 = false;
    passwordConfirmationVisibility1 = false;
    editNameModel1 = createModel(context, () => EditNameModel());
    passwordVisibility2 = false;
    passwordConfirmationVisibility2 = false;
    editNameModel2 = createModel(context, () => EditNameModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
    passwordFocusNode1?.dispose();
    passwordTextController1?.dispose();

    passwordConfirmationFocusNode1?.dispose();
    passwordConfirmationTextController1?.dispose();

    editNameModel1.dispose();
    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    textFieldFocusNode3?.dispose();
    textController4?.dispose();

    passwordFocusNode2?.dispose();
    passwordTextController2?.dispose();

    passwordConfirmationFocusNode2?.dispose();
    passwordConfirmationTextController2?.dispose();

    editNameModel2.dispose();
    textFieldFocusNode4?.dispose();
    textController6?.dispose();

    textFieldFocusNode5?.dispose();
    textController7?.dispose();

    textFieldFocusNode6?.dispose();
    textController8?.dispose();
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
}
