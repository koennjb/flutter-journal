import 'package:journal/enums/view_states.dart';
import 'package:journal/helpers/service_locator.dart';
import 'package:journal/services/authentication_service.dart';
import 'base_model.dart';

class LoginModel extends BaseModel {
  AuthenticationService authService = locator<AuthenticationService>();

  String username = "Default";

  Future<bool> login(String user, String pass) async {
    setState(ViewState.Busy);
    var result = await authService.login(user, pass);
    username = result ? user : "";
    setState(ViewState.Retrieved);
    return result;
  }

}