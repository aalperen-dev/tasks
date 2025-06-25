import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => const SplashScreen(),
    );
  }

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushNamed(context, 'onboarding');
    });
    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/choira.png').animate().fadeOut(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeOut,
            delay: const Duration(milliseconds: 800)),
      ),
    );
  }
}
