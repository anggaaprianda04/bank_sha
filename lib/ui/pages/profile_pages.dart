import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        automaticallyImplyLeading: true,
        backgroundColor: backgroundColorLight,
        title: 'My Profile',
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            margin: EdgeInsets.only(
                top: 30, left: defaultMargin, right: defaultMargin),
            padding: const EdgeInsets.only(left: 30, right: 30, top: 22),
            width: double.infinity,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('$img/img_user.png'),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: EdgeInsets.only(top: 6),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('$imgIcon/icon_check.png'))),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Shayna Hanna',
                  style: blackTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 18),
                ),
                const SizedBox(
                  height: 40,
                ),
                ItemMenuProfile(
                  imgIcon: '$imgIcon/icon_user.png',
                  title: 'Edit Profile',
                  onPressed: () async {
                    if (await Navigator.pushNamed(context, '/pin') == true) {
                      Navigator.pushNamed(context, '/edit-profile');
                    }
                  },
                ),
                ItemMenuProfile(
                  imgIcon: '$imgIcon/icon_pin.png',
                  title: 'My PIN',
                  onPressed: () async {
                    if (await Navigator.pushNamed(context, '/pin') == true) {
                      Navigator.pushNamed(context, '/edit-pin');
                    }
                  },
                ),
                ItemMenuProfile(
                  imgIcon: '$imgIcon/icon_credit_wallet.png',
                  title: 'Wallet Settings',
                  onPressed: () {},
                ),
                ItemMenuProfile(
                  inBadge: true,
                  imgIcon: '$imgIcon/icon_my_rewards.png',
                  title: 'My Rewards',
                  onPressed: () {},
                ),
                ItemMenuProfile(
                  imgIcon: '$imgIcon/icon_help.png',
                  title: 'Help Center',
                  onPressed: () {},
                ),
                ItemMenuProfile(
                  imgIcon: '$imgIcon/icon_logout.png',
                  title: 'Logout',
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 87,
          ),
          Center(
            child: Text(
              'Report a Problem',
              style: greyTextStyle.copyWith(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemMenuProfile extends StatelessWidget {
  final String imgIcon;
  final String title;
  final bool inBadge;
  final Function() onPressed;
  const ItemMenuProfile({
    required this.imgIcon,
    required this.title,
    this.inBadge = false,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.only(bottom: 30),
        child: Row(
          children: [
            Container(
              width: 24,
              height: 24,
              margin: const EdgeInsets.only(right: 18),
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imgIcon))),
            ),
            Expanded(
              child: Text(
                title,
                style: blackTextStyle.copyWith(fontWeight: semiBold),
              ),
            ),
            inBadge == true
                ? Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: blueColor,
                    ),
                    child: Center(
                      child: Text(
                        '2',
                        style: whiteTextStyle.copyWith(fontWeight: medium),
                      ),
                    ),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
