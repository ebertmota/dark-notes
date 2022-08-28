import 'package:dark_notes/src/components/note_list.dart';
import 'package:dark_notes/src/components/search_input.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0.0,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text('Notes'),
        ),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 24),
        centerTitle: false,
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Align(
        alignment: Alignment.topLeft,
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SearchInput(),
                NoteList(),
              ],
            )
          )
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/createNote');
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.add),
      ),
    );
  }
}