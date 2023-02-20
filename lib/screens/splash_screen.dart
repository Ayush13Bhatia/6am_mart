import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mart/screens/login_screen.dart';
import 'package:mart/utils/images_url.dart';
import 'package:mart/utils/my_theme.dart';
import 'package:rive/rive.dart' as riv;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        ),
        (route) => false,
      );
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.primaryLight,
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              MyTheme.primaryLight,
              MyTheme.primaryLight.withOpacity(0.9),
              MyTheme.primary,
              MyTheme.primary,
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 100),
                child: Center(
                  child: Image.asset(
                    ImageUrl.assetsImageLogo,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 150,
              width: double.maxFinite,
              child: riv.RiveAnimation.asset(
                RiveUrl.loader,
              ),
            )
          ],
        ),
      ),
    );
  }
}
