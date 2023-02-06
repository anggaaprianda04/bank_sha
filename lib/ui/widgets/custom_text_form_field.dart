import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  final bool obsecureText;
  final bool iconPassword;
  final bool filledColor;
  String? hintText;
  bool? enableBorder;
  final TextEditingController textEditingController;
  CustomTextFormFiled(
      {required this.textEditingController,
      this.obsecureText = false,
      this.hintText,
      this.iconPassword = false,
      this.filledColor = false,
      this.enableBorder,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      obscureText: obsecureText,
      decoration: InputDecoration(
          hintText: hintText,
          filled: filledColor,
          fillColor: whiteColor,
          enabledBorder: enableBorder == true
              ? null
              : OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: whiteColor,
                  ),
                  borderRadius: BorderRadius.circular(14)),
          suffixIcon: iconPassword == true
              ? Icon(
                  Icons.remove_red_eye_outlined,
                  color: greyColor,
                )
              : const SizedBox(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          contentPadding: const EdgeInsets.all(12)),
    );
  }
}
