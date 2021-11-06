// List all the screens to be displayed on the home page as links.
import 'package:flutter/material.dart';
import 'package:wikiclimb_ui_prototypes/models/screen_data.dart';
import 'package:wikiclimb_ui_prototypes/screens/area_list_screen.dart';
import 'package:wikiclimb_ui_prototypes/screens/home_screen.dart';
import 'package:wikiclimb_ui_prototypes/screens/register_screen.dart';
import 'package:wikiclimb_ui_prototypes/screens/registration_confirmation_screen.dart';
import 'package:wikiclimb_ui_prototypes/screens/route_screen.dart';

List<ScreenData> screens = <ScreenData>[
  ScreenData(
    id: RegisterScreen.id,
    title: 'Register',
    iconData: Icons.verified_user_outlined,
  ),
  ScreenData(
    id: RegistrationConfirmationScreen.id,
    title: 'Registration Confirmation',
    iconData: Icons.how_to_reg,
  ),
  ScreenData(
    id: AreaListScreen.id,
    title: 'Area List',
    iconData: Icons.list,
  ),
  ScreenData(
    id: HomeScreen.id,
    title: 'Area',
    iconData: Icons.deck,
  ),
  ScreenData(
    id: RouteScreen.id,
    title: 'Route',
    iconData: Icons.router,
  ),
];
