import 'package:flutter/material.dart';

Widget DrawerApp() {
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
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  child: Icon(Icons.person),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "USER 001",
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "INICIO",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "CONTATO",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "MAIS",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "CONFIGURAÇÕES",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "ÁREA ADMINISTRATIVA",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      Spacer(),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "SAIR",
          style: TextStyle(color: Colors.red),
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
