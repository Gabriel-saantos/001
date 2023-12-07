import 'package:flutter/material.dart';
import 'package:veriar/telas/home.dart';
import 'package:veriar/telas/login.dart';
import 'package:veriar/telas/splash.dart';

Color corPrincipal = Color.fromRGBO(155, 32, 78, 1.0);

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
        '/login': (context) => Login(),
        '/home': (context) => Home(),
      },
    );
  }
}
