import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// App Setting

// some constants
double colorOpacity = 0.225;

// some others helpers
// final statusBarHeight = window.padding.top / window.devicePixelRatio;
var deviceOrientation = DeviceOrientation.portraitUp;
// target devicea
List deviceTyeList = ['','sm','md','lg','xl']; // supported devices order
String deviceType = 'sm'; // user device


// colors from bootstrap 4 (web css framework)
const String cMain = "FFC107"; // color code not from bootstrap
const String cBlack = "000000"; // color code not from bootstrap
String cPrimary = "77B935";
String cSecondary = "6C757D";
String cSuccess = "28A745";
const String cDanger = "DC3545";
String cWarning = "FFC107";
const String cInfo = "17A2B8";
String cLight = "F8F9FA";
String cDark = "343A40";
String cWhite = "FFFFFF";
String cMute = "E1E1E1"; // color code not from bootstrap
String cDisable = "B4B4B4"; // color code not from bootstrap
String cLead = "6C6C6A"; // color code not from bootstrap
String cActive = "0000FF"; // color code not from bootstrap
const String cBorder = "E1E1E1"; // color code not from bootstrap


// Color colorMain = Colors.amber;
// Color colorPrimary = Color(int.parse("0xFF007BFF"));
// Color colorSecondary = Color(int.parse("0xFF6C757D"));
// Color colorSuccess = Color(int.parse("0xFF28A745"));
// Color colorDanger = Color(int.parse("0xFFDC3545"));
// Color colorWarning = Color(int.parse("0xFFFFC107"));
// Color colorInfo = Color(int.parse("0xFF17A2B8"));
// Color colorLight = Color(int.parse("0xFFF8F9FA"));
// Color colorDark = Color(int.parse("0xFF343A40"));
// Color colorWhite = Color(int.parse("0xFFFFFFFF"));
// Color colorMute = Color(int.parse("0xFFE1E1E1")); // color code not from bootstrap
// Color colorLead = Color(int.parse("0xFF6C6C6A")); // color code not from bootstrap
// Color colorActive = Color(int.parse("0xFF0000FF")); // color code not from bootstrap
// Color alertTextPrimary = Color(int.parse("0xFF002752"));
// Color alertTextSecondary = Color(int.parse("0xFF383d41"));
// Color alertTextSuccess = Color(int.parse("0xFF155724"));
// Color alertTextDanger = Color(int.parse("0xFF721c24"));
// Color alertTextWarning = Color(int.parse("0xFFFFC107"));
// Color alertTextInfo = Color(int.parse("0xFF0c5460"));
// Color alertTextLight = Color(int.parse("0xFF686868"));
// Color alertTextDark = Color(int.parse("0xFF040505"));
// Color alertBgPrimary = Color(int.parse("0xFFCCE5FF"));
// Color alertBgSecondary = Color(int.parse("0xFFE2E3E5"));
// Color alertBgSuccess = Color(int.parse("0xFFD4EDDA"));
// Color alertBgDanger = Color(int.parse("0xFFF8D7DA"));
// Color alertBgWarning = Color(int.parse("0xFFFFF3CD"));
// Color alertBgInfo = Color(int.parse("0xFFD1ECF1"));
// Color alertBgLight = Color(int.parse("0xFFFEFEFE"));
// Color alertBgDark = Color(int.parse("0xFFD6D8D9"));
// Color alertBorderPrimary = Color(int.parse("0xFFb8daff"));
// Color alertBorderSecondary = Color(int.parse("0xFFd6d8db"));
// Color alertBorderSuccess = Color(int.parse("0xFFc3e6cb"));
// Color alertBorderDanger = Color(int.parse("0xFFf5c6cb"));
// Color alertBorderWarning = Color(int.parse("0xFFffeeba"));
// Color alertBorderInfo = Color(int.parse("0xFFbee5eb"));
// Color alertBorderLight = Color(int.parse("0xFFfdfdfe"));
// Color alertBorderDark = Color(int.parse("0xFFc6c8ca"));

// heading size
// double dH1 = 10;
// double dH2 = 10;
// double dH3 = 10;
// double dH4 = 10;
// double dH5 = 10;
// double dH6 = 10;
// double dDisplay1 = 10;
// double dDisplay2 = 10;
// double dDisplay3 = 10;
// double dDisplay4 = 10;
// // double dDisplay5 = 10;
// // double dDisplay6 = 10;
// double dSmall = 10;
const double radius = 20;
const double radiusLg = 40;
const double radiusSm = 40;
// const double disableOpacity = 0.6;
const double dBorderWidth = 2;


class AzUtlis{

  // colors
  Color colorDefault = const Color(0xFF0275d8);
  Color colorDefaultAgainst = const Color(0xFF0275d8);
  Color colorDefaultOverlay = const Color(0xFF0069D9).withOpacity(colorOpacity);
  Color colorPrimary = const Color(0xFF0275d8);
  Color colorPrimaryAgainst = const Color(0xFF0275d8);
  Color colorPrimaryOverlay = const Color(0xFF0069D9).withOpacity(colorOpacity);
  Color colorSecondary = const Color(0xFF6C757D);
  Color colorSecondaryAgainst = const Color(0xFF3FCDD9);
  Color colorSecondaryOverlay = const Color(0xFF5A6268).withOpacity(colorOpacity);
  Color colorInfo = const Color(0xFF5bc0de);
  Color colorInfoAgainst = const Color(0xFF5bc0de);
  Color colorInfoOverlay = const Color(0xFF138496).withOpacity(colorOpacity);
  Color colorWarning = const Color(0xFFf0ad4e);
  Color colorWarningAgainst = const Color(0xFFf0ad4e);
  Color colorWarningOverlay = const Color(0xFFE0A800).withOpacity(colorOpacity);
  Color colorDanger = const Color(0xFFd9534f);
  Color colorDangerAgainst = const Color(0xFFd9534f);
  Color colorDangerOverlay = const Color(0xFFC82333).withOpacity(colorOpacity);
  Color colorDark = const Color(0xFF292b2c);
  Color colorDarkAgainst = const Color(0xFF292b2c);
  Color colorDarkOverlay = const Color(0xFF23272B).withOpacity(colorOpacity);
  Color colorSuccess = const Color(0xFF5cb85c);
  Color colorSuccessAgainst = const Color(0xFF5cb85c);
  Color colorSuccessOverlay = const Color(0xFF218838).withOpacity(colorOpacity);
  Color colorLight = const Color(0xFFf7f7f7);
  Color colorLightAgainst = const Color(0xFFf7f7f7);
  Color colorLightOverlay = const Color(0xFFE2E6EA).withOpacity(colorOpacity);

  // radius
  double radiusOne = 5;
  double radiusTwo = 10;
  double radiusThree = 15;
  double radiusFour = 20;
  double radiusFive = 25;

  // border
  double borderOne = 1;
  double borderTwo = 2;
  double borderThree = 3;
  double borderFour = 4;
  double borderFive = 5;

  // padding
  double paddingX = 16;
  double paddingY = 4;

}



