import 'package:flutter/material.dart';

import '../../../contains/style.dart';

class SmallTitleCard2 extends StatelessWidget {
  const SmallTitleCard2({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 64,
      decoration: const BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.all(
          Radius.circular(kBorder),
        ),
      ),
      child: Row(
        children: [
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              color: kSecondaryColor,
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: kWhiteColor),
              ),
              Text(
                "$subtitle Applicants",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: kGreyColor),
              ),
            ],
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: kGreyColor),
                borderRadius: BorderRadius.all(Radius.circular(48))),
            child: const Icon(
              Icons.play_arrow,
              color: kBlueColor,
              size: 16,
            ),
          ),
        ],
      ),
    );
  }
}
