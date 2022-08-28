import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget {
  final String title;
  final String description;

  const NoteCard({
    Key? key,
    required this.title,
    required this.description
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(5)
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
      ),
    );
  }
}