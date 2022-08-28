import 'package:dark_notes/src/pages/createNote.dart';
import 'package:dark_notes/src/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.blue[800],
          background: const Color(0xff181c26),
          primaryContainer: const Color(0xff6C6C80),
          brightness: Brightness.dark,
        )
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/createNote': (context) => const CreateNote(),
      }
    );
  }
}