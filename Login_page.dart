import 'package:flutter/material.dart';
import 'balance_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Giriş Yap")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (_) => const BalancePage()));
          },
          child: const Text("Telefon & Şifre ile Giriş"),
        ),
      ),
    );
  }
}
