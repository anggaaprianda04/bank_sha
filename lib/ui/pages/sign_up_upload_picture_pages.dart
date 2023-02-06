import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/custom_button_field.dart';
import 'package:bank_sha/ui/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';

class SignUpUploadPicture extends StatelessWidget {
  const SignUpUploadPicture({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController pingController = TextEditingController(text: '');

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.symmetric(vertical: 100),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('$imgIcon/icon_logo_dark.png'))),
          ),
          Text(
            'Join Us to Unlock\nYour Growth',
            style: blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xffF1F1F9),
                  ),
                  child: Center(
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('$imgIcon/icon_upload_img.png'))),
                    ),
                  ),
                ),
                Text(
                  'Shayna Hanna',
                  style:
                      blackTextStyle.copyWith(fontSize: 18, fontWeight: medium),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFromField(
                  controller: pingController,
                  title: 'Set PIN (6 digit number)',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButtonField(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-idcard');
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
