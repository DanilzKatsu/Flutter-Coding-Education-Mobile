import 'package:flutter/material.dart';

import '../../components/icon_button_nav_bar.dart';
import '../../contains/style.dart';
import '../../components/big_title.dart';
import 'components/big_title_card.dart';
import 'components/label_see_all.dart';
import 'components/product_card.dart';
import 'components/small_title_card.dart';

var list = [
  {
    'icon': 'assets/icons/angular.svg',
    'name': 'Angular Basics',
    'lessons': '12',
    'price': '2,350',
  },
  {
    'icon': 'assets/icons/java.svg',
    'name': 'Fun With Java',
    'lessons': '20',
    'price': '2,350',
  },
  {
    'icon': 'assets/icons/Javascript.svg',
    'name': 'Understanding Javascript',
    'lessons': '10',
    'price': '1,350',
  },
  {
    'icon': 'assets/icons/reactts.svg',
    'name': 'ReactJS For Beginner',
    'lessons': '22',
    'price': '2,300',
  },
  {
    'icon': 'assets/icons/mtsql.svg',
    'name': 'Working With mySQL',
    'lessons': '34',
    'price': '1,550',
  },
];
var list2 = [
  {
    'image': 'assets/images/pic1.png',
    'title': 'Data Analytics Course',
    'subtitle': '220',
  },
  {
    'image': 'assets/images/pic1.png',
    'title': 'Data Analytics Course',
    'subtitle': '220',
  },
  {
    'image': 'assets/images/pic1.png',
    'title': 'Data Analytics Course',
    'subtitle': '220',
  },
  {
    'image': 'assets/images/pic1.png',
    'title': 'Data Analytics Course',
    'subtitle': '220',
  },
  {
    'image': 'assets/images/pic1.png',
    'title': 'Data Analytics Course',
    'subtitle': '220',
  },
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kDefaultSpacing * 5,
                vertical: kDefaultSpacing * 7,
              ),
              child: BigTitle(
                title: "Discover",
                press: () {},
              ),
            ),
            const BigTitleCard(),
            const SizedBox(height: kDefaultSpacing * 6),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultSpacing * 5),
              child: LabelSeeAll(
                title1: "//watchlist",
                title2: "See all >",
              ),
            ),
            const SizedBox(height: kDefaultSpacing * 3),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kDefaultSpacing * 5),
                  child: Column(
                    children: List.generate(
                      list.length,
                      (index) => Padding(
                        padding:
                            const EdgeInsets.only(bottom: kDefaultSpacing * 3),
                        child: ProductCard(
                          icon: list[index]['icon']!,
                          name: list[index]['name']!,
                          lessons: list[index]['lessons']!,
                          price: list[index]['price']!,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: kDefaultSpacing * 7),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultSpacing * 5),
              child: LabelSeeAll(
                title1: "//trending courses",
                title2: "See all >",
              ),
            ),
            const SizedBox(height: kDefaultSpacing * 3),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  list2.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(
                      right: index == list2.length - 1
                          ? kDefaultSpacing * 5
                          : kDefaultSpacing * 3,
                      left: index == 0 ? kDefaultSpacing * 5 : 0,
                    ),
                    child: SmallTitleCard(
                      image: list2[index]['image']!,
                      title: list2[index]['title']!,
                      subtitle: list2[index]['subtitle']!,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: kDefaultSpacing * 4),
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultSpacing * 8,
                  vertical: kDefaultSpacing * 4),
              color: kSecondaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButtonNavBar(
                    icon: "assets/icons/home.svg",
                    press: () {},
                  ),
                  IconButtonNavBar(
                    icon: "assets/icons/folder.svg",
                    press: () {},
                  ),
                  IconButtonNavBar(
                    icon: "assets/icons/bookmark.svg",
                    press: () {},
                  ),
                  IconButtonNavBar(
                    icon: "assets/icons/diagram.svg",
                    press: () {},
                  ),
                  IconButtonNavBar(
                    icon: "assets/icons/user.svg",
                    press: () {},
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
