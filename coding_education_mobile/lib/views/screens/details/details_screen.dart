import 'package:carousel_slider/carousel_slider.dart';
import 'package:coding_education_mobile/views/screens/details/components/product_card2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/big_title.dart';
import '../../components/icon_button_nav_bar.dart';
import '../../contains/style.dart';
import 'components/expanded_text.dart';
import 'components/line_dots.dart';

var list_image = [
  "assets/images/pic5.png",
  "assets/images/pic6.png",
  "assets/images/pic7.png",
];

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: kDefaultSpacing * 5,
                    vertical: kDefaultSpacing * 7,
                  ),
                  child: BigTitle(
                    title: "Details",
                    press: null,
                  ),
                ),
                CarouselSlider.builder(
                    options: CarouselOptions(
                        onPageChanged: (index, reason) {},
                        height: 200,
                        autoPlay: false,
                        viewportFraction: 0.8,
                        autoPlayInterval: const Duration(seconds: 2),
                        enlargeCenterPage: false),
                    itemCount: list_image.length,
                    itemBuilder: (context, index, realIndex) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(kBorder),
                            ),
                            image: DecorationImage(
                              image: AssetImage(list_image[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    }),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Data Science & Machine Learning",
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(color: kWhiteColor),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const LineWithDots(),
                      const SizedBox(
                        height: 8,
                      ),
                      const ProductCard2(
                          image: "assets/images/pic4.png",
                          name: "Anima Agrawal",
                          role: "Coach % Mentor"),
                      const SizedBox(
                        height: 8,
                      ),
                      const LineWithDots(),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "//description",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: kGreyColor),
                      ),
                      ExpandableText(
                        text:
                            "Learn how to source, manipulate and visualise data using Python and its libraries. Build and refine your Machine Learning skills with the...Learn how to source, manipulate and visualise data using Python and its libraries. Build and refine your Machine Learning skills with the...Learn how to source, manipulate and visualise data using Python and its libraries.Learn how to source, manipulate and visualise data using Python and its libraries.Learn how to source, manipulate and visualise data using Python and its libraries.",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: kGreyColor),
                        maxLines: 3,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const LineWithDots(),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            "Lessons",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(color: kWhiteColor),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Text(
                            "Reviews",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(color: kGreyColor),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  height: 140,
                  child: SingleChildScrollView(
                    child: Column(
                      children: List.generate(
                        8,
                        (index) {
                          if (index == 0) {
                            return const Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: EpisodeItem(),
                            );
                          }
                          return const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: EpisodeItem2(),
                          );
                          ;
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 8,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  MyButton(
                    color: kWhiteColor,
                    colorText: kDefaultIconDarkColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  MyButton(
                    color: kBlueColor,
                    colorText: kWhiteColor,
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.color,
    required this.colorText,
  });
  final Color color;
  final Color colorText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 166,
      height: 46,
      padding: const EdgeInsets.only(
        top: 11,
        bottom: 11,
      ),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(4)), color: color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            ".Bookmark()",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: colorText),
          ),
        ],
      ),
    );
  }
}

class EpisodeItem extends StatelessWidget {
  const EpisodeItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: kGreyColor),
          borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: kSecondaryColor),
            child: const Icon(
              Icons.play_arrow,
              color: kBlueColor,
              size: 16,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "Introduction to Programming",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: kWhiteColor),
          ),
          const Spacer(),
          Text(
            "02:10",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: kGreyColor),
          )
        ],
      ),
    );
  }
}

class EpisodeItem2 extends StatelessWidget {
  const EpisodeItem2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: kGreyColor.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: kGreyColor.withOpacity(0.3)),
            child: Icon(
              Icons.play_arrow,
              color: kGreyColor.withOpacity(0.3),
              size: 16,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "Introduction to Programming",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: kGreyColor.withOpacity(0.3)),
          ),
          const Spacer(),
          SvgPicture.asset(
            "assets/icons/lock.svg",
            width: 24,
            height: 24,
            color: kGreyColor.withOpacity(0.3),
          ),
        ],
      ),
    );
  }
}

