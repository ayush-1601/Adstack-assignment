
import 'package:flutter/material.dart';

import '../../constants/constant.dart';
import 'calendar-widget.dart';
import 'wishes-card-widget.dart';

class RightSideMenu extends StatelessWidget {
  const RightSideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(10),
        color: secondarycolor,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'General 10:00 AM to 7:00 PM',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            Calender(),
            WishingCards(
              wishCardTitle: "Today Birthday",
              wishingButtonName: "Birthday Wishing",
            ),
            WishingCards(
              wishCardTitle: "Today Birthday",
              wishingButtonName: "Birthday Wishing",
            )
          ],
        ),
      ),
    );
  }
}
