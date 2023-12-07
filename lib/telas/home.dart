import 'package:flutter/material.dart';
import 'package:veriar/main.dart';
import 'package:veriar/telas/drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(child: DrawerApp()),
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
            Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.network(
                      "https://i.pinimg.com/564x/58/c6/f6/58c6f655f63a0d707151c43cc7519808.jpg",
                      fit: BoxFit.cover,
                    ))),
            Container(
              height: 10,
            ),
            buildCard(Icons.school_outlined, "AULAS", corPrincipal),
            Row(
              children: [
                Expanded(
                    child:
                        buildCard(Icons.newspaper, "NOTICIAS", corPrincipal)),
                Expanded(
                    child:
                        buildCard(Icons.comment, "FALE CONOSCO", corPrincipal)),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: buildCard(Icons.person, "PERFIL", corPrincipal)),
                Expanded(
                    child: buildCard(Icons.error_sharp, "DADOS", corPrincipal)),
              ],
            ),
            Row(
              children: [
                Expanded(child: buildCard(Icons.feed, "CENTRAL", corPrincipal)),
                Expanded(child: buildCard(Icons.add, "MAIS", corPrincipal)),
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
