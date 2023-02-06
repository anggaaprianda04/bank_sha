import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/custom_appbar.dart';
import 'package:bank_sha/ui/widgets/custom_button_field.dart';
import 'package:bank_sha/ui/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';

class EditProfilPage extends StatefulWidget {
  const EditProfilPage({super.key});

  @override
  State<EditProfilPage> createState() => _EditProfilPageState();
}

class _EditProfilPageState extends State<EditProfilPage> {
  TextEditingController usernameController = TextEditingController(text: '');
  TextEditingController fullNameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          automaticallyImplyLeading: true,
          title: 'Edit Profil',
          backgroundColor: backgroundColorLight),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          const SizedBox(
            height: 40,
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
                  title: 'Username',
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFromField(
                  controller: passwordController,
                  title: 'Full Name',
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFromField(
                  controller: passwordController,
                  title: 'Email Address',
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFromField(
                  controller: passwordController,
                  title: 'Password',
                  obsecureText: true,
                  iconPassword: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButtonField(
                  title: 'Update Now',
                  onPressed: () {
                    Navigator.pushNamed(context, '/success-update');
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
