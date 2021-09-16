import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';
import 'colors.dart';

// TODO: Convert ShrineApp to stateful widget (104)
class ShrineApp extends StatelessWidget {
  ShrineApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Shrine',
        // TODO: Change home: to a Backdrop with a HomePage frontLayer (104)
        home: const HomePage(),
        // TODO: Make currentCategory field take _currentCategory (104)
        // TODO: Pass _currentCategory for frontLayer (104)
        // TODO: Change backLayer field value to CategoryMenuPage (104)
        initialRoute: '/login',
        onGenerateRoute: _getRoute,
        //  Add a theme (103)
        theme: _buildShrineTheme());
  }

  ThemeData _buildShrineTheme() {
    final ThemeData base = ThemeData.light();
    return base.copyWith(
      primaryColor: kShrinePink100,
      buttonTheme: base.buttonTheme.copyWith(
        buttonColor: kShrinePink100,
        colorScheme: base.colorScheme.copyWith(
          secondary: kShrineBrown900,
        ),
      ),
      buttonBarTheme: base.buttonBarTheme.copyWith(
        buttonTextTheme: ButtonTextTheme.accent,
      ),
      scaffoldBackgroundColor: kShrineBackgroundWhite,
      cardColor: kShrineBackgroundWhite,
      textSelectionTheme: base.textSelectionTheme.copyWith(
        selectionColor: kShrinePink100,
      ),
      errorColor: kShrineErrorRed,
      colorScheme: base.colorScheme
          .copyWith(
            secondary: kShrineBrown900,
          )
          .copyWith(secondary: kShrineBrown900),
      // TODO: Add the text themes (103)
      // TODO: Add the icon themes (103)
      // TODO: Decorate the inputs (103)
    );
  }

  Route<dynamic>? _getRoute(RouteSettings settings) {
    if (settings.name != '/login') {
      return null;
    }

    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) => const LoginPage(),
      fullscreenDialog: true,
    );
  }
}

// TODO: Build a Shrine Theme (103)
// TODO: Build a Shrine Text Theme (103)
