import 'package:flutter/material.dart';
import 'flutter_flow/request_manager.dart';
import 'backend/supabase/supabase.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _mealType = [];
  List<String> get mealType => _mealType;
  set mealType(List<String> value) {
    _mealType = value;
  }

  void addToMealType(String value) {
    mealType.add(value);
  }

  void removeFromMealType(String value) {
    mealType.remove(value);
  }

  void removeAtIndexFromMealType(int index) {
    mealType.removeAt(index);
  }

  void updateMealTypeAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    mealType[index] = updateFn(_mealType[index]);
  }

  void insertAtIndexInMealType(int index, String value) {
    mealType.insert(index, value);
  }

  int _roundtTypeIndex = 0;
  int get roundtTypeIndex => _roundtTypeIndex;
  set roundtTypeIndex(int value) {
    _roundtTypeIndex = value;
  }

  bool _sidebarOpen = false;
  bool get sidebarOpen => _sidebarOpen;
  set sidebarOpen(bool value) {
    _sidebarOpen = value;
  }

  bool _landingpageSidebarOpen = false;
  bool get landingpageSidebarOpen => _landingpageSidebarOpen;
  set landingpageSidebarOpen(bool value) {
    _landingpageSidebarOpen = value;
  }

  bool _navbarOpen = false;
  bool get navbarOpen => _navbarOpen;
  set navbarOpen(bool value) {
    _navbarOpen = value;
  }

  String _creatorAuthId = '';
  String get creatorAuthId => _creatorAuthId;
  set creatorAuthId(String value) {
    _creatorAuthId = value;
  }

  final _creatorIdentityManager = FutureRequestManager<List<CreatorRow>>();
  Future<List<CreatorRow>> creatorIdentity({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<CreatorRow>> Function() requestFn,
  }) =>
      _creatorIdentityManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearCreatorIdentityCache() => _creatorIdentityManager.clear();
  void clearCreatorIdentityCacheKey(String? uniqueKey) =>
      _creatorIdentityManager.clearRequest(uniqueKey);

  final _dashboardManager =
      FutureRequestManager<List<CreatorDashboardStatsRow>>();
  Future<List<CreatorDashboardStatsRow>> dashboard({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<List<CreatorDashboardStatsRow>> Function() requestFn,
  }) =>
      _dashboardManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearDashboardCache() => _dashboardManager.clear();
  void clearDashboardCacheKey(String? uniqueKey) =>
      _dashboardManager.clearRequest(uniqueKey);
}
