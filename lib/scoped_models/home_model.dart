import 'package:journal/enums/view_states.dart';
import 'package:journal/helpers/service_locator.dart';
import 'package:journal/services/storage_service.dart';

import 'base_model.dart';

class HomeModel extends BaseModel {
  StorageService storageService = locator<StorageService>();

  String title = "HomeModel";

  Future saveData() async {
  setState(ViewState.Busy);
    title = "Saving Data";
    await storageService.saveData();
    title = "Data Saved";
    setState(ViewState.Retrieved);
  }

}