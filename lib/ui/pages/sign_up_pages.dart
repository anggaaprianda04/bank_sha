import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/custom_button_field.dart';
import 'package:bank_sha/ui/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController(text: '');
    TextEditingController emailController = TextEditingController(text: '');
    TextEditingController passwordController = TextEditingController(text: '');

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          const SizedBox(
            height: 100,
          ),
          Container(
            width: 155,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('$imgIcon/icon_logo_dark.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          Text(
            'Join Us to Unlock\nYour Growth',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomFromField(
                  controller: nameController,
                  title: 'Full Name',
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFromField(
                  controller: emailController,
                  title: 'Email Address',
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFromField(
                  obsecureText: true,
                  controller: passwordController,
                  title: 'Password',
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButtonField(
                  title: 'Continue',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up-picture');
                  },
                )
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.center,
            child: CustomTextButton(
              title: 'Sign In',
              onPressed: () {
                Navigator.pushNamed(context, '/sign-in');
              },
            ),
          ),
        ],
      ),
    );
  }
}
