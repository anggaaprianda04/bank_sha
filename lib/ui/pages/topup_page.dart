import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/bank_selected.dart';
import 'package:bank_sha/ui/widgets/custom_appbar.dart';
import 'package:bank_sha/ui/widgets/custom_button_field.dart';
import 'package:flutter/material.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget sectionCardWallet() {
      return Container(
        margin: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wallet',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  width: 80,
                  height: 50,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage('$img/img_cardwallet_small.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '8008 2208 1996',
                      style: blackTextStyle.copyWith(
                          fontWeight: medium, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Angga Risky',
                      style: greyTextStyle.copyWith(fontSize: 12),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget sectionSelectedBank() {
      return Container(
        margin: const EdgeInsets.only(top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selected Bank',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            const SizedBox(
              height: 14,
            ),
            BankSelected(
              imgBank: '$img/img_bank_bca.png',
              titleBank: 'BANK BCA',
              selectedBank: true,
            ),
            BankSelected(
              imgBank: '$img/img_bank_bni.png',
              titleBank: 'BANK BNI',
            ),
            BankSelected(
              imgBank: '$img/img_bank_mandiri.png',
              titleBank: 'BANK Mandiri',
            ),
            BankSelected(
              imgBank: '$img/img_bank_ocbc.png',
              titleBank: 'BANK OCBC',
            ),
            const SizedBox(
              height: 12,
            ),
            CustomButtonField(
              title: 'Continue',
              onPressed: () {
                Navigator.pushNamed(context, '/topup-amount');
              },
            ),
            const SizedBox(
              height: 57,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: true,
        title: 'Top Up',
        backgroundColor: backgroundColorLight,
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          sectionCardWallet(),
          sectionSelectedBank(),
        ],
      ),
    );
  }
}
