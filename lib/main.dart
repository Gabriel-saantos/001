import 'package:flutter/material.dart';
import 'package:veriar/telas/home.dart';
import 'package:veriar/telas/splash.dart';

Color corPrincipal = Colors.purple;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: corPrincipal),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        '/home': (context) => Home(),
      },
    );
  }
}
