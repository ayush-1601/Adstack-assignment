import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class WishingButton extends StatelessWidget {
  final String wishingButtonName;
  const WishingButton({
    super.key,
    required this.wishingButtonName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: purplecolor, borderRadius: BorderRadius.circular(10)),
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.send,
              size: 15,
              color: Colors.white,
            ),
            Text(
              wishingButtonName,
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
