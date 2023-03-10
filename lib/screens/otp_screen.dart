import 'package:flutter/material.dart';

import '../components/my_text.dart';
import '../utils/my_theme.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Align(
            alignment: Alignment.centerLeft,
            child: Card(
              elevation: 4,
              child: GestureDetector(
                onTap: () {
                  // TODO : Back button Implementation
                  Navigator.pop(context);
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: MyTheme.primaryContainerLight.withOpacity(0.6),
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    // color: MyTheme.primary,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 80),
          const MyText(
            "Fill the code",
            textAlign: TextAlign.center,
            textStyle: TextStyle(
              color: MyTheme.primary,
              fontSize: 22,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
