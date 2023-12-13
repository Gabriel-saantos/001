import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:veriar/main.dart';

Widget DrawerApp() {
  User? user = FirebaseAuth.instance.currentUser;

  return Drawer(
    backgroundColor: Colors.white,
    shadowColor: Colors.white,
    surfaceTintColor: Colors.white,
    child: Column(children: [
      Padding(
        padding: EdgeInsets.all(8.0),
        child: SizedBox(
          width: 90,
          child: Image.asset('images/logo.png'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Divider(
              color: Colors.black,
            ),
            CircleAvatar(
              child: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  user!.email ?? "Usuário",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "OPCAO 1",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "OPCAO 2",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "OPCAO 3",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "OPCAO 4",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "OPCAO 5",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Spacer(),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.exit_to_app_outlined),
            SizedBox(
              width: 10,
            ),
            Text(
              "SAIR",
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: Text(
          "Too Apps - 2023",
          style: TextStyle(fontSize: 12),
        ),
      ),
    ]),
  );
}
