import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //  Add text editing controllers (101)
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                const Text('SHRINE'),
              ],
            ),
            const SizedBox(height: 120.0),
            // TODO: Wrap Username with AccentColorOverride (103)
            // TODO: Remove filled: true values (103)
            // TODO: Wrap Password with AccentColorOverride (103)

            //  Add TextField widgets (101)
            TextField(
              controller: _usernameController,
              decoration:
                  const InputDecoration(filled: true, labelText: 'Username'),
            ),
            const SizedBox(
              height: 12.0,
            ),
            TextField(
              controller: _passwordController,
              decoration:
                  const InputDecoration(filled: true, labelText: 'Password'),
              obscureText: true,
            ),

            //  Add button bar (101)
            ButtonBar(
              children: <Widget>[
                TextButton(
                    child: const Text('CANCEL'),
                    onPressed: () {
                      _usernameController.clear();
                      _passwordController.clear();
                    }),
                ElevatedButton(
                    child: const Text('NEXT'),
                    onPressed: () {
                      Navigator.pop(context);
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}

// TODO: Add AccentColorOverride (103)
