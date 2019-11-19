import 'package:get_it/get_it.dart';
import 'package:journal/scoped_models/home_model.dart';
import 'package:journal/services/storage_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  // Register services
  // Lazy singleton creates the first instance and registers the service once it is used
  locator.registerLazySingleton<StorageService>(() => StorageService());
  // Register models
  locator.registerFactory<HomeModel>(() => HomeModel());
}
