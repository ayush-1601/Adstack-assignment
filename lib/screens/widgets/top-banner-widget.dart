import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class TopBannerImageWidget extends StatelessWidget {
  const TopBannerImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height / 3,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage('assets/images/banner.jpeg'),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "ETHEREUM 2.0",
            style: TextStyle(
                color: primaryDarkcolor,
                fontWeight: FontWeight.bold,
                fontSize: 12),
          ),
          Text("Top Rating\nProject",
              style: TextStyle(
                  color: primaryDarkcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 26)),
          Text("Trending project and high rating\nProect created by team.",
              style: TextStyle(
                color: Colors.white,
              )),
          InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: primaryDarkcolor,
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  "Learn more",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ))
        ],
      ),
    );
  }
}
