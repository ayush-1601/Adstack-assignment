import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import '../widgets/chart-container.dart';
import '../widgets/creator-container.dart';
import '../widgets/header-widget.dart';
import '../widgets/project-container.dart';
import '../widgets/right-side-widget.dart';
import '../widgets/top-banner-widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      primary: false,
      padding: EdgeInsets.all(8),
      child: Column(
        children: [
          Header(),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TopBannerImageWidget(),
                    Row(
                      children: [
                        Expanded(flex: 1, child: ProjectContainer()),
                        Expanded(flex: 1, child: CreatorContainer())
                      ],
                    ),
                    ChartContainer()
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: RightSideMenu(),
              )
            ],
          )
        ],
      ),
    );
  }
}
