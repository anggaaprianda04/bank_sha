import 'dart:math';

import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/custom_appbar.dart';
import 'package:bank_sha/ui/widgets/custom_button_field.dart';
import 'package:flutter/material.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  TextEditingController pinController = TextEditingController(text: '');

  addPin(String number) {
    if (pinController.text.length < 6) {
      setState(() {
        pinController.text = pinController.text + number;
      });
    }
    // print(pinController.text);
    if (pinController.text == "123123") {
      Navigator.pop(context, true);
    } else if (pinController.text.substring(0, pinController.text.length - 1) !=
        "123123") {
      print('pin salah');
    }
  }

  deletePin() {
    if (pinController.text.isNotEmpty) {
      setState(() {
        pinController.text =
            pinController.text.substring(0, pinController.text.length - 1);
      });
    }
    print(pinController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          colorFont: whiteColor,
          title: 'Sha PIN',
          backgroundColor: backgroundColorDark),
      backgroundColor: backgroundColorDark,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 72,
            ),
            SizedBox(
              width: 200,
              child: TextFormField(
                obscureText: true,
                enabled: false,
                controller: pinController,
                obscuringCharacter: '*',
                style: whiteTextStyle.copyWith(
                    letterSpacing: 16, fontSize: 36, fontWeight: medium),
                cursorColor: greyColor,
                decoration: InputDecoration(
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: greyColor,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: greyColor),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 66,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 58),
              child: Wrap(
                spacing: 40,
                runSpacing: 40,
                children: [
                  InputButton(
                    number: '1',
                    onPressed: () {
                      addPin('1');
                    },
                  ),
                  InputButton(
                    number: '2',
                    onPressed: () {
                      addPin('2');
                    },
                  ),
                  InputButton(
                    number: '3',
                    onPressed: () {
                      addPin('3');
                    },
                  ),
                  InputButton(
                    number: '4',
                    onPressed: () {
                      addPin('4');
                    },
                  ),
                  InputButton(
                    number: '5',
                    onPressed: () {
                      addPin('5');
                    },
                  ),
                  InputButton(
                    number: '6',
                    onPressed: () {
                      addPin('6');
                    },
                  ),
                  InputButton(
                    number: '7',
                    onPressed: () {
                      addPin('7');
                    },
                  ),
                  InputButton(
                    number: '8',
                    onPressed: () {
                      addPin('8');
                    },
                  ),
                  InputButton(
                    number: '9',
                    onPressed: () {
                      addPin('9');
                    },
                  ),
                  const SizedBox(
                    width: 60,
                    height: 60,
                  ),
                  InputButton(
                    number: '0',
                    onPressed: () {
                      addPin('0');
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      deletePin();
                    },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: backgroundColorNumber),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back,
                          color: whiteColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
