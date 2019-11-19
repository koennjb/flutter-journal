import 'package:flutter/material.dart';
import 'package:journal/scoped_models/home_model.dart';
import 'base_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      builder: (context, child, model) => Scaffold(
        body: Center(
          child: Text(model.title),
        ),
      ),
    );
  }
}
