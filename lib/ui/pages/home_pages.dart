import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/service_item_menu.dart';
import 'package:bank_sha/ui/widgets/tips_friend_card.dart';
import 'package:bank_sha/ui/widgets/transaction_lates_item.dart';
import 'package:bank_sha/ui/widgets/user_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildProfile() {
      return Container(
        margin: EdgeInsets.only(top: 40, right: defaultMargin),
        width: double.infinity,
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy,',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'Shaynahan',
                  style: blackTextStyle.copyWith(
                      fontWeight: semiBold, fontSize: 20),
                ),
              ],
            ),
            const Spacer(),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/profile'),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('$img/img_user.png'),
                  ),
                ),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('$imgIcon/icon_check.png'))),
                  ),
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget cardWallet() {
      return Container(
        margin: EdgeInsets.only(top: 30, right: defaultMargin),
        width: double.infinity,
        padding: const EdgeInsets.all(30),
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage('$img/img_card_wallet.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Madelina Bond',
              style: whiteTextStyle.copyWith(fontWeight: medium, fontSize: 18),
            ),
            const SizedBox(
              height: 28,
            ),
            Text(
              '**** **** **** 1280',
              style: whiteTextStyle.copyWith(
                  letterSpacing: 6, fontSize: 18, fontWeight: medium),
            ),
            const SizedBox(
              height: 21,
            ),
            Text(
              'Balance',
              style: whiteTextStyle,
            ),
            Text(
              '\$5,209,400',
              style: whiteTextStyle.copyWith(fontSize: 24, fontWeight: bold),
            )
          ],
        ),
      );
    }

    Widget buildlevel() {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(22),
        margin: EdgeInsets.only(top: 20, right: defaultMargin),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Level 1',
                  style: blackTextStyle.copyWith(fontWeight: medium),
                ),
                const Spacer(),
                Text(
                  '55%',
                  style: greenTextStyle.copyWith(fontWeight: semiBold),
                ),
                const SizedBox(
                  width: 2,
                ),
                Text(
                  'of \$10M',
                  style: blackTextStyle.copyWith(fontWeight: semiBold),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            LinearProgressIndicator(
              value: 0.7,
              valueColor: AlwaysStoppedAnimation(greenColor),
              backgroundColor: backgroundColorLight,
            )
          ],
        ),
      );
    }

    Widget buildService() {
      return Container(
        margin: EdgeInsets.only(top: 30, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Do Something',
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ItemServiceMenu(
                  imgUrl: '$imgIcon/icon_topup.png',
                  title: 'Top Up',
                  onPressed: () {
                    Navigator.pushNamed(context, '/topup');
                  },
                ),
                ItemServiceMenu(
                  imgUrl: '$imgIcon/icon_send.png',
                  title: 'Send',
                  onPressed: () {
                    Navigator.pushNamed(context, '/transfer');
                  },
                ),
                ItemServiceMenu(
                  imgUrl: '$imgIcon/icon_withdraw.png',
                  title: 'Withdraw',
                  onPressed: () {},
                ),
                ItemServiceMenu(
                  imgUrl: '$imgIcon/icon_more.png',
                  title: 'More',
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget buildLatesTransaction() {
      return Container(
        margin: EdgeInsets.only(top: 30, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Latest Transactions',
              style:
                  blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 16),
            ),
            const SizedBox(
              height: 14,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(22),
              ),
              child: Column(
                children: [
                  TransactionLatesItem(
                    imgUrl: '$img/img_topup.png',
                    title: 'Top Up',
                    captions: 'Yesterday',
                    price: '+ 450.000',
                  ),
                  TransactionLatesItem(
                    imgUrl: '$img/img_cashback.png',
                    title: 'Cashback',
                    captions: 'Sep 11',
                    price: '+ 22.000',
                  ),
                  TransactionLatesItem(
                    imgUrl: '$img/img_withdraw.png',
                    title: 'Withdraw',
                    captions: 'Sep 2',
                    price: '- 5.000',
                  ),
                  TransactionLatesItem(
                    imgUrl: '$img/img_transfer.png',
                    title: 'Transfer',
                    captions: 'Aug 27',
                    price: '- 123.000',
                  ),
                  TransactionLatesItem(
                    imgUrl: '$img/img_electric.png',
                    title: 'Electric',
                    captions: 'Feb 18',
                    price: '- 123.000.000',
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget buildSendAgain() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Send Again',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            const SizedBox(
              height: 14,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  UserItem(
                    imgUrl: '$img/img_friend1.png',
                    title: '@yuanita',
                  ),
                  UserItem(
                    imgUrl: '$img/img_friend2.png',
                    title: '@jani',
                  ),
                  UserItem(
                    imgUrl: '$img/img_friend3.png',
                    title: '@urip',
                  ),
                  UserItem(
                    imgUrl: '$img/img_friend4.png',
                    title: '@masa',
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget buildFriendTips() {
      return Container(
        margin: const EdgeInsets.only(top: 30, bottom: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Friendly Tips',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            const SizedBox(
              height: 14,
            ),
            Wrap(
              spacing: 17,
              runSpacing: 18,
              children: [
                TipsFriendCard(
                  imgUrl: '$img/img_tips1.png',
                  title: 'Best tips for using a credit card',
                  url: 'https://www.google.com',
                ),
                TipsFriendCard(
                  imgUrl: '$img/img_tips2.png',
                  title: 'Spot the good pie of finance model',
                  url: 'https://www.google.com',
                ),
                TipsFriendCard(
                  imgUrl: '$img/img_tips3.png',
                  title: 'Great hack to get better advices',
                  url: 'https://www.google.com',
                ),
                TipsFriendCard(
                  imgUrl: '$img/img_tips4.png',
                  title: 'Save more penny buy this instead',
                  url: 'https://www.google.com',
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: defaultMargin),
        children: [
          buildProfile(),
          cardWallet(),
          buildlevel(),
          buildService(),
          buildLatesTransaction(),
          buildSendAgain(),
          buildFriendTips(),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        onPressed: () {},
        child: Image.asset(
          '$imgIcon/icon_plus_circle.png',
          width: 24,
          height: 24,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: blueColor,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedItemColor: blackColor,
            selectedLabelStyle:
                blueTextStyle.copyWith(fontWeight: medium, fontSize: 10),
            unselectedLabelStyle: blackTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 10,
            ),
            backgroundColor: whiteColor,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 6, top: 13),
                    child: Image.asset(
                      '$imgIcon/icon_overview.png',
                      width: 20,
                      height: 20,
                      color: blueColor,
                    ),
                  ),
                  label: 'Overview'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 6, top: 13),
                    child: Image.asset(
                      '$imgIcon/icon_history.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                  label: 'History'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 6, top: 13),
                    child: Image.asset(
                      '$imgIcon/icon_static.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                  label: 'Statistic'),
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 6, top: 13),
                    child: Image.asset(
                      '$imgIcon/icon_rewards.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                  label: 'Rewards'),
            ]),
      ),
    );
  }
}
