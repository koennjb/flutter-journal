import 'package:flutter/material.dart';
import 'package:journal/helpers/service_locator.dart';
import 'package:journal/scoped_models/home_model.dart';
import 'package:scoped_model/scoped_model.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<HomeModel>(
      model: locator<HomeModel>(),
      child: ScopedModelDescendant<HomeModel>(
        builder: (context, child, model) => Scaffold(
          body: Center(
            child: Text(model.title),
          ),
        ),
      ),
    );
  }
}