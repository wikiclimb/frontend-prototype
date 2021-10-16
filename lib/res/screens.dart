// List all the screens to be displayed on the home page as links.
import 'package:flutter/material.dart';

List<ScreenData> screens = <ScreenData>[
  ScreenData(title: "Map", iconData: Icons.map),
  ScreenData(title: "Area List", iconData: Icons.list),
  ScreenData(title: "Area", iconData: Icons.deck),
];

/// The data to create an item to be displayed on the Home Page list.
class ScreenData {
  ScreenData({required this.title, required this.iconData});
  final String title;
  final IconData iconData;
}
