import 'package:flutter/material.dart';
import 'package:veriar/aulas/aulas.dart';
import 'package:veriar/aulas/news.dart';
import 'package:veriar/telas/home.dart';
import 'package:veriar/telas/login.dart';
import 'package:veriar/telas/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Color corPrincipal = Color.fromRGBO(155, 32, 78, 1.0);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        '/aulas': (context) => LessonScreen(),
        '/news': (context) => NewsScreen(),
      },
    );
  }
}
