import 'package:flutter/material.dart';

import '../../../routes/routes.dart';
class SplashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    handlaData(context);
    return Scaffold(
    );
  }

  Future<void> handlaData(context) async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.of(context)
        .pushNamedAndRemoveUntil(Routes.login, (route) => false);
  }
}