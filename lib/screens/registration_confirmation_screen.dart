import 'package:flutter/material.dart';

class RegistrationConfirmationScreen extends StatelessWidget {
  const RegistrationConfirmationScreen({Key? key}) : super(key: key);

  static const String id = '/registration-confirmation';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Success')),
        body: const Center(child: Text('You registered')));
  }
}
