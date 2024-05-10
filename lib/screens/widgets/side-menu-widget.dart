import 'package:flutter/material.dart';

import 'drawer-list-tile-widget.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 80,
              // width: double.infinity,
              child: DrawerHeader(
                  child: Image.asset(
                'assets/images/Adstack-logo.png',
                height: 50,
                width: 50,
              )),
            ),
            const DrawerHeader(
                child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.amber,
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/avatar.jpg'),
                  // child:
                  //     Image(image: AssetImage('assets/images/avatar.jpg')),
                ),
                Text("Pooja Mishra"),
                Chip(
                  label: Text('Admin'),
                  shape: StadiumBorder(
                      side: BorderSide(width: 2, color: Colors.deepPurple)),
                )
              ],
            )),
            DrawerListTile(
              title: 'Home',
              icon: Icon(Icons.home_filled),
              onPress: () {},
            ),
            DrawerListTile(
              title: 'Employees',
              icon: Icon(Icons.groups_2_outlined),
              onPress: () {},
            ),
            DrawerListTile(
              title: 'Attendance',
              icon: Icon(Icons.checklist_rounded),
              onPress: () {},
            ),
            DrawerListTile(
              title: 'Summary',
              icon: Icon(Icons.calendar_month),
              onPress: () {},
            ),
            DrawerListTile(
              title: 'Information',
              icon: Icon(Icons.info_outline),
              onPress: () {},
            ),
            // Spacer(),
            DrawerListTile(
              title: 'Setting',
              icon: Icon(Icons.settings),
              onPress: () {},
            ),
            DrawerListTile(
                title: "Logout", icon: Icon(Icons.logout), onPress: () {})
          ],
        ),
      ),
    );
  }
}
