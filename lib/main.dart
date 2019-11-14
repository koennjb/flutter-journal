import 'package:flutter/material.dart';
import 'package:journal/pages/HomePage.dart';
import 'helpers/Constants.dart' as Constants;

void main() => runApp(JournalApp());

class JournalApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

