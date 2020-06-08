import 'package:flutter/material.dart';
import 'package:journal/constants/colors.dart';
import 'package:journal/services/auth_service.dart';
import 'package:journal/services/mock_auth_service.dart';
import 'package:journal/ui/widgets/auth_widget.dart';
import 'package:journal/ui/widgets/auth_widget_builder.dart';
import 'package:provider/provider.dart';
import 'helpers/Constants.dart' as Constants;
import 'helpers/service_locator.dart';
import 'models/user.dart';

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
      child: AuthWidgetBuilder(
        builder: (BuildContext context, AsyncSnapshot<User> userSnapshot) {
          return MaterialApp(
            title: Constants.appTitle,
            theme: ThemeData(
              primarySwatch: JournalColors.primary,
              textTheme: Theme.of(context).textTheme.apply(
                    bodyColor: JournalColors.defaultText,
                    displayColor: JournalColors.defaultText,
                  ),
              primaryTextTheme: Theme.of(context).primaryTextTheme.apply(
                    bodyColor: JournalColors.primaryText,
                    displayColor: JournalColors.primaryText,
                  ),
            ),
            //onGenerateRoute: router.generateRoute,
            //initialRoute: router.LoginRoute,
            home: AuthWidget(
              userSnapshot: userSnapshot,
            ),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
