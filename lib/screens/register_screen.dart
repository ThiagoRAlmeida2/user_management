import 'package:flutter/material.dart';
import '../service/firebase_register.dart'; // Caminho relativo para o arquivo firebase_register.dart

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String? _message;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _register() async {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    String? result =
        await FirebaseRegister.registerWithEmailPassword(email, password);
    setState(() {
      _message = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _register,
              child: Text('Register'),
            ),
            SizedBox(height: 20),
            if (_message != null)
              Text(
                _message!,
                style: TextStyle(
                    color: _message == 'Registration successful'
                        ? Colors.green
                        : Colors.red),
              ),
          ],
        ),
      ),
    );
  }
}
