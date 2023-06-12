

import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  String? title;
  String? regNo;
  double? rating;
  num? rides;
  MyTitle({super.key, this.title, this.regNo, this.rating, this.rides});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title!,
              style: Theme.of(context).primaryTextTheme.bodyLarge!.copyWith(
                    color: Color(0xFF323232),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.star,
              color: Color(0xFF4B48C9),
              size: 15,
            ),
            SizedBox(
              width: 5.66,
            ),
            Text(
              rating.toString(),
              style: Theme.of(context).primaryTextTheme.bodyLarge!.copyWith(
                    color: Color(0xFF4B48C9),
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(
              width: 3,
            ),
            Text(
              '($rides rides)',
              style: Theme.of(context).primaryTextTheme.bodyLarge!.copyWith(
                    color: Color(0xFF6E6E6E),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          children: [
            Text(
              regNo!,
              style: Theme.of(context).primaryTextTheme.bodyLarge!.copyWith(
                    color: Color(0xFF7C7C7C),
                    fontSize: 14,
                  ),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.verified,
              color: Color(0xFF00BC8E),
              size: 17,
            ),
          ],
        ),
      ],
    );
  }
}
