class DrawerMenuModel {
  final String _title;
  final bool _isSelected;
  final String _redirectionLink;

  DrawerMenuModel(this._title, this._isSelected,this._redirectionLink);

  bool get isSelected => _isSelected;

  String get title => _title;

  String get redirectionLink => _redirectionLink;
}

List<DrawerMenuModel> listOfDrawerMenu = [
  DrawerMenuModel("Home", true,""),
  DrawerMenuModel("About", false,""),
  DrawerMenuModel("Skills", false,""),
  DrawerMenuModel("Contact Me", false,"https://drive.google.com/file/d/1g36-ldsqOepiULx3nc-I42Jzf2ToIROo/view?usp=sharing"),
];
