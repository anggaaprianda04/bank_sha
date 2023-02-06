import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class UserItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  const UserItem({required this.title, required this.imgUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 120,
      margin: const EdgeInsets.only(right: 17),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(imgUrl),
                ),
              ),
            ),
            const SizedBox(
              height: 13,
            ),
            Text(
              title,
              style: blackTextStyle.copyWith(fontWeight: medium, fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
