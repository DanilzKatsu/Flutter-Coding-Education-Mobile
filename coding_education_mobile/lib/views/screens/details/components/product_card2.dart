import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../contains/style.dart';

class ProductCard2 extends StatelessWidget {
  const ProductCard2({
    super.key,
    required this.image,
    required this.name,
    required this.role,
  });

  final String image;
  final String name;
  final String role;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(48),
          child: Image.asset(
            image,
            width: 48,
            height: 48,
          ),
        ),
        const SizedBox(width: kDefaultSpacing + 8),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            text: role,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(color: kGreyColor),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Follow",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: kBlueColor),
                    )
                  ],
                ),
                const SizedBox(height: kDefaultSpacing * 2),
                const SizedBox(height: kDefaultSpacing * 2),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
