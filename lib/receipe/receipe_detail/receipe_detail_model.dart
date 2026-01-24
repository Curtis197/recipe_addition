import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/navbar/navbar_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'receipe_detail_widget.dart' show ReceipeDetailWidget;
import 'package:flutter/material.dart';

class ReceipeDetailModel extends FlutterFlowModel<ReceipeDetailWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  // State field(s) for RatingBar widget.
  double? ratingBarValue1;
  Stream<List<IngredientsRow>>? containerSupabaseStream1;
  Stream<List<IngredientsRow>>? columnSupabaseStream;
  Stream<List<StepRow>>? containerSupabaseStream2;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
    tabBarController?.dispose();
  }
}
