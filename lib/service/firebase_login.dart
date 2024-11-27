// firebase_login.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

class FirebaseLogin {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Logger _logger = Logger(); // Instância do logger

  Future<User?> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user; // Retorna o usuário autenticado
    } on FirebaseAuthException catch (e) {
      // Trate os erros de autenticação aqui
      _logger.e('Error: ${e.message}'); // Usando logger para registrar erros
      return null; // Retorna null se houver um erro
    }
  }
}
