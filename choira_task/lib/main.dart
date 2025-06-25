import 'package:choira_task/config/app_rotures.dart';
import 'package:choira_task/config/colors.dart';
import 'package:choira_task/views/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Choira',
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: choiraBlueTwo,
          showUnselectedLabels: false,
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          selectedItemColor: Colors.yellow,
          selectedIconTheme: const IconThemeData(color: Colors.white),
          showSelectedLabels: true,
        ),
        scaffoldBackgroundColor: choiraBlue,
        appBarTheme: AppBarTheme(
          backgroundColor: choiraBlue,
          elevation: 0,
        ),
      ),
      // home: const HomePage(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: SplashScreen.routeName,
    );
  }
}
