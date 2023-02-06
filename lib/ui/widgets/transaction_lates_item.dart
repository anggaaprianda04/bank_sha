import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class TransactionLatesItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String captions;
  final String price;
  const TransactionLatesItem(
      {required this.imgUrl,
      required this.title,
      required this.captions,
      required this.price,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 18),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imgUrl),
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                captions,
                style: greyTextStyle.copyWith(fontSize: 12),
              )
            ],
          ),
          const Spacer(),
          Text(
            price,
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          )
        ],
      ),
    );
  }
}
