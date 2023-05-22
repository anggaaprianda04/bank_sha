import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/pages/edit_pin_page.dart';
import 'package:bank_sha/ui/pages/edit_profile_page.dart';
import 'package:bank_sha/ui/pages/home_pages.dart';
import 'package:bank_sha/ui/pages/onboarding_pages.dart';
import 'package:bank_sha/ui/pages/pin_page.dart';
import 'package:bank_sha/ui/pages/profile_pages.dart';
import 'package:bank_sha/ui/pages/sign_in_pages.dart';
import 'package:bank_sha/ui/pages/sign_up_pages.dart';
import 'package:bank_sha/ui/pages/sign_up_success_pages.dart';
import 'package:bank_sha/ui/pages/sign_up_upload_idcard_pages.dart';
import 'package:bank_sha/ui/pages/sign_up_upload_picture_pages.dart';
import 'package:bank_sha/ui/pages/splash_pages.dart';
import 'package:bank_sha/ui/pages/success_update_data_page.dart';
import 'package:bank_sha/ui/pages/topup_amount_page.dart';
import 'package:bank_sha/ui/pages/topup_page.dart';
import 'package:bank_sha/ui/pages/topup_success_page.dart';
import 'package:bank_sha/ui/pages/transfer_amount_page.dart';
import 'package:bank_sha/ui/pages/transfer_page.dart';
import 'package:bank_sha/ui/pages/transfer_success_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColorLight,
      ),
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/sign-up-picture': (context) => const SignUpUploadPicture(),
        '/sign-up-idcard': (context) => const SignUpUploadIdCard(),
        '/sign-up-success': (context) => const SignUpSuccess(),
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/pin': (context) => const PinPage(),
        '/edit-profile': (context) => const EditProfilPage(),
        '/edit-pin': (context) => const EditPinPage(),
        '/success-update': (context) => const SuccessUpdateDataPage(),
        '/topup': (context) => const TopUpPage(),
        '/topup-amount': (context) => const TopUpAmountPage(),
        '/topup-success': (context) => const TopupSuccessPage(),
        '/transfer': (context) => const TransferPage(),
        '/transfer-amount': (context) => const TransferAmountPage(),
        '/transfer-success': (context) => const TransferSuccessPage(),
      },
    );
  }
}
