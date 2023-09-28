import 'package:flutter/material.dart';

class DrawerMenuModel {
  final String _title;
  bool _isSelected;
  final String _redirectionLink;
  final IconData _icons;

  DrawerMenuModel(
      this._title, this._isSelected, this._redirectionLink, this._icons);

  bool get isSelected => _isSelected;

  String get title => _title;

  String get redirectionLink => _redirectionLink;

  IconData get icons => _icons;

  set isSelected(bool value) {
    _isSelected = value;
  }
}

List<DrawerMenuModel> listOfDrawerMenu = [
  DrawerMenuModel("Home", true, "", Icons.home),
  DrawerMenuModel("About", false, "", Icons.info_outline),
  DrawerMenuModel("Skills", false, "", Icons.assessment_outlined),
  DrawerMenuModel(
      "Contact Me",
      false,
      "https://drive.google.com/file/d/1g36-ldsqOepiULx3nc-I42Jzf2ToIROo/view?usp=sharing",
      Icons.phone),
];
