import '/flutter_flow/flutter_flow_util.dart';
import '/pages/navbar/navbar_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'temporary_receipe_detail_widget.dart' show TemporaryReceipeDetailWidget;
import 'package:flutter/material.dart';

class TemporaryReceipeDetailModel
    extends FlutterFlowModel<TemporaryReceipeDetailWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;
  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
  }
}
