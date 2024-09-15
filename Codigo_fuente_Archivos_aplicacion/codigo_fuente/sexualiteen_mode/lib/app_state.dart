import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _nombreAS = prefs.getBool('ff_nombreAS') ?? _nombreAS;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _usernameAppstate = '';
  String get usernameAppstate => _usernameAppstate;
  set usernameAppstate(String value) {
    _usernameAppstate = value;
  }

  String _userEmailAppstate = '';
  String get userEmailAppstate => _userEmailAppstate;
  set userEmailAppstate(String value) {
    _userEmailAppstate = value;
  }

  String _generoAppstate = '';
  String get generoAppstate => _generoAppstate;
  set generoAppstate(String value) {
    _generoAppstate = value;
  }

  int _edadAppstate = 0;
  int get edadAppstate => _edadAppstate;
  set edadAppstate(int value) {
    _edadAppstate = value;
  }

  String _uidAppState = '';
  String get uidAppState => _uidAppState;
  set uidAppState(String value) {
    _uidAppState = value;
  }

  String _tittle = '';
  String get tittle => _tittle;
  set tittle(String value) {
    _tittle = value;
  }

  bool _nombreAS = false;
  bool get nombreAS => _nombreAS;
  set nombreAS(bool value) {
    _nombreAS = value;
    prefs.setBool('ff_nombreAS', value);
  }

  int _estadoActual = 0;
  int get estadoActual => _estadoActual;
  set estadoActual(int value) {
    _estadoActual = value;
  }

  bool _mostrarTitulo = false;
  bool get mostrarTitulo => _mostrarTitulo;
  set mostrarTitulo(bool value) {
    _mostrarTitulo = value;
  }

  bool _mostrarDescrip = false;
  bool get mostrarDescrip => _mostrarDescrip;
  set mostrarDescrip(bool value) {
    _mostrarDescrip = value;
  }

  bool _mostrarImg = false;
  bool get mostrarImg => _mostrarImg;
  set mostrarImg(bool value) {
    _mostrarImg = value;
  }

  bool _mostrarEjmImg = false;
  bool get mostrarEjmImg => _mostrarEjmImg;
  set mostrarEjmImg(bool value) {
    _mostrarEjmImg = value;
  }

  bool _buscardor = false;
  bool get buscardor => _buscardor;
  set buscardor(bool value) {
    _buscardor = value;
  }

  String _selectedTemaPID = '';
  String get selectedTemaPID => _selectedTemaPID;
  set selectedTemaPID(String value) {
    _selectedTemaPID = value;
  }

  String _selectedtemaPImagen =
      'https://firebasestorage.googleapis.com/v0/b/appsexteen.appspot.com/o/imageTemas%2FdefaultImg.png?alt=media&token=e2de828f-743a-4e9a-a3fa-b79dfb70df5b';
  String get selectedtemaPImagen => _selectedtemaPImagen;
  set selectedtemaPImagen(String value) {
    _selectedtemaPImagen = value;
  }

  bool _visibleD = false;
  bool get visibleD => _visibleD;
  set visibleD(bool value) {
    _visibleD = value;
  }

  bool _expand = false;
  bool get expand => _expand;
  set expand(bool value) {
    _expand = value;
  }

  int _Poi = -160;
  int get Poi => _Poi;
  set Poi(int value) {
    _Poi = value;
  }

  bool _showbodyM1 = false;
  bool get showbodyM1 => _showbodyM1;
  set showbodyM1(bool value) {
    _showbodyM1 = value;
  }

  bool _showbodyM2 = false;
  bool get showbodyM2 => _showbodyM2;
  set showbodyM2(bool value) {
    _showbodyM2 = value;
  }

  bool _showbodyM3 = false;
  bool get showbodyM3 => _showbodyM3;
  set showbodyM3(bool value) {
    _showbodyM3 = value;
  }

  bool _showbodyM4 = false;
  bool get showbodyM4 => _showbodyM4;
  set showbodyM4(bool value) {
    _showbodyM4 = value;
  }

  bool _showbodyM5 = false;
  bool get showbodyM5 => _showbodyM5;
  set showbodyM5(bool value) {
    _showbodyM5 = value;
  }

  bool _showbodyF1 = false;
  bool get showbodyF1 => _showbodyF1;
  set showbodyF1(bool value) {
    _showbodyF1 = value;
  }

  bool _showbodyF2 = false;
  bool get showbodyF2 => _showbodyF2;
  set showbodyF2(bool value) {
    _showbodyF2 = value;
  }

  bool _showbodyF3 = false;
  bool get showbodyF3 => _showbodyF3;
  set showbodyF3(bool value) {
    _showbodyF3 = value;
  }

  bool _showbodyF4 = false;
  bool get showbodyF4 => _showbodyF4;
  set showbodyF4(bool value) {
    _showbodyF4 = value;
  }

  bool _showbodyF5 = false;
  bool get showbodyF5 => _showbodyF5;
  set showbodyF5(bool value) {
    _showbodyF5 = value;
  }

  String _imgUpdateO = '';
  String get imgUpdateO => _imgUpdateO;
  set imgUpdateO(String value) {
    _imgUpdateO = value;
  }

  bool _botonVisi1 = false;
  bool get botonVisi1 => _botonVisi1;
  set botonVisi1(bool value) {
    _botonVisi1 = value;
  }

  bool _botonVisi2 = false;
  bool get botonVisi2 => _botonVisi2;
  set botonVisi2(bool value) {
    _botonVisi2 = value;
  }

  bool _botonVisi3 = false;
  bool get botonVisi3 => _botonVisi3;
  set botonVisi3(bool value) {
    _botonVisi3 = value;
  }

  bool _botonVisi4 = false;
  bool get botonVisi4 => _botonVisi4;
  set botonVisi4(bool value) {
    _botonVisi4 = value;
  }

  String _imgF1 =
      'https://firebasestorage.googleapis.com/v0/b/appsexteen.appspot.com/o/avatares%2Fimage%2023.png?alt=media&token=50b43ac7-92d7-4451-a64f-d91cf6eee7d9';
  String get imgF1 => _imgF1;
  set imgF1(String value) {
    _imgF1 = value;
  }

  String _imgF2 =
      'https://firebasestorage.googleapis.com/v0/b/appsexteen.appspot.com/o/avatares%2Fimage%2024.png?alt=media&token=2036d821-643e-449f-86d7-26f1f8377528';
  String get imgF2 => _imgF2;
  set imgF2(String value) {
    _imgF2 = value;
  }

  String _imgM1 =
      'https://firebasestorage.googleapis.com/v0/b/appsexteen.appspot.com/o/avatares%2Fimage%2025.png?alt=media&token=f8a185b8-f09f-4e3f-b9ee-2c54aafdcdd1';
  String get imgM1 => _imgM1;
  set imgM1(String value) {
    _imgM1 = value;
  }

  String _imgM2 =
      'https://firebasestorage.googleapis.com/v0/b/appsexteen.appspot.com/o/avatares%2Fimage%2026.png?alt=media&token=3870110c-c185-40a9-a26c-2047482f3ed2';
  String get imgM2 => _imgM2;
  set imgM2(String value) {
    _imgM2 = value;
  }

  int _updateEdad = 0;
  int get updateEdad => _updateEdad;
  set updateEdad(int value) {
    _updateEdad = value;
  }

  bool _btnENDcarta = false;
  bool get btnENDcarta => _btnENDcarta;
  set btnENDcarta(bool value) {
    _btnENDcarta = value;
  }

  bool _colorEND = false;
  bool get colorEND => _colorEND;
  set colorEND(bool value) {
    _colorEND = value;
  }

  bool _visibleAnimaITS = false;
  bool get visibleAnimaITS => _visibleAnimaITS;
  set visibleAnimaITS(bool value) {
    _visibleAnimaITS = value;
  }

  int _updateCaruITS = 0;
  int get updateCaruITS => _updateCaruITS;
  set updateCaruITS(int value) {
    _updateCaruITS = value;
  }

  int _estadoActual2 = 0;
  int get estadoActual2 => _estadoActual2;
  set estadoActual2(int value) {
    _estadoActual2 = value;
  }

  bool _showbodyM6 = false;
  bool get showbodyM6 => _showbodyM6;
  set showbodyM6(bool value) {
    _showbodyM6 = value;
  }

  bool _showbodyM7 = false;
  bool get showbodyM7 => _showbodyM7;
  set showbodyM7(bool value) {
    _showbodyM7 = value;
  }

  bool _showbodyF6 = false;
  bool get showbodyF6 => _showbodyF6;
  set showbodyF6(bool value) {
    _showbodyF6 = value;
  }

  bool _showbodyF = false;
  bool get showbodyF => _showbodyF;
  set showbodyF(bool value) {
    _showbodyF = value;
  }
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
