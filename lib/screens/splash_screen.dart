import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushNamed(context, "/home");
    });

    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Calc',
            style: TextStyle(
                color: Colors.amber.shade700,
                fontSize: 54,
                fontWeight: FontWeight.bold),
          ),
          const Text(
            'By WISH',
            style: TextStyle(color: Colors.black26, fontSize: 14),
          ),
          const SizedBox(
            height: 200,
          ),
          const CircularProgressIndicator(
            color: Colors.amber,
          )
        ],
      )),
    );
  }
}
