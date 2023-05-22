import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomFromField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final bool obsecureText;
  String? hintText;
  final bool iconPassword;
  final bool enableBorder;
  CustomFromField({
    required this.title,
    required this.controller,
    this.hintText,
    this.obsecureText = false,
    this.iconPassword = false,
    this.enableBorder = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(fontWeight: medium),
        ),
        const SizedBox(
          height: 8,
        ),
        CustomTextFormFiled(
            hintText: hintText,
            iconPassword: iconPassword,
            obsecureText: obsecureText,
            enableBorder: enableBorder,
            textEditingController: controller)
      ],
    );
  }
}
