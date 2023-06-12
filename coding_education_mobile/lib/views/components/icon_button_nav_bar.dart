import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../contains/style.dart';

class IconButtonNavBar extends StatelessWidget {
  const IconButtonNavBar({
    super.key,
    required this.icon,
    required this.press,
    required this.color, required this.neonColor,
  });
  final String icon;
  final VoidCallback press;
  final Color color;
  final Color neonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kDefaultSpacing * 7,
      height: kDefaultSpacing * 7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: neonColor.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
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
                    colorFilter: ColorFilter.mode(
                      color,
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
