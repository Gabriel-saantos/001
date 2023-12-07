import 'package:flutter/material.dart';
import 'package:veriar/main.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Container(
                height: 100,
                width: 200,
                child: Image.asset(
                  'images/logo.png',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 5),
              child: TextField(
                decoration: InputDecoration(
                    label: Text("E-mail"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    contentPadding: EdgeInsets.all(18)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 5),
              child: TextField(
                decoration: InputDecoration(
                    label: Text("Senha"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                    contentPadding: EdgeInsets.all(18)),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(40, 50, 40, 5),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      minimumSize: Size(500, 45),
                      shape: StadiumBorder(),
                      backgroundColor: corPrincipal),
                  child: Text(
                    "ENTRAR",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/home');
                  },
                )),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("NÃO TEM ACESSO?"),
                    Text(
                      "  SOLICITE",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
