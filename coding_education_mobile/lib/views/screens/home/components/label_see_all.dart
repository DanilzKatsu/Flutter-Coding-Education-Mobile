import 'package:flutter/material.dart';

import '../../../contains/style.dart';

class LabelSeeAll extends StatelessWidget {
  const LabelSeeAll({
    super.key,
    required this.title1,
    required this.title2,
  });

  final String title1;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title1,
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: kGreyColor),
        ),
        Text(
          title2,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: kBlueColor),
        ),
      ],
    );
  }
}
