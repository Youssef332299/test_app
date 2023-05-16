import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/routes/routes.dart';
import 'Screens/Home Screen/HomeProvider/homeProvder.dart';
import 'Screens/Home Screen/HomeScreen/homeScreen.dart';
import 'Screens/Login Screen/LoginProvider/loginProvider.dart';
import 'Screens/Login Screen/loginScreen/loginScreen.dart';
import 'Screens/Splash/SplashProvider/splashProvider.dart';
import 'Screens/Splash/SplashScreen/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SplashProvider>(
            create: (context) => SplashProvider()),

        ChangeNotifierProvider<HomeProvider>(
            create: (context) => HomeProvider()),

        ChangeNotifierProvider<LoginProvider>(
            create: (context) => LoginProvider()),
    ],
      child: Builder(builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            Routes.init: (context) => SplashScreen(),
            Routes.login: (context) => LoginScreen(),
            Routes.home: (context) => HomeScreen(),
          },
        );
      }),
    );
  }
}
