import 'package:flutter/material.dart';
import 'package:naman_portfolio_app/core/constants.dart';

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
  DrawerMenuModel(ClassNameConstants.home, true, ClassRedirectionConstants.home,
      Icons.home),
  DrawerMenuModel(ClassNameConstants.about, false,
      ClassRedirectionConstants.about, Icons.info_outline),
  DrawerMenuModel(ClassNameConstants.skills, false,
      ClassRedirectionConstants.skills, Icons.assessment_outlined),
  DrawerMenuModel(ClassNameConstants.contactMe, false,
      ClassRedirectionConstants.contactMe, Icons.phone),
];
