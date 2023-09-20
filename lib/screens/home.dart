import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whats_on_app/data/list_categories.dart';
import 'package:whats_on_app/data/list_events.dart';
import 'package:whats_on_app/screens/detail_screens.dart';
import 'package:whats_on_app/screens/widgets/categories.dart';
import 'package:whats_on_app/screens/widgets/event_container.dart';
import 'package:whats_on_app/screens/widgets/header.dart';

import '../app/theme/text_theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(bottom: 20),
          children: [
            const HeaderWidget(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Categories',
                style: AppTextTheme.textTheme.bodyLarge,
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 120,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                physics: const BouncingScrollPhysics(),
                children: listCategories
                    .map(
                      (e) => categories(
                        textIcon: e['textIcon'],
                        title: e['title'],
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Upcoming events nearby',
                style: AppTextTheme.textTheme.bodyLarge,
              ),
            ),
            const SizedBox(height: 10),
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: events
                  .map(
                    (e) => eventContainer(
                      image: e['image'],
                      title: e['title'],
                      date: e['date'],
                      location: e['location'],
                      price: e['price'],
                      imageTag: e['imageTag'],
                      onTap: () {
                        Get.to(
                          DetailScreen(data: e),
                          transition: Transition.native,
                        );
                      },
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
