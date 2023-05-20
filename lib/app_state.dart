import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<int> _percentages = [34, 42, 24];
  List<int> get percentages => _percentages;
  set percentages(List<int> _value) {
    _percentages = _value;
  }

  void addToPercentages(int _value) {
    _percentages.add(_value);
  }

  void removeFromPercentages(int _value) {
    _percentages.remove(_value);
  }

  void removeAtIndexFromPercentages(int _index) {
    _percentages.removeAt(_index);
  }

  void updatePercentagesAtIndex(
    int _index,
    Function(int) updateFn,
  ) {
    updateFn(_percentages[_index]);
  }

  int _welcomeCircleDiameter = 350;
  int get welcomeCircleDiameter => _welcomeCircleDiameter;
  set welcomeCircleDiameter(int _value) {
    _welcomeCircleDiameter = _value;
  }

  List<String> _chipChoices = ['Type 1', 'Type 2', 'Gestational'];
  List<String> get chipChoices => _chipChoices;
  set chipChoices(List<String> _value) {
    _chipChoices = _value;
  }

  void addToChipChoices(String _value) {
    _chipChoices.add(_value);
  }

  void removeFromChipChoices(String _value) {
    _chipChoices.remove(_value);
  }

  void removeAtIndexFromChipChoices(int _index) {
    _chipChoices.removeAt(_index);
  }

  void updateChipChoicesAtIndex(
    int _index,
    Function(String) updateFn,
  ) {
    updateFn(_chipChoices[_index]);
  }

  String _selectedType = '';
  String get selectedType => _selectedType;
  set selectedType(String _value) {
    _selectedType = _value;
  }

  String _selectedTile = '';
  String get selectedTile => _selectedTile;
  set selectedTile(String _value) {
    _selectedTile = _value;
  }

  bool _devicePaired = false;
  bool get devicePaired => _devicePaired;
  set devicePaired(bool _value) {
    _devicePaired = _value;
  }

  int _daysScale = 7;
  int get daysScale => _daysScale;
  set daysScale(int _value) {
    _daysScale = _value;
  }

  List<int> _chartX = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> get chartX => _chartX;
  set chartX(List<int> _value) {
    _chartX = _value;
  }

  void addToChartX(int _value) {
    _chartX.add(_value);
  }

  void removeFromChartX(int _value) {
    _chartX.remove(_value);
  }

  void removeAtIndexFromChartX(int _index) {
    _chartX.removeAt(_index);
  }

  void updateChartXAtIndex(
    int _index,
    Function(int) updateFn,
  ) {
    updateFn(_chartX[_index]);
  }

  List<int> _chartY = [0, 9, 22, 66, 84, 72, 60, 74, 91, 86, 67];
  List<int> get chartY => _chartY;
  set chartY(List<int> _value) {
    _chartY = _value;
  }

  void addToChartY(int _value) {
    _chartY.add(_value);
  }

  void removeFromChartY(int _value) {
    _chartY.remove(_value);
  }

  void removeAtIndexFromChartY(int _index) {
    _chartY.removeAt(_index);
  }

  void updateChartYAtIndex(
    int _index,
    Function(int) updateFn,
  ) {
    updateFn(_chartY[_index]);
  }

  int _avgLevel = 157;
  int get avgLevel => _avgLevel;
  set avgLevel(int _value) {
    _avgLevel = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
