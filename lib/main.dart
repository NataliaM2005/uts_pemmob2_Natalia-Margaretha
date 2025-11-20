import 'package:flutter/material.dart';
import 'pages/splash_screen.dart';
import 'pages/login_page.dart';
import 'pages/register_page.dart';
import 'pages/home_page.dart';
import 'pages/maps_page.dart';
import 'pages/info_list_page.dart';
import 'pages/about_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Map Navigator App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) =>  SplashScreen(),
        '/login': (context) => LoginPage(),
        '/register': (context) =>  RegisterPage(),
        '/home': (context) => HomePage(),
        '/maps': (context) => const MapsPage(
        lat: -6.2088,     // Jakarta default
        lng: 106.8456,
        title: "Peta Default",
      ),
        '/info': (context) => InfoListPage(),
        '/about': (context) =>  AboutPage(),
      },
    );
  }
}
