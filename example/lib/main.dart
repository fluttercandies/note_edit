import 'package:flutter/material.dart';
import 'package:note_edit_example/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'NoteEdit',
      home: new MyHomePage(),
    );
  }
}
