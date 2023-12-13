import 'package:flutter/material.dart';
import 'package:veriar/main.dart';

class LessonScreen extends StatelessWidget {
  final List<String> lessons = [
    'Conteúdo 1',
    'Conteúdo 2',
    'Conteúdo 3',
    'Conteúdo 4',
    'Conteúdo 5',
    'Conteúdo 6',
    'Conteúdo 7',
    'Conteúdo 8',
    'Conteúdo 9',
    'Conteúdo 10',
  ];

  final int unlockedLesson = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        actionsIconTheme: IconThemeData(color: Colors.white),
        backgroundColor: corPrincipal,
        title: Text(
          'Aulas',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: lessons.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: Container(
              height: 110,
              decoration: BoxDecoration(
                //    color: Colors.black,
                //    image: DecorationImage(
                //       image: AssetImage(
                //        'images/logo.png',
                //     ),
                //     fit: BoxFit.cover,
                //     opacity: 0.7),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  if (index <= unlockedLesson) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LessonDetailScreen(
                          lessonTitle: lessons[index],
                        ),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Row(
                          children: [
                            Icon(
                              Icons.block,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text('CONTEÚDO BLOQUEADO'),
                          ],
                        ),
                      ),
                    );
                  }
                },
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Text(
                          lessons[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  trailing: index == unlockedLesson
                      ? Icon(Icons.lock_open, color: Colors.green)
                      : Icon(Icons.lock, color: Colors.red),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class LessonDetailScreen extends StatelessWidget {
  final String lessonTitle;

  LessonDetailScreen({required this.lessonTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(lessonTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Hero(
            tag: 'lesson-$lessonTitle',
            child: Text(
              'CONTEÚDO AQUI',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
