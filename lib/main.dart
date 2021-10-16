import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WikiClimb Prototypes',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomeScreen(title: 'WikiClimb UI Prototypes'),
    );
  }
}
