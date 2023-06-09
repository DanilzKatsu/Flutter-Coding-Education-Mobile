import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../contains/style.dart';

class IconButtonNavBar extends StatelessWidget {
  const IconButtonNavBar({
    super.key,
    required this.icon,
    required this.press,
  });
  final String icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kDefaultSpacing * 7,
      height: kDefaultSpacing * 7,
      child: Stack(
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: press,
              child: SizedBox(
                  width: kDefaultSpacing * 7,
                  height: kDefaultSpacing * 7,
                  child: SvgPicture.asset(
                    icon,
                    height: kDefaultSpacing * 6,
                    colorFilter: const ColorFilter.mode(
                      kWhiteColor,
                      BlendMode.srcIn,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
