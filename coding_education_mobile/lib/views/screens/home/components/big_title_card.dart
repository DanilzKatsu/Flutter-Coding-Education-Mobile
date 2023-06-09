import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../contains/style.dart';

class BigTitleCard extends StatelessWidget {
  const BigTitleCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: kDefaultSpacing * 5),
      padding: const EdgeInsets.only(
        left: kDefaultSpacing * 5,
        top: kDefaultSpacing * 4,
        bottom: kDefaultSpacing * 4,
      ),
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(kBorder),
        ),
        color: kSecondaryColor,
      ),
      child: Stack(
        children: [
          RichText(
            text: TextSpan(
              text: 'Basics of Python with. ',
              style: Theme.of(context).textTheme.headlineSmall,
              children: <TextSpan>[
                TextSpan(
                  text: 'Data Structures\n',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: kGreenColor),
                ),
                TextSpan(
                  text: '\n',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 8),
                ),
                TextSpan(
                  text:
                      'This is the course to pick if you\nare just getting into coding.',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: kGreyColor),
                ),
              ],
            ),
          ),
          Positioned(
            right: kDefaultSpacing * 10,
            top: 0,
            bottom: 0,
            child: SvgPicture.asset(
              "assets/icons/curly.svg",
              width: 20,
              height: 72,
            ),
          ),
          Positioned(
            right: -kDefaultSpacing * 6,
            top: 0,
            bottom: 0,
            child: SvgPicture.asset(
              "assets/icons/python.svg",
              width: 46,
              height: 44,
            ),
          ),
        ],
      ),
    );
  }
}
