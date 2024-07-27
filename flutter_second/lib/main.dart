import 'package:flutter/material.dart';
import 'package:flutter_second/pages/home_page.dart';
import 'package:flutter_second/pages/login_page.dart';
import 'package:flutter_second/pages/main_page.dart';
import 'package:flutter_second/pages/test_page.dart';
import 'package:flutter_second/styles/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        fontFamily: 'Urbanist',
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/main': (context) => const MainPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
