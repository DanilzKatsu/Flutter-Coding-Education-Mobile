import 'package:flutter/material.dart';

import '../../../contains/style.dart';

class LineWithDots extends StatelessWidget {
  const LineWithDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
