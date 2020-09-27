import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:note_edit/note_edit.dart';
import 'package:note_edit_example/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<void> initPlatformState() async {
    String platformVersion;
    try {
      platformVersion = await NoteEdit.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new MyHomePage(),
    );
  }
}
