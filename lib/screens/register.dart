import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  static const String id = '/register';
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register"),
      ),
      body: const SafeArea(
        child: Center(
          child: Text("Hello there"),
        ),
      ),
    );
  }
}
