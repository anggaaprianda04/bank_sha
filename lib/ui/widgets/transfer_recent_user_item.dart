import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class TransferRecentUserItem extends StatelessWidget {
  final String name, username, imgUrl;
  final bool isVerified;
  const TransferRecentUserItem(
      {required this.name,
      required this.username,
      required this.imgUrl,
      this.isVerified = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 18),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(image: AssetImage(imgUrl))),
          ),
          const SizedBox(
            width: 14,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                '@$username',
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                ),
              )
            ],
          ),
          const Spacer(),
          if (isVerified == true)
            Row(
              children: [
                Icon(
                  Icons.check_circle,
                  size: 12,
                  color: greenColor,
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'Verified',
                  style:
                      greenTextStyle.copyWith(fontSize: 11, fontWeight: medium),
                )
              ],
            ),
        ],
      ),
    );
  }
}
