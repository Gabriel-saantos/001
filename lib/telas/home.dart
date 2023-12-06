import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        surfaceTintColor: Colors.white,
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              width: 80,
              child: Image.asset('images/logo.png'),
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
            padding: const EdgeInsets.all(18.0),
            child: Text(
              "Too Apps - 2023",
              style: TextStyle(fontSize: 12),
            ),
          ),
        ]),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: SizedBox(
                width: 40,
                child: Image.asset('images/logo.png'),
              ),
            ),
            const Text("Veriar"),
            Spacer(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            buildCard(Icons.school_outlined, "AULAS", Colors.purple),
            Row(
              children: [
                Expanded(
                    child:
                        buildCard(Icons.newspaper, "NOTICIAS", Colors.purple)),
                Expanded(
                    child: buildCard(
                        Icons.comment, "FALE CONOSCO", Colors.purple)),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child:
                        buildCard(Icons.newspaper, "NOTICIAS", Colors.purple)),
                Expanded(
                    child: buildCard(
                        Icons.comment, "FALE CONOSCO", Colors.purple)),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child:
                        buildCard(Icons.newspaper, "NOTICIAS", Colors.purple)),
                Expanded(
                    child: buildCard(
                        Icons.comment, "FALE CONOSCO", Colors.purple)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(IconData icon, String label, Color color) {
    return Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Icon(icon, color: Colors.white),
            SizedBox(height: 5),
            Text(label, style: TextStyle(color: Colors.white)),
            SizedBox(height: 2),
          ],
        ),
      ),
    );
  }
}
