import 'package:adstack_assignment_flutter/constants/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'search-field-widget.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 4,
          child: SizedBox(
            child: Row(
              children: [
                Text(
                  'Home',
                  style: TextStyle(fontSize: 24, color: secondarycolor),
                ),
                Spacer(
                  flex: 2,
                ),
                Expanded(child: SearchField()),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(CupertinoIcons.app_badge_fill),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(CupertinoIcons.bell),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(CupertinoIcons.power),
                ),
                // SizedBox(
                //   width: MediaQuery.of(context).size.width / 10,
                // ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
