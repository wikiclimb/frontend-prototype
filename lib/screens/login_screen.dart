import 'package:flutter/material.dart';
import '../widgets/forms/decorated_icon_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String id = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log in'),
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
                  height: 24,
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
                      primary: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                  onPressed: null,
                  child: const Text('Log in'),
                ),
                const SizedBox(
                  height: 16,
                ),
                const ElevatedButton(
                  onPressed: null,
                  child: Text('I forgot my password'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
