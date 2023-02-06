import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class BankSelected extends StatelessWidget {
  final String imgBank;
  final String titleBank;
  final bool selectedBank;

  const BankSelected({
    this.selectedBank = false,
    required this.imgBank,
    required this.titleBank,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(22),
      margin: const EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(
            color: selectedBank == true ? blueColor : whiteColor, width: 2),
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imgBank,
            height: 30,
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                titleBank,
                style:
                    blackTextStyle.copyWith(fontWeight: medium, fontSize: 16),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                '50 mins',
                style: greyTextStyle.copyWith(fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
