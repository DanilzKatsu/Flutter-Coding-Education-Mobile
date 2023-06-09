import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../contains/style.dart';

class BigTitle extends StatelessWidget {
  const BigTitle({
    super.key,
    required this.title,
    this.press,
  });

  final String title;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            text: title,
            style: Theme.of(context).textTheme.displayLarge,
            children: <TextSpan>[
              TextSpan(
                text: '()',
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(color: kGreenColor),
              ),
            ],
          ),
        ),
        if (press != null)
          SvgPicture.asset(
            "assets/icons/search-normal.svg",
            height: 28,
            width: 28,
          ),
        if (press == null)
          const SizedBox(
            height: 28,
            width: 28,
          )
      ],
    );
  }
}
