import 'package:flutter/material.dart';
import 'service_timer.dart';

class QRPage extends StatelessWidget {
  final double balance;
  final Function(double) onDeduct;

  const QRPage({super.key, required this.balance, required this.onDeduct});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("QR Kod Oku")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            if (balance >= 50) {
              onDeduct(50); // hizmet ücreti
              Navigator.push(context,
                MaterialPageRoute(builder: (_) => const ServiceTimer()));
            }
          },
          child: const Text("QR Kod Okut (Simülasyon)"),
        ),
      ),
    );
  }
}
