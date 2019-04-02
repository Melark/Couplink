import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesService {
  Future<bool> getRememberMeValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('rememberMe') ?? false;
  }

  Future<void> setRememberMeValue(bool shouldRemember) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('rememberMe', shouldRemember);
  }

  Future<String> getUsernameValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('username');
  }

  Future<String> getPasswordValue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('password');
  }

  Future<void> setUsernameValue(String username) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', username);
  }

  Future<void> setPasswordValue(String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('password', password);
  }
}
