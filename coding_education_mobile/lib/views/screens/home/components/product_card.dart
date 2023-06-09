import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../contains/style.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.icon,
    required this.name,
    required this.lessons,
    required this.price,
  });

  final String icon;
  final String name;
  final String lessons;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/curly.svg",
          width: 10,
          height: 36,
        ),
        const SizedBox(width: kDefaultSpacing),
        SvgPicture.asset(
          icon,
          width: 22,
          height: 22,
        ),
        const SizedBox(width: kDefaultSpacing),
        SvgPicture.asset(
          "assets/icons/curly2.svg",
          width: 10,
          height: 36,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: '$name\n',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(color: kWhiteColor),
                        children: <TextSpan>[
                          TextSpan(
                            text: '$lessons lessons',
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(color: kGreyColor),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "\$$price",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(color: kWhiteColor),
                    )
                  ],
                ),
                const SizedBox(height: kDefaultSpacing * 2),
                SizedBox(
                  height: kDefaultSpacing,
                  child: Stack(
                    children: [
                      Container(
                        height: kDefaultSpacing,
                        width: kDefaultSpacing,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: kGreyColor,
                        ),
                      ),
                      Positioned(
                        child: Center(
                          child: Container(
                            height: kDefaultSpacing / 4,
                            decoration: const BoxDecoration(
                              color: kGreyColor,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                          height: kDefaultSpacing,
                          width: kDefaultSpacing,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: kGreyColor,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
