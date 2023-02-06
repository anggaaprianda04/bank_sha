import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class ItemServiceMenu extends StatelessWidget {
  final String imgUrl;
  final String title;
  final VoidCallback? onPressed;
  const ItemServiceMenu(
      {required this.imgUrl,
      required this.title,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            width: 70,
            padding: const EdgeInsets.all(22),
            height: 70,
            decoration: BoxDecoration(
                color: whiteColor, borderRadius: BorderRadius.circular(20)),
            child: Image.asset(imgUrl, width: 26),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(fontWeight: medium),
          )
        ],
      ),
    );
  }
}
