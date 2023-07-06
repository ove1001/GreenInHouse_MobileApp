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

  int _rsidPrueba = 1;
  int get rsidPrueba => _rsidPrueba;
  set rsidPrueba(int _value) {
    _rsidPrueba = _value;
  }

  int _diasgraficar = 1;
  int get diasgraficar => _diasgraficar;
  set diasgraficar(int _value) {
    _diasgraficar = _value;
  }

  String _plantagraficar = 'Mi tomatera';
  String get plantagraficar => _plantagraficar;
  set plantagraficar(String _value) {
    _plantagraficar = _value;
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

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
