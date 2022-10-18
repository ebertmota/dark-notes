import 'package:flutter/material.dart';

class CreateNote extends StatelessWidget {
  const CreateNote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).colorScheme.primary),
          onPressed: () => Navigator.of(context).pop()
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.check, color: Theme.of(context).colorScheme.primary),
            onPressed: () => Navigator.of(context).pop()
          )
        ],
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
                Text('Notes', style: TextStyle(fontSize: 24))
              ],
            )
          )
        )
      )
    );
  }
}