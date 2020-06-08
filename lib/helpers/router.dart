import 'package:flutter/material.dart';
import 'package:journal/models/user.dart';
import 'package:journal/ui/views/home_view.dart';
import 'package:journal/ui/views/login_view.dart';
import 'package:journal/ui/views/undefined_view.dart';

const String HomeRoute = "/";
const String LoginRoute = "/login";

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return MaterialPageRoute(builder: (context) => HomeView());
    case LoginRoute:
      return MaterialPageRoute(builder: (context) => LoginView());
    default:
      return MaterialPageRoute(builder: (context) => UndefinedView());
  }
}
