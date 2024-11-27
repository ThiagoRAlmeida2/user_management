import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

class FirebaseRegister {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static final Logger logger = Logger(); // Instância do logger

  /// Método para registrar um usuário com email e senha
  static Future<String?> registerWithEmailPassword(
    String email,
    String password,
  ) async {
    try {
      // Chamada correta do método
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return 'Registration successful'; // Mensagem de sucesso
    } on FirebaseAuthException catch (e) {
      // Exibe no console o código de erro e a mensagem usando logger
      logger.e('FirebaseAuthException: ${e.code} - ${e.message}');

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
      // Exibe no console o erro genérico usando logger
      logger.e('Unknown error: $e');
      return 'An unknown error occurred.';
    }
  }
}
