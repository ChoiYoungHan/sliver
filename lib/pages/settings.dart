import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 500,
          width: 250,
          child: Lottie.asset('lottie/setting.json'),
        ),
      ),
    );
  }
}
