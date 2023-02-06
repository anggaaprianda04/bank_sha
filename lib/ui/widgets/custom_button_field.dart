import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomButtonField extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final double width;
  final double height;
  const CustomButtonField(
      {required this.title,
      this.width = double.infinity,
      this.height = 50,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: purpleColor, borderRadius: BorderRadius.circular(56)),
      child: TextButton(
        onPressed: onPressed,
        child: Center(
          child: Text(
            title,
            style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final Function() onPressed;
  final String title;
  const CustomTextButton(
      {required this.title, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        title,
        style: secondGreyTextStyle.copyWith(fontSize: 16),
      ),
    );
  }
}

class InputButton extends StatelessWidget {
  final String number;
  final Function() onPressed;
  const InputButton({required this.onPressed, required this.number, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 60,
        height: 60,
        decoration:
            BoxDecoration(color: backgroundColorNumber, shape: BoxShape.circle),
        child: Center(
          child: Text(
            number,
            style: whiteTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
          ),
        ),
      ),
    );
  }
}
