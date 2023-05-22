import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class TransferResultUserItem extends StatelessWidget {
  final String name, username, imgUrl;
  final bool isVerified, isSelected;
  const TransferResultUserItem(
      {required this.name,
      required this.username,
      required this.imgUrl,
      this.isVerified = false,
      this.isSelected = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 175,
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 22),
      decoration: BoxDecoration(
        color: whiteColor,
        border: Border.all(
          color: isSelected ? blueColor : whiteColor,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imgUrl),
              ),
            ),
            child: isVerified
                ? Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 22,
                      height: 22,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('$imgIcon/icon_check.png'))),
                    ),
                  )
                : null,
          ),
          const SizedBox(
            height: 13,
          ),
          Text(
            name,
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            '@$username',
            style: greyTextStyle.copyWith(fontSize: 12),
          )
        ],
      ),
    );
  }
}
