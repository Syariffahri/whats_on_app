import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whats_on_app/app/constants/app_color.dart';
import 'package:whats_on_app/app/theme/text_theme.dart';
import '../routes/router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(milliseconds: 1200),
      () => Get.offAllNamed(AppRoutes.bottomNavBar),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'WhatsON',
          style: AppTextTheme.textTheme.titleLarge!.copyWith(
            color: CustomColors.primary,
          ),
        ),
      ),
    );
  }
}
