import 'package:coding_education_mobile/views/screens/progress/components/drop_down_menu.dart';
import 'package:flutter/material.dart';

import '../../../contains/style.dart';

class LabelProgress extends StatelessWidget {
  const LabelProgress({
    super.key,
    required this.title1,
  });

  final String title1;

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
        MyDropdownButton()
      ],
    );
  }
}
