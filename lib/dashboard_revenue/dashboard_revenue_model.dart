import '/components/mobile_navbar_widget.dart';
import '/components/mobile_sidenav_widget.dart';
import '/components/navbar_widget.dart';
import '/components/receipe_performance_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dashboard_revenue_widget.dart' show DashboardRevenueWidget;
import 'package:flutter/material.dart';

class DashboardRevenueModel extends FlutterFlowModel<DashboardRevenueWidget> {
  ///  Local state fields for this page.

  String statsPeriod = 'week';

  int? week = 0;

  int? year = 0;

  bool? hasNextWeek;

  bool? hasPreviousWeek;

  ///  State fields for stateful widgets in this page.

  // Model for navbar component.
  late NavbarModel navbarModel;
  // Models for receipe_performance dynamic component.
  late FlutterFlowDynamicModels<ReceipePerformanceModel>
      receipePerformanceModels;
  // Model for mobile_navbar component.
  late MobileNavbarModel mobileNavbarModel;
  // Model for mobile_sidenav component.
  late MobileSidenavModel mobileSidenavModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
    receipePerformanceModels =
        FlutterFlowDynamicModels(() => ReceipePerformanceModel());
    mobileNavbarModel = createModel(context, () => MobileNavbarModel());
    mobileSidenavModel = createModel(context, () => MobileSidenavModel());
  }

  @override
  void dispose() {
    navbarModel.dispose();
    receipePerformanceModels.dispose();
    mobileNavbarModel.dispose();
    mobileSidenavModel.dispose();
  }
}
