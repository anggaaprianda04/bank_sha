import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/custom_appbar.dart';
import 'package:bank_sha/ui/widgets/custom_button_field.dart';
import 'package:bank_sha/ui/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';

class EditPinPage extends StatelessWidget {
  const EditPinPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController oldPinController = TextEditingController(text: '');
    TextEditingController newPinController = TextEditingController(text: '');

    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: true,
        title: 'Edit Pin',
        backgroundColor: backgroundColorLight,
      ),
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
                  controller: oldPinController,
                  title: 'Old PIN',
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFromField(
                  controller: newPinController,
                  title: 'New PIN',
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
