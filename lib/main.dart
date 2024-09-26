import 'package:final_project/core/navigation/edspert_navigation.dart';
import 'package:final_project/screen/splash_screen.dart';
import 'package:final_project/utils/edspert_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: EdspertColor.primaryColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: EdspertColor.primaryColor,
          elevation: 0,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: SplashScreen.routeName,
      routes: EdspertNavigation.routes,
      navigatorKey: EdspertNavigation.navigatorkey,
    );
  }
}
