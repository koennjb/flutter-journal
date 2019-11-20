import 'package:flutter/material.dart';
import 'package:journal/helpers/router.dart' as router;
import 'package:journal/scoped_models/login_model.dart';
import 'package:journal/services/auth_service.dart';
import 'package:journal/services/mock_auth_service.dart';
import 'package:journal/ui/views/base_view.dart';
import 'package:provider/provider.dart';
import 'package:scoped_model/scoped_model.dart';
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
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          builder: (context) => MockAuthService(),
          dispose: (context, AuthService service) => service.dispose(),
        )
      ],
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
