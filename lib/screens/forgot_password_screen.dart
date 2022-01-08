import 'package:flutter/material.dart';
import '../widgets/forms/decorated_icon_input.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  static const String id = '/forgot-password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recover Password'),
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
                    hintText: 'Email', prefixIcon: Icons.email),
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
                  onPressed: () {},
                  child: const Text('Send Email'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
