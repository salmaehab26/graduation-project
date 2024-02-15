import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/profilePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double opacity = 0;

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.scale(
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color.fromRGBO(230, 255, 234, 1),
          Color.fromRGBO(230, 255, 234, 1),
        ],
      ),
      childWidget: SizedBox(
        height: 300,
        child: Image.asset("assets/images/Logo5.png"),
      ),
      duration: const Duration(milliseconds: 1500),
      animationDuration: const Duration(milliseconds: 1000),
      onAnimationEnd: () => debugPrint("On Scale End"),
      nextScreen: const profilePage(),
    );
  }
}