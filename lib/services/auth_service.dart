import 'package:journal/models/user.dart';

/**
 * Abstract service which contains all functionality of an authentication service.
 * Provide implementations of this class for each different authentication provider you need
 */
abstract class AuthService {
  Future<User> currentUser();
  Future<User> signInAnonymously();
  Future<User> signInWithEmailAndPassword(String email, String password);
  Future<User> createUserWithEmailAndPassword(String email, String password);
  Future<void> sendPasswordResetEmail(String email);
  Future<User> signInWithGoogle();
  Future<User> signInWithFacebook();
  Future<void> signOut();
  Stream<User> get onAuthStateChanged;
  void dispose();
}