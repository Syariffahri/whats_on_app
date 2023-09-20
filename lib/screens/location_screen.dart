import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

import '../app/constants/app_color.dart';
import '../app/theme/text_theme.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen>
    with TickerProviderStateMixin {
  late Animation _animationFadeInOut;
  late Animation _animationFadeInOut2;
  late Animation _animationFadeInOut3;
  late AnimationController _animationController;
  late AnimationController _animationController2;
  late AnimationController _animationController3;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 900))
      ..forward();
    _animationController2 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1800))
      ..forward();
    _animationController3 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2700))
      ..forward();
    _animationFadeInOut = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.linear));
    _animationFadeInOut2 = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _animationController2, curve: Curves.linear));
    _animationFadeInOut3 = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: _animationController3, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/maps.png',
            width: Get.width,
            height: Get.height,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 60,
            left: 40,
            right: 40,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.greyBoldColor.withOpacity(0.3),
                    blurRadius: 8.0,
                    offset: const Offset(0.0, 2.0),
                  ),
                ],
              ),
              child: TextFormField(
                keyboardType: TextInputType.text,
                initialValue: '8010, Edgewater Park, New Jersey',
                style: AppTextTheme.textTheme.titleSmall,
              ),
            ),
          ),
          Center(
            child: RippleAnimation(
              color: CustomColors.primary.withOpacity(0.3),
              delay: const Duration(milliseconds: 300),
              duration: const Duration(milliseconds: 6 * 300),
              ripplesCount: 6,
              repeat: true,
              minRadius: 15,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: CustomColors.primary,
              ),
            ),
          ),
          Center(
            child: CircleAvatar(
              radius: 30,
              backgroundColor: CustomColors.primary.withOpacity(0.1),
            ),
          ),
          Positioned(
            bottom: 25,
            left: 25,
            child: SizedBox(
              width: Get.width - 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: CustomColors.greyBoldColor.withOpacity(0.2),
                          blurRadius: 8.0,
                          offset: const Offset(0.0, 2.0),
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        IconlyLight.filter,
                        color: CustomColors.textColor,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: CustomColors.greyBoldColor.withOpacity(0.2),
                          blurRadius: 8.0,
                          offset: const Offset(0.0, 2.0),
                        ),
                      ],
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.gps_fixed,
                        color: CustomColors.textColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          AnimatedBuilder(
            animation: _animationController,
            builder: (context, child) {
              return Positioned(
                top: 175,
                left: 123,
                child: Opacity(
                  opacity: _animationFadeInOut.value,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: CustomColors.greyBoldColor.withOpacity(0.2),
                          blurRadius: 8.0,
                          offset: const Offset(0.0, 2.0),
                        ),
                      ],
                    ),
                    child: const Text(
                      '🍕',
                      style: TextStyle(fontSize: 20), // buat icon aja
                    ),
                  ),
                ),
              );
            },
          ),
          AnimatedBuilder(
            animation: _animationController2,
            builder: (context, child) {
              return Positioned(
                bottom: 175,
                left: 93,
                child: Opacity(
                  opacity: _animationFadeInOut2.value,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: CustomColors.greyBoldColor.withOpacity(0.2),
                          blurRadius: 8.0,
                          offset: const Offset(0.0, 2.0),
                        ),
                      ],
                    ),
                    child: const Text(
                      '🎉',
                      style: TextStyle(fontSize: 20), // buat icon aja
                    ),
                  ),
                ),
              );
            },
          ),
          AnimatedBuilder(
            animation: _animationController3,
            builder: (context, child) {
              return Positioned(
                bottom: 160,
                right: 102,
                child: Opacity(
                  opacity: _animationFadeInOut3.value,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: CustomColors.greyBoldColor.withOpacity(0.2),
                          blurRadius: 8.0,
                          offset: const Offset(0.0, 2.0),
                        ),
                      ],
                    ),
                    child: const Text(
                      '🍕',
                      style: TextStyle(fontSize: 20), // buat icon aja
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    _animationController2.dispose();
    _animationController3.dispose();
    super.dispose();
  }
}
