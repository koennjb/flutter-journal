class AuthenticationService {
  Future<bool> login(String username, String password) async {
    await Future.delayed(Duration(seconds: 2));
    return username == "koennjb" && password == "password";
  }
}