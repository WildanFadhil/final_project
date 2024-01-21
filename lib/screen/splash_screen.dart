import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C1A29),
      body: Expanded(
        child: Stack(children: [
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Image.asset("assets/splash_screen_illustration.png"))
        ]),
      ),
    );
  }
}
