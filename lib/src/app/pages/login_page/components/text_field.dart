import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_config.dart';

class LoginTextField extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;
  final TextEditingController controller;

  final Country selectedCountry = Country(
      phoneCode: "+84",
      countryCode: "VN",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: "Việt Nam",
      example: "Việt Nam",
      displayName: "Việt Nam",
      displayNameNoCountryCode: "VN",
      e164Key: "");

  LoginTextField({
    Key? key,
    required this.hintText,
    required this.keyboardType,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      onChanged: (value) {
        controller.text = value;
      },
      decoration: InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(horizontal: AppConfig.screenWidth! * 0.05),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        hintText: hintText,
        prefixIcon: Container(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {},
            child: Text(
              "${selectedCountry.flagEmoji}  ${selectedCountry.phoneCode}",
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        suffixIcon: controller.text.length > 10
            ? Container(
                height: 20,
                width: 20,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.green),
                child: const Icon(Icons.done, color: Colors.white, size: 20),
              )
            : null,
        prefixIconConstraints: const BoxConstraints(minWidth: 0, maxHeight: 50),
      ),
      keyboardAppearance: Brightness.dark,
    );
  }
}
