// List all the screens to be displayed on the home page as links.
import 'package:flutter/material.dart';
import 'package:prototype/screens/home.dart';
import 'package:prototype/screens/register.dart';

List<ScreenData> screens = <ScreenData>[
  ScreenData(
      id: RegisterScreen.id,
      title: "Register",
      iconData: Icons.verified_user_outlined),
  ScreenData(id: HomeScreen.id, title: "Map", iconData: Icons.map),
  ScreenData(id: HomeScreen.id, title: "Area List", iconData: Icons.list),
  ScreenData(id: HomeScreen.id, title: "Area", iconData: Icons.deck),
];

/// The data to create an item to be displayed on the Home Page list.
class ScreenData {
  ScreenData({required this.id, required this.title, required this.iconData});
  final String id;
  final String title;
  final IconData iconData;
}
