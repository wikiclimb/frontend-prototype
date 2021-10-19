// List all the screens to be displayed on the home page as links.
import 'package:flutter/material.dart';
import 'package:wikiclimb_ui_prototypes/models/screen_data.dart';
import 'package:wikiclimb_ui_prototypes/screens/home_screen.dart';
import 'package:wikiclimb_ui_prototypes/screens/register_screen.dart';

List<ScreenData> screens = <ScreenData>[
  ScreenData(
    id: RegisterScreen.id,
    title: "Register",
    iconData: Icons.verified_user_outlined,
  ),
  ScreenData(
    id: HomeScreen.id,
    title: "Map",
    iconData: Icons.map,
  ),
  ScreenData(
    id: HomeScreen.id,
    title: "Area List",
    iconData: Icons.list,
  ),
  ScreenData(
    id: HomeScreen.id,
    title: "Area",
    iconData: Icons.deck,
  ),
];
