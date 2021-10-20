import 'package:flutter/material.dart';
import 'package:wikiclimb_ui_prototypes/screens/registration_confirmation_screen.dart';
import '../widgets/forms/decorated_icon_input.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  static const String id = '/register';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign up"),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
          ),
          child: Center(
            child: ListView(
              children: <Widget>[
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 200,
                  child: Image(
                    image: AssetImage('graphics/wikiclimb-logo.png'),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Center(
                  child: Text(
                    'Join the community',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.white70,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                const DecoratedIconInput(
                  hintText: 'Username',
                  prefixIcon: Icons.person,
                ),
                const SizedBox(
                  height: 24,
                ),
                const DecoratedIconInput(
                  hintText: 'Password',
                  prefixIcon: Icons.lock,
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(
                        double.infinity,
                        48,
                      ),
                      primary: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                  onPressed: () {
                    Navigator.pushNamed(
                        context, RegistrationConfirmationScreen.id);
                  },
                  child: const Text('Sign up'),
                ),
                const SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
