import 'package:flutter/material.dart';

import '../components/my_text.dart';
import '../components/my_text_field.dart';
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
          const SizedBox(height: 20),
          MyTextField(
            controller: _countryController,
            label: "Country/Region",
            isReadOnly: true,
            // prefixWidget: ,
            validator: (st) {
              if (st == null) {
                return "Please Select Country";
              }
              if (st.isEmpty) {
                return "Please Select Country";
              }
              return null;
            },
            suffixWidget: const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.arrow_drop_down,
                color: MyTheme.primary,
              ),
            ),
            onTap: () {
              showCountryPicker(
                context: context,
                showPhoneCode: true,
                favorite: ["IN"],
                countryListTheme: CountryListThemeData(
                  flagSize: 35,
                  bottomSheetHeight: size.height * 0.8,
                ),
                onSelect: (Country country) {
                  print('Select country: ${country.flagEmoji}');
                  _countryController.text = "${country.flagEmoji} ${country.name}(+${country.phoneCode})";
                },
              );
            },
          ),
          const SizedBox(height: 2),
        ],
      ),
    );
  }
}
