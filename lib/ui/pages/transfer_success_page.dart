import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/custom_button_field.dart';
import 'package:flutter/material.dart';

class TransferSuccessPage extends StatelessWidget {
  const TransferSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Berhasil Transfer',
              textAlign: TextAlign.center,
              style:
                  blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              'Use the money wisely and\ngrow your finance',
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(fontSize: 16),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButtonField(
              width: 190,
              title: 'Back to Home',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
            )
          ],
        ),
      ),
    );
  }
}
