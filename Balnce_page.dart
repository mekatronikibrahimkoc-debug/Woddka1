import 'package:flutter/material.dart';
import 'qr_page.dart';

class BalancePage extends StatefulWidget {
  const BalancePage({super.key});

  @override
  State<BalancePage> createState() => _BalancePageState();
}

class _BalancePageState extends State<BalancePage> {
  double balance = 100.0; // sahte bakiye

  void addBalance(double amount) {
    setState(() {
      balance += amount;
    });
  }

  void deductBalance(double amount) {
    setState(() {
      balance -= amount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bakiye")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Mevcut Bakiye: ₺$balance"),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (_) => QRPage(
                  balance: balance,
                  onDeduct: deductBalance,
                )));
            },
            child: const Text("QR Kod Oku"),
          ),
        ],
      ),
    );
  }
}
