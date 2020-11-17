import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/header_tab.dart';
import 'package:clone_mrt_app/screens/apply_post/apply_post_body.dart';
import 'package:clone_mrt_app/screens/broadcast/broadcast_body.dart';
import 'package:clone_mrt_app/screens/event/event_body.dart';
import 'package:clone_mrt_app/screens/breaking_news/breaking_news_body.dart';
import 'package:clone_mrt_app/screens/holiday_doctor/holiday_doctor_body.dart';
import 'package:clone_mrt_app/screens/live_camera/live_camera_body.dart';
import 'package:clone_mrt_app/screens/news/news_body.dart';
import 'package:clone_mrt_app/screens/overcome/overcome_body.dart';
import 'package:clone_mrt_app/screens/present/present_body.dart';
import 'package:clone_mrt_app/screens/radio/radio_body.dart';
import 'package:clone_mrt_app/screens/shop_introduction/shop_introduction.dart';
import 'package:clone_mrt_app/screens/tv/tv_body.dart';
import 'package:clone_mrt_app/screens/uchinoko/uchinoko_body.dart';
import 'package:clone_mrt_app/screens/usage/usage_body.dart';
import 'package:clone_mrt_app/screens/weather/weather_body.dart';
import 'package:flutter/material.dart';

class MyAppHome extends StatelessWidget {
  const MyAppHome();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      body: SafeArea(
        child: DefaultTabController(
          length: tabs.length,
          child: BuildAppBar(),
        ),
      ),
    );
  }
}

class BuildAppBar extends StatefulWidget {
  @override
  _BuildAppBar createState() => new _BuildAppBar();
}

class _BuildAppBar extends State<BuildAppBar>
    with SingleTickerProviderStateMixin {
  int currentIndex = 0;

// class BuildAppBar extends StatelessWidget {
//   const BuildAppBar({
//     Key key,
//   }) : super(key: key);

  TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Create TabController for getting the index of current tab
    _controller = TabController(length: tabs.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        currentIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            backgroundColor: kSecondaryColor,
            floating: true,
            pinned: false,
            expandedHeight: 30,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("DEMO APP"),
              centerTitle: true,
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {},
              ),
            ],
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: _TabBarDelegate(
              TabBar(
                controller: _controller,
                onTap: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                  print(currentIndex);
                  print(tabs[currentIndex].name);
                },
                // indicatorPadding: EdgeInsets.symmetric(vertical: 10),
                indicatorColor: kSecondaryColor,
                // indicator: ShapeDecoration(
                //   shape: RoundedRectangleBorder(
                //     side: BorderSide(
                //       color: Colors.yellow,
                //       width: 3,
                //     ),
                //     borderRadius: BorderRadius.all(
                //       Radius.circular(20),
                //     ),
                //   ),
                //   color: Colors.orange,
                // ),
                isScrollable: true,
                unselectedLabelColor: kUnselectedLabelColor,
                unselectedLabelStyle: TextStyle(),
                tabs: tabs
                    .map(
                      (_tab) => (_tab.name == tabs[currentIndex].name)
                          ? Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              margin: EdgeInsets.symmetric(vertical: 3),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 3,
                                  color: Colors.yellow,
                                ),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.orange,
                                    // blurRadius: 5.0,
                                  )
                                ],
                              ),
                              child: Tab(text: _tab.name),
                              // child: Tab(text: index.toString()),
                            )
                          : Container(
                              // padding: EdgeInsets.symmetric(horizontal: 10),
                              // margin: EdgeInsets.symmetric(vertical: 3),
                              child: Tab(text: _tab.name),
                              // child: Tab(text: index.toString()),
                            ),
                      // (_tab) => Tab(
                      //   text: _tab.name,
                      // ),
                    )
                    .toList(),
              ),
            ),
          ),
        ];
      },
      body: Body(controller: _controller),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
    this.controller,
  }) : super(key: key);
  final controller;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
      children: [
        NewsListView(),
        WeatherView(),
        BreakingNewsView(),
        PresentView(),
        ApplyPostView(),
        OvercomeView(),
        TVView(),
        RadioView(),
        ShopIntroductionView(),
        UchinokoListView(),
        BroadcastView(),
        EventListView(),
        HospitalListView(),
        LiveCameraListView(),
        UsageListView(),
      ],
    );
  }
}

class _TabBarDelegate extends SliverPersistentHeaderDelegate {
  const _TabBarDelegate(this.tabBar);

  final TabBar tabBar;

  @override
  double get minExtent => 38;

  @override
  double get maxExtent => 38;

  @override
  bool shouldRebuild(_TabBarDelegate oldDelegate) {
    return tabBar != oldDelegate.tabBar;
  }

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(color: kSecondaryColor, child: tabBar);
  }
}
