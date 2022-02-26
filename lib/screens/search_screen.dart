import 'package:flutter/material.dart';
class SearchScreen extends StatelessWidget {
  static const routeArgs='/search';
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Qidiruv oynasi'),),
      body: const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(15),
          hintStyle: TextStyle(fontSize: 22),
          labelStyle: TextStyle(fontSize: 22),
          hintText: 'Enter a search term',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
