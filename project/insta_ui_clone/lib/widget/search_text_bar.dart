import 'package:flutter/material.dart';

class SearchTextBar extends StatelessWidget {
  const SearchTextBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.search),
            hintText: '검색',
            border: outlineInputBorder(),
            enabledBorder: outlineInputBorder(),
            contentPadding: const EdgeInsets.all(0),
            filled: true,
            fillColor: Colors.grey.shade200,
          ),
        ),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: BorderSide(color: Colors.grey.shade200, width: 1),
  );
}
