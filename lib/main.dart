import 'package:flutter/material.dart';
import 'package:journal/helpers/router.dart' as router;
import 'helpers/Constants.dart' as Constants;
import 'helpers/service_locator.dart';

void main() {
   setupLocator();
   runApp(JournalApp());
}

class JournalApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: router.generateRoute,
      initialRoute: router.HomeRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}

