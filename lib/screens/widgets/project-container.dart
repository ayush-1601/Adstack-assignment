import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class ProjectContainer extends StatelessWidget {
  const ProjectContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      padding: EdgeInsets.all(20),
      // height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: secondarycolor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "All Projects",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          ProjectCardWidget(),
          ProjectCardWidget(),
          ProjectCardWidget(),
        ],
      ),
    );
  }
}


class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: secondarycolor.withOpacity(0.1),
      child: Container(
        height: MediaQuery.of(context).size.height / 15,
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(3),
              margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: purplecolor),
              child: Image.asset('assets/images/avatar1.png'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Technology behind the blockchain",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                Text(
                  "Project details",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                )
              ],
            ),
            Spacer(),
            Icon(
              Icons.edit,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
