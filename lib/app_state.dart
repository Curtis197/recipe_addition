import 'package:flutter/material.dart';

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
}
