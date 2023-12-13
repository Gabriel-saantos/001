import 'package:flutter/material.dart';


class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notícias Políticas'),
      ),
      body: NewsList(),
    );
  }
}

class NewsList extends StatelessWidget {
  // Aqui você pode adicionar sua própria lógica para obter e exibir notícias políticas
  final List<String> politicsNews = [
    'Notícia 1 sobre política',
    'Notícia 2 sobre política',
    'Notícia 3 sobre política',
    // Adicione mais notícias conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: politicsNews.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(politicsNews[index]),
            // Adicione mais detalhes da notícia, como autor, data, etc., conforme necessário
          ),
        );
      },
    );
  }
}
