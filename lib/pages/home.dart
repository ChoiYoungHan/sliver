import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home page is selected!',
              style: TextStyle(
                fontSize: 20
              )
            ),
            SizedBox(
              height: 350,
              width: 450,
              child: Lottie.asset('lottie/home.json')
            )
          ]
        ),
      ),
    );
  }
}
