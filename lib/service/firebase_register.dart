// ignore_for_file: lines_longer_than_80_chars

import 'package:firebase_auth/firebase_auth.dart';

class FirebaseRegister {
  static final FirebaseAuth _auth = FirebaseAuth.instance;

  /// Método para registrar um usuário com email e senha
  static Future<String?> registerWithEmailPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return 'Registration successful'; // Mensagem de sucesso
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return 'Email is already in use.';
      } else if (e.code == 'weak-password') {
        return 'Password is too weak.';
      } else if (e.code == 'invalid-email') {
        return 'Invalid email address.';
      } else {
        return 'An error occurred: ${e.message}';
      }
    } catch (e) {
      return 'An unknown error occurred.';
    }
  }
}
