import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:whats_on_app/app/theme/text_theme.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          shrinkWrap: true,
          children: [
            Text(
              '23 Notification',
              style: AppTextTheme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 20),
            Text(
              'Today',
              style: AppTextTheme.textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: Get.height * 2.8,
              child: ListView.builder(
                itemCount: 23,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: ListTile(
                      tileColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      minLeadingWidth: 25,
                      leading: const Icon(
                        IconlyLight.discount,
                        size: 25,
                      ),
                      title: const Text('New Free Festival is Here!'),
                      subtitle: const Text('Lorem Ipsum dolor sit amet'),
                      trailing: const Text('12: 15'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
