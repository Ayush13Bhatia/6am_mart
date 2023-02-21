import 'package:flutter/material.dart';

import '../components/my_text.dart';
import '../utils/images_url.dart';
import '../utils/my_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            ImageUrl.assetsImageParcel,
            height: size.height * 0.3,
            width: double.maxFinite,
          ),
          const SizedBox(height: 20),

          ///Text Your Phone Number
          const MyText(
            "Your Phone Number",
            textAlign: TextAlign.center,
            textStyle: TextStyle(
              color: MyTheme.primary,
              fontSize: 22,
              fontFamily: "Roboto",
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
