import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthProvider {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<FirebaseUser> signUpWithEmailAndPassword(
      String email, String password, {String name}) async {
    try {
      final FirebaseUser user = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return user;
    } catch (e) {
      print(e); // todo: log error
      return null;
    }
  }

  Future<FirebaseUser> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final FirebaseUser user = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return user;
    } catch (e) {
      print(e); // todo: log error
      return null;
    }
  }
}