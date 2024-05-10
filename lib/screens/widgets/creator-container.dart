import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class CreatorContainer extends StatelessWidget {
  const CreatorContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: secondarycolor, borderRadius: BorderRadius.circular(20)),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(right: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(color: secondarycolor.withOpacity(0.1)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Top Creators",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Artworks',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Rating',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
          CreatorsCardWidget(),
          CreatorsCardWidget(),
          CreatorsCardWidget(),
          CreatorsCardWidget()
        ],
      ),
    );
  }
}

class CreatorsCardWidget extends StatelessWidget {
  const CreatorsCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            child: Row(
              children: [
                CircleAvatar(
                  radius: 14,
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "@maddison_c21",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
          ),
          Text(
            "9821",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          Icon(
            Icons.line_axis_rounded,
            color: purplecolor,
          )
        ],
      ),
    );
  }
}
