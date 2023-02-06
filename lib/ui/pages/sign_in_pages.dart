import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/custom_button_field.dart';
import 'package:bank_sha/ui/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController(text: '');
    TextEditingController passwordController = TextEditingController(text: '');

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          Container(
            margin: EdgeInsets.only(top: 100, bottom: 100),
            width: 155,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('$imgIcon/icon_logo_dark.png'),
              ),
            ),
          ),
          Text(
            'Sign In &\nGrow Your Finance',
            style: blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                  height: 8,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Forgot Password',
                    style: blueTextStyle.copyWith(),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButtonField(
                  title: 'Sign In',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
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
                  title: 'Create New Account',
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up');
                  }))
        ],
      ),
    );
  }
}
