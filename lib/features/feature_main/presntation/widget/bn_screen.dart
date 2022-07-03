import 'package:flutter/material.dart';

class BottomNavigationScreen{

  Widget _widget;
  // Widget _widget2;

  BottomNavigationScreen(this._widget/*,this._widget2*/);


  // Widget get widget2 => _widget2;
  //
  // set widget2(Widget value) {
  //   _widget2 = value;
  // }

  Widget get widget => _widget;

  set widget(Widget value) {
    _widget = value;
  }
}