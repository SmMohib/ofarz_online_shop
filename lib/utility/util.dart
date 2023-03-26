import 'package:flutter/material.dart';

class Utils {
  BuildContext context;
  Utils(this.context);
  //bool get getTheme => Provider.of<DarkThemeProvider>(context).getDarkTheme;
  //Color get color => getTheme ? Colors.white : Colors.black;
  Size get sizeScreen => MediaQuery.of(context).size;
}