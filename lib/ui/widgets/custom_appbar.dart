import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double height;
  final Color backgroundColor;
  final Color? colorFont;
  final bool automaticallyImplyLeading;

  const CustomAppBar({
    required this.title,
    this.automaticallyImplyLeading = false,
    this.height = 56,
    this.colorFont,
    required this.backgroundColor,
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor,
      elevation: 0,
      title: Text(
        title,
        style: blackTextStyle.copyWith(
            color: colorFont, fontSize: 20, fontWeight: semiBold),
      ),
      leading: automaticallyImplyLeading == true
          ? GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.chevron_left,
                size: 26,
                color: blackColor,
              ),
            )
          : const SizedBox(),
    );
  }
}
