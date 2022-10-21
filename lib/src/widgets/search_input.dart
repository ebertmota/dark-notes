import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Theme.of(context).colorScheme.primaryContainer
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          hintText: "Search one note",
          icon: Padding(
            padding: EdgeInsets.only(left: 15),
            child: Icon(Icons.search, color: Colors.white)
          ),
          disabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          contentPadding: EdgeInsets.only(right: 20),
        )
      ),
    );
  }
}