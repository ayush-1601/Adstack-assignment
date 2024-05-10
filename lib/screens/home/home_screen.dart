import 'package:adstack_assignment_flutter/constants/constant.dart';
import 'package:adstack_assignment_flutter/screens/dashboard/dashboard_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/side-menu-widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryLightcolor,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: SideMenu()),
          Expanded(flex: 5, child: DashboardScreen())
        ],
      ),
    );
  }
}
