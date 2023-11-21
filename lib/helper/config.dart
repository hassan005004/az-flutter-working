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
  Color colorSuccess = const Color(0xFF5cb85c);
  Color colorSuccessAgainst = const Color(0xFF5cb85c);
  Color colorSuccessOverlay = const Color(0xFF218838).withOpacity(colorOpacity);
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



