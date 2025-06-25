// ignore_for_file: avoid_print

import 'package:choira_task/views/screens/home_page.dart';
import 'package:choira_task/views/screens/login_screen.dart';
import 'package:choira_task/views/screens/onboarting_screen.dart';
import 'package:choira_task/views/screens/otp_screen.dart';
import 'package:choira_task/views/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import '../views/screens/course_details.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route : $settings.name');
    switch (settings.name) {
      // home page
      case 'home_screen':
        return HomePage.route();
      // course details
      case 'course_details':
        return CourseDetails.route();
      // login
      case 'login':
        return LoginScreen.route();
      // onboarding
      case 'onboarding':
        return OnboardingScreen.route();
      // otp
      case 'otp':
        return OTPScreen.route();
      // splash
      case 'splash':
        return SplashScreen.route();

      // error
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (context) => const Scaffold(
        body: Center(
          child: Text('Error!'),
        ),
      ),
    );
  }
}
