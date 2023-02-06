import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/custom_appbar.dart';
import 'package:bank_sha/ui/widgets/custom_form_field.dart';
import 'package:bank_sha/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    Widget buildRecentUsers() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent Users',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          )
        ],
      );
    }

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Transfer',
        backgroundColor: backgroundColorLight,
        automaticallyImplyLeading: true,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            'Search',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(
            height: 14,
          ),
          CustomTextFormFiled(
            hintText: 'By Username',
            filledColor: true,
            enableBorder: false,
            textEditingController: searchController,
          ),
          const SizedBox(
            height: 40,
          ),
          buildRecentUsers(),
        ],
      ),
    );
  }
}
