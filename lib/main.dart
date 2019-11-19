import 'package:flutter/material.dart';
import 'package:journal/helpers/router.dart' as router;
import 'package:provider/provider.dart';
import 'helpers/Constants.dart' as Constants;
import 'helpers/provider_setup.dart';

void main() => runApp(JournalApp());

class JournalApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: providers,
        child: MaterialApp(
          title: Constants.appTitle,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          onGenerateRoute: router.generateRoute,
          initialRoute: router.LoginRoute,
          debugShowCheckedModeBanner: false,
        ),
    );
  }
}

