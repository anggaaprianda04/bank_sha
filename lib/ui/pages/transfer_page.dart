import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/custom_appbar.dart';
import 'package:bank_sha/ui/widgets/custom_button_field.dart';
import 'package:bank_sha/ui/widgets/custom_text_form_field.dart';
import 'package:bank_sha/ui/widgets/transfer_recent_user_item.dart';
import 'package:bank_sha/ui/widgets/transfer_result_user_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      appBar: CustomAppBar(
        title: 'Transfer',
        backgroundColor: backgroundColorLight,
        automaticallyImplyLeading: true,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 50),
        child: CustomButtonField(
          title: 'Continue',
          onPressed: () {
            Navigator.pushNamed(context, '/transfer-amount');
          },
        ),
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
          // buildRecentUsers(),
          buildRecentResult(),
        ],
      ),
    );
  }

  Widget buildRecentResult() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Result',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Wrap(
          spacing: 17,
          runSpacing: 17,
          children: [
            TransferResultUserItem(
              name: 'Yonna Jie',
              username: 'yoenna',
              imgUrl: '$img/img_friend1.png',
              isVerified: true,
            ),
            TransferResultUserItem(
              name: 'Yonna Jo',
              username: 'yoennajo',
              imgUrl: '$img/img_friend2.png',
              isSelected: true,
            ),
          ],
        )
      ],
    );
  }

  Widget buildRecentUsers() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent Users',
          style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
        const SizedBox(
          height: 14,
        ),
        TransferRecentUserItem(
          name: 'Yonna Jie',
          username: 'yoenna',
          imgUrl: '$img/img_friend1.png',
          isVerified: true,
        ),
        TransferRecentUserItem(
          name: 'John Hi',
          username: 'johnhi',
          imgUrl: '$img/img_friend2.png',
        ),
        TransferRecentUserItem(
          name: 'Masayosi',
          username: 'masayosi',
          imgUrl: '$img/img_friend3.png',
        ),
      ],
    );
  }
}
