import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:whats_on_app/app/constants/app_color.dart';
import 'package:whats_on_app/app/theme/text_theme.dart';

class DetailScreen extends StatelessWidget {
  final dynamic data;
  const DetailScreen({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: kToolbarHeight + 250,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: Icon(
                    IconlyLight.arrow_left_2,
                    color: CustomColors.textColor,
                  ),
                  onPressed: () => Get.back(),
                ),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: data['imageTag'],
                child: Image.asset(
                  data['image'],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['title'],
                        style: AppTextTheme.textTheme.titleLarge,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            data['date'],
                          ),
                          data['price'] == ''
                              ? Text(
                                  'FREE',
                                  style: AppTextTheme.textTheme.bodyMedium!
                                      .copyWith(
                                    color: CustomColors.freeColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              : Text(
                                  data['price'],
                                  style: AppTextTheme.textTheme.bodyMedium!
                                      .copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                        ],
                      ),
                      const SizedBox(height: 7),
                      Text(
                        data['location'],
                        style: AppTextTheme.textTheme.titleSmall!
                            .copyWith(fontSize: 13),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit. Volutpat odio facilisis mauris sit amet massa. Commodo odio aenean sed adipiscing diam donec adipiscing tristique. Mi eget mauris pharetra et. Non tellus orci ac auctor augue. Elit at imperdiet dui accumsan sit. Ornare arcu dui vivamus arcu felis. Egestas integer eget aliquet nibh praesent. In hac habitasse platea dictumst quisque sagittis purus. Pulvinar elementum integer enim neque volutpat ac.',
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt eget nullam non. Quis hendrerit dolor magna eget est lorem ipsum dolor sit. Volutpat odio facilisis mauris sit amet massa. Commodo odio aenean sed adipiscing diam donec adipiscing tristique. Mi eget mauris pharetra et. Non tellus orci ac auctor augue. Elit at imperdiet dui accumsan sit. Ornare arcu dui vivamus arcu felis. Egestas integer eget aliquet nibh praesent. In hac habitasse platea dictumst quisque sagittis purus. Pulvinar elementum integer enim neque volutpat ac.',
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
