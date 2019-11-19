import 'package:flutter/material.dart';
import 'package:journal/helpers/router.dart' as router;
import 'helpers/Constants.dart' as Constants;
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(JournalApp());

class JournalApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appTitle,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      onGenerateRoute: router.generateRoute,
      initialRoute: router.LoginRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}

