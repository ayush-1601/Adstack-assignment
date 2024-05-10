import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/constant.dart';
import 'wishing-button-widget.dart';

class WishingCards extends StatelessWidget {
  final String wishCardTitle;
  final String wishingButtonName;
  const WishingCards(
      {super.key,
      required this.wishCardTitle,
      required this.wishingButtonName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 5),
      // height: 600,
      width: double.infinity,
      decoration: BoxDecoration(
          color: primaryDarkcolor, borderRadius: BorderRadius.circular(18)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  CupertinoIcons.sparkles,
                  color: Colors.amber,
                  size: 25,
                ),
                Text(
                  wishCardTitle,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const Icon(
                  CupertinoIcons.sparkles,
                  color: Colors.amber,
                  size: 25,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GridView.count(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 12, right: 12),
            crossAxisSpacing: 10,
            // mainAxisSpacing: 8,
            primary: true,
            crossAxisCount: 3,
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar1.png'),
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar2.png'),
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar2.png'),
              ),
              Center(
                  child: Text(
                'Total',
                style: TextStyle(color: Colors.purple),
              )),
              Center(
                  child: Text(
                '3',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ))
            ],
          ),
          WishingButton(
            wishingButtonName: wishingButtonName,
          )
        ],
      ),
    );
  }
}
