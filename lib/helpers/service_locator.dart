import 'package:get_it/get_it.dart';
import 'package:journal/scoped_models/home_model.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Register services
  locator.registerFactory<HomeModel>(() => HomeModel());
}
