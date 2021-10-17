import 'package:flutter/material.dart';
import 'package:prototype/screens/register.dart';
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
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) =>
            const HomeScreen(title: 'WikiClimb UI Prototypes'),
        RegisterScreen.id: (context) => const RegisterScreen(),
      },
    );
  }
}
