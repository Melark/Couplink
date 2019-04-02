import 'package:couplink/src/providers/firebase_auth_provider.dart';
import 'package:couplink/src/services/shared_preferences_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthBloc {
  FirebaseUser _user;
  FirebaseAuthProvider _firebaseAuthProvider = FirebaseAuthProvider();

  void dispose() {
    // TODO: implement dispose
  }

  void fetchState() {
    // TODO: implement fetchState
  }

  bool isEmailValid(String email) {
    // TODO: implement REGEX
    return email.contains('@') &&
        email.contains('.') &&
        email.trim().length > 4;
  }

  bool isPasswordValid(String password) {
    // TODO: implement REGEX
    return password.trim().length >= 6;
  }

  Future<bool> getRememberMe() async {
    SharedPreferencesService sharedPreferencesService =
        SharedPreferencesService();
    return await sharedPreferencesService.getRememberMeValue();
  }

  Future<void> setRememberMe(bool shouldRemember) async {
    SharedPreferencesService sharedPreferencesService =
        SharedPreferencesService();
    return await sharedPreferencesService.setRememberMeValue(shouldRemember);
  }

  Future<void> setPasswordForRememberMe(String password) async {
    SharedPreferencesService sharedPreferencesService =
        SharedPreferencesService();
    return await sharedPreferencesService.setPasswordValue(password);
  }

  Future<String> getPasswordForRememberMe() async {
    SharedPreferencesService sharedPreferencesService =
        SharedPreferencesService();
    return await sharedPreferencesService.getPasswordValue();
  }

  Future<void> setUsernameForRememberMe(String username) async {
    SharedPreferencesService sharedPreferencesService =
        SharedPreferencesService();
    return await sharedPreferencesService.setUsernameValue(username);
  }

  Future<String> getUsernameForRememberMe() async {
    SharedPreferencesService sharedPreferencesService =
        SharedPreferencesService();
    return await sharedPreferencesService.getUsernameValue();
  }

  Future<bool> signinWithUsernameAndPassword(
      String email, String password) async {
    bool validated = false;
    _user =
        await _firebaseAuthProvider.signInWithEmailAndPassword(email, password);
    if (_user != null) {
      validated = true;
    }

    return validated;
  }

  Future<bool> signupWithUsernameAndPassword(
      String email, String password) async {
    bool validated = false;
    _user =
        await _firebaseAuthProvider.signUpWithEmailAndPassword(email, password);
    if (_user != null) {
      validated = true;
    }

    return validated;
  }
}
