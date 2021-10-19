import 'package:flutter/material.dart';

/// The data to create an item to be displayed on the Home Page list.
class ScreenData {
  ScreenData({required this.id, required this.title, required this.iconData});
  final String id;
  final String title;
  final IconData iconData;
}
