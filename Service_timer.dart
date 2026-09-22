import 'package:flutter/material.dart';
import 'dart:async';

class ServiceTimer extends StatefulWidget {
  const ServiceTimer({super.key});

  @override
  State<ServiceTimer> createState() => _ServiceTimerState();
}

class _ServiceTimerState extends State<ServiceTimer> {
  int seconds = 10;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        seconds--;
      });
      if (seconds == 0) {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Servis Başlıyor")),
      body: Center(
        child: seconds > 0
            ? Text("Yıkama $seconds saniye içinde başlayacak...")
            : const Text("Yıkama başladı!"),
      ),
    );
  }
}
