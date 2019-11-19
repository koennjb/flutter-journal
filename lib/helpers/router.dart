import 'package:flutter/material.dart';
import 'package:journal/views/HomeView.dart';
import 'package:journal/views/LoginView.dart';
import 'package:journal/views/undefined_view.dart';

const String HomeRoute = "/";
const String LoginRoute = "/login";

Route<dynamic> generateRoute(RouteSettings settings) {
  // Here we'll handle all the routing
  switch (settings.name) {
    case HomeRoute:
      return MaterialPageRoute(builder: (context) => HomeView());
    case LoginRoute:
      return MaterialPageRoute(builder: (context) => LoginView());
    default:
      return MaterialPageRoute(builder: (context) => UndefinedView());
  }
}