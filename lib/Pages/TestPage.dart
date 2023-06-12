// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:l3a2kart/Widgets/ImageSlider.dart';
import 'package:l3a2kart/Widgets/MyListTile.dart';
import 'package:l3a2kart/Widgets/MyOutlineButton.dart';
import 'package:l3a2kart/Widgets/MyTitle.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TestPage extends StatelessWidget {
  TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Add your back button logic here
          },
        ),
        title: Text('Honda Activa 110cc'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 21, left: 31),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const MyImageSlider(),
                  const SizedBox(
                    height: 25,
                  ),
                  MyTitle(
                    rating: 4.3,
                    rides: 44,
                    title: 'Honda Activa 110cc',
                    regNo: 'MH 12 KP 3431',
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  MyOutlineButton(
                    icon: Icons.remove_red_eye,
                    title: 'Vehicle Preview',
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    children: [
                      CupertinoSwitch(
                        value: true,
                        onChanged: (value) {},
                        thumbColor: Color(0xff00BC8E),
                        activeColor: Color(0xffD9D9D9),
                      ),
                      const SizedBox(
                        width: 14,
                      ),
                      Text(
                        'Accepting Rides',
                        style: Theme.of(context)
                            .primaryTextTheme
                            .bodyLarge!
                            .copyWith(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                ],
              ),
            ),
            const Divider(
              height: 1,
              thickness: 1,
              color: Color(0xffC4C4C4),
            ),
            Padding(
              padding: EdgeInsets.only(left: 18, right: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 17,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'SETTINGS',
                        style: Theme.of(context)
                            .primaryTextTheme
                            .bodyLarge!
                            .copyWith(
                              color: Color(0xFF7C7C7C),
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      MyListTile(
                        onTap: () {},
                        title: 'Pricing',
                        icon: Icons.currency_rupee,
                      ),
                      MyListTile(
                        onTap: () {},
                        title: 'Pickup location',
                        icon: Icons.location_on_outlined,
                      ),
                      MyListTile(
                          onTap: () {},
                          title: 'Vehicle Description',
                          icon: Icons.notes),
                      MyListTile(
                        onTap: () {},
                        title: 'Set availability',
                        icon: Icons.date_range,
                      ),
                      MyListTile(
                        onTap: () {},
                        title: 'Notes for pickup',
                        icon: Icons.sticky_note_2_outlined,
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 62, bottom: 94),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Remove this vehicle',
                          style: Theme.of(context)
                              .primaryTextTheme
                              .bodyLarge!
                              .copyWith(
                                color: Color(0xFFBB0821),
                                fontSize: 15.51,
                                wordSpacing: 0.5,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}
