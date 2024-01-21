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
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
          child: Stack(children: [
            Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: SizedBox(
                    width: double.infinity,
                    child:
                        Image.asset("assets/splash_screen_illustration.png"))),
            Padding(
              padding: EdgeInsets.only(top: 148),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    "NONTON",
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    ".ID",
                    style: TextStyle(fontSize: 32, color: Color(0xffFFDE33)),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
