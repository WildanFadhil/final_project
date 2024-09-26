import 'package:final_project/screen/auth/login_screen.dart';
import 'package:final_project/screen/auth/register_screen.dart';
import 'package:final_project/screen/content/detail_content_screen.dart';
import 'package:final_project/screen/menu/home_screen.dart';
import 'package:final_project/screen/splash_screen.dart';
import 'package:flutter/material.dart';

class EdspertNavigation {
  static GlobalKey<NavigatorState> navigatorkey = GlobalKey<NavigatorState>();
  static Map<String, WidgetBuilder> routes = {
    SplashScreen.routeName: (context) => const SplashScreen(),
    LoginScreen.routeName: (context) => const LoginScreen(),
    RegisterScreen.routeName: (context) => const RegisterScreen(),
    HomeScreen.routeName: (context) => const HomeScreen(),
    DetailContentScreen.routeName: (context) => const DetailContentScreen(),
  };

  void pushNamed(String routeName, {Object? arguments}) {
    navigatorkey.currentState!.pushNamed(routeName, arguments: arguments);
  }

  void pushReplacementNamed(String routeName, {Object? arguments}) {
    navigatorkey.currentState!
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  void push(Widget widget) {
    navigatorkey.currentState!
        .push(MaterialPageRoute(builder: (builder) => widget));
  }

  void pop() {
    navigatorkey.currentState!.pop();
  }

  void popUntil(String routeName) {
    navigatorkey.currentState!.popUntil(ModalRoute.withName(routeName));
  }
}
