import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/custom_button_field.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  List<String> title = [
    'Grow Your\nFinancial Today',
    'Build From\nZero to Freedom',
    'Start Together',
  ];

  List<String> subTitle = [
    'Our system is helping you to\nachieve a better goal',
    'We provide tips for you so that\nyou can adapt easier',
    'We will guide you to where\nyou wanted it too',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 83,
              ),
              CarouselSlider(
                items: [
                  Image.asset(
                    '$img/img_onboarding1.png',
                    height: 331,
                  ),
                  Image.asset(
                    '$img/img_onboarding2.png',
                    height: 331,
                  ),
                  Image.asset(
                    '$img/img_onboarding3.png',
                    height: 331,
                  ),
                ],
                options: CarouselOptions(
                    height: 331,
                    viewportFraction: 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    enableInfiniteScroll: false),
                carouselController: carouselController,
              ),
              const SizedBox(
                height: 80,
              ),
              Container(
                width: double.infinity,
                height: 294,
                padding: EdgeInsets.symmetric(
                    horizontal: 22, vertical: defaultMargin),
                margin: EdgeInsets.only(
                  left: defaultMargin,
                  right: defaultMargin,
                  bottom: defaultMargin,
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text(
                      title[currentIndex],
                      style: blackTextStyle.copyWith(
                          fontSize: 20, fontWeight: semiBold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 26,
                    ),
                    Text(
                      subTitle[currentIndex],
                      style: greyTextStyle.copyWith(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                    currentIndex == 2
                        ? const SizedBox(
                            height: 36,
                          )
                        : const SizedBox(
                            height: 50,
                          ),
                    currentIndex == 2
                        ? Column(
                            children: [
                              CustomButtonField(
                                title: 'Get Started',
                                onPressed: () {
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, '/sign-up', (route) => false);
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomTextButton(
                                title: 'Sign In',
                                onPressed: () {
                                  Navigator.pushNamedAndRemoveUntil(
                                      context, '/sign-in', (route) => false);
                                },
                              ),
                            ],
                          )
                        : Row(
                            children: [
                              Container(
                                height: 12,
                                width: 12,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color:
                                      currentIndex == 0 ? blueColor : greyColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                height: 12,
                                width: 12,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color:
                                      currentIndex == 1 ? blueColor : greyColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                height: 12,
                                width: 12,
                                margin: const EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color:
                                      currentIndex == 2 ? blueColor : greyColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const Spacer(),
                              CustomButtonField(
                                title: 'Continue',
                                width: 150,
                                onPressed: () {
                                  carouselController.nextPage();
                                },
                              ),
                            ],
                          )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
