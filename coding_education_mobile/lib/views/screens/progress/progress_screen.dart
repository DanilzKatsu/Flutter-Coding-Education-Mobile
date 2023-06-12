import 'package:coding_education_mobile/views/screens/home/components/small_title_card.dart';
import 'package:coding_education_mobile/views/screens/progress/components/chart/bar_graph.dart';
import 'package:coding_education_mobile/views/screens/progress/components/label_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/big_title.dart';
import '../../contains/style.dart';
import '../details/components/line_dots.dart';
import '../home/components/label_see_all.dart';

import '../home/home_screen.dart';
import 'components/drop_down_menu.dart';
import 'components/small_title_card2.dart';

class ProgressScreen extends StatefulWidget {
  const ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  List<double> weeklySummary = [
    4.40,
    2.50,
    42.42,
    10.50,
    100.20,
    88.99,
    90.10,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8.0,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultSpacing * 5,
              vertical: kDefaultSpacing * 7,
            ),
            child: BigTitle(
              title: "Progress",
              press: () {},
            ),
          ),
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const TittleCard()),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: LineWithDots(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Material(
              color: kDefaultIconDarkColor,
              child: LabelProgress(
                title1: "//total watched",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "5h 30min",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: kWhiteColor),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              height: 180,
              child: Material(
                  color: kDefaultIconDarkColor,
                  child: MyBarChart(
                    weeklySummary: weeklySummary,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                const SizedBox(
                  width: 26,
                ),
                Text(
                  "Mon",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: kGreyColor),
                ),
                const SizedBox(
                  width: 25,
                ),
                Text(
                  "Tue",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: kGreyColor),
                ),
                const SizedBox(
                  width: 25,
                ),
                Text(
                  "Wed",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: kGreyColor),
                ),
                const SizedBox(
                  width: 22,
                ),
                Text(
                  "Thur",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: kGreyColor),
                ),
                const SizedBox(
                  width: 25,
                ),
                Text(
                  "Fri",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: kGreyColor),
                ),
                const SizedBox(
                  width: 28,
                ),
                Text(
                  "Sat",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: kGreyColor),
                ),
                const SizedBox(
                  width: 28,
                ),
                Text(
                  "Sun",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: kGreyColor),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: LineWithDots(),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                BoxContent(
                  content: "Course",
                  value: 16,
                ),
                BoxContent(
                  content: "Completed",
                  value: 4,
                ),
                BoxContent(
                  content: "Ongoing",
                  value: 1,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: LineWithDots(),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "//ongoing course",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: kGreyColor),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: SmallTitleCard2(
                image: "assets/images/pic3.png",
                title: "Competitive Programming",
                subtitle: "Part 3 of 6 completed"),
          ),
          Spacer(),
          BottomBar(),
        ]),
      ),
    );
  }
}

class BoxContent extends StatelessWidget {
  final String content;
  final int value;
  const BoxContent({
    super.key,
    required this.content,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108,
      height: 69,
      padding: const EdgeInsets.only(top: 9, bottom: 8),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: kGreyColor.withOpacity(0.2)),
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text(
          content,
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: kGreyColor),
        ),
        Text(
          value.toString(),
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(color: kWhiteColor),
        ),
      ]),
    );
  }
}

class TittleCard extends StatelessWidget {
  const TittleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: kGreyColor),
          borderRadius: BorderRadius.circular(8),
          color: kSecondaryColor),
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Learning Point",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: kWhiteColor),
          ),
          const Spacer(),
          Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: kSecondaryColor),
            child: SvgPicture.asset(
              "assets/icons/chess-king.svg",
              width: 10,
              height: 36,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            "689",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: kWhiteColor),
          )
        ],
      ),
    );
  }
}
