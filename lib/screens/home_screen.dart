import 'package:flutter/material.dart';
import '../res/screens.dart';
import '../widgets/screen_list.dart';

/// HomeScreen is the landing page of the application.
class HomeScreen extends StatelessWidget {
  static const String id = '/home';
  const HomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ScreenList(screens: screens),
    );
  }
}
