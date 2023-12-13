import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:veriar/main.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorMessage = "";
  bool _isLoading = false;
  bool _obscureText = true;

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
                child: Image.asset('images/logo.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 5),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "E-mail",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding: EdgeInsets.all(18),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 10, 40, 5),
              child: TextField(
                controller: _passwordController,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  labelText: "Senha",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding: EdgeInsets.all(18),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 50, 40, 5),
              child: _isLoading
                  ? CircularProgressIndicator(
                      color: corPrincipal,
                    )
                  : OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        minimumSize: Size(500, 45),
                        shape: StadiumBorder(),
                        backgroundColor: corPrincipal,
                      ),
                      child: Text(
                        "ENTRAR",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      onPressed: () async {
                        setState(() {
                          _isLoading = true;
                        });

                        try {
                          await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                            email: _emailController.text,
                            password: _passwordController.text,
                          );

                          Navigator.of(context).pushReplacementNamed('/home');
                        } catch (e) {
                          setState(() {
                            if (e is FirebaseAuthException) {
                              if (e.code == 'user-not-found') {
                                _errorMessage = 'Conta não encontrada.';
                              } else if (e.code == 'wrong-password') {
                                _errorMessage = 'Senha incorreta.';
                              } else if (_passwordController.text == '') {
                                _errorMessage = 'Preencha todos os campos';
                              } else if (_emailController.text == '') {
                                _errorMessage = 'Preencha todos os campos';
                              } else {
                                _errorMessage = 'Erro ao fazer login';
                              }
                            }
                          });
                          print("Erro de login: $_errorMessage");
                        } finally {
                          setState(() {
                            _isLoading = false;
                          });
                        }
                      },
                    ),
            ),
            if (_errorMessage.isNotEmpty)
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
                child: Text(
                  _errorMessage,
                  style: TextStyle(color: Colors.red),
                ),
              ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("NÃO TEM ACESSO?"),
                    Text(
                      "  SOLICITE",
                      style: TextStyle(color: corPrincipal),
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
