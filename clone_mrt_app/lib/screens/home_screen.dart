import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/header_tab.dart';
import 'package:clone_mrt_app/screens/apply_post/apply_post_body.dart';
import 'package:clone_mrt_app/screens/broadcast/broadcast_body.dart';
import 'package:clone_mrt_app/screens/coupon/coupon_body.dart';
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

class BuildAppBar extends StatelessWidget {
  const BuildAppBar({
    Key key,
  }) : super(key: key);

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
              title: const Text("DEMO APP"),
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
                // TODO indicatorのDecoration(アニメーション)設定
                indicatorColor: kSecondaryColor,
                isScrollable: true,
                unselectedLabelColor: kUnselectedLabelColor,
                tabs: tabs.map((_tab) => Tab(text: _tab.name)).toList(),
              ),
            ),
          ),
        ];
      },
      body: Body(),
    );
  }
}

Container myContainer(String text) {
  return Container(
    alignment: Alignment.center,
    width: 100,
    height: 100,
    child: Text(text),
  );
}

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    print("ok");
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 10,
                      right: 10,
                      left: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[400],
                          offset: Offset(0, 3.0),
                          blurRadius: 1.0,
                        )
                      ],
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                color: Colors.cyan[800],
                                child: Image.asset(
                                  "assets/dummy_image.png",
                                  width: 60,
                                  height: 60,
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width - 80,
                                height: 60,
                                color: Colors.cyan[500],
                                child: Center(
                                  child: Text(
                                    "ドラマグッズプレゼントキャンペーン!!",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                "assets/dummy_image.png",
                                width: MediaQuery.of(context).size.width,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 5,
                                ),
                                child: Text(
                                  "今期ドラマ番組オリジナルグッズを\n合計で30名様にプレゼント!!",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.cyan[600],
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                color: Colors.pinkAccent[400],
                                child: Center(
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "応募期間  ",
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "11/30",
                                          style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "(月)",
                                          style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "〜12/13",
                                          style: TextStyle(
                                            fontSize: 30,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "(日)",
                                          style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("ok");
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 10,
                      right: 10,
                      left: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[400],
                          offset: Offset(0, 3.0),
                          blurRadius: 1.0,
                        )
                      ],
                    ),
                    child: Container(
                      color: Colors.cyan[500],
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/dummy_image.png",
                            width: 130,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 150,
                            // padding: EdgeInsets.all(30),
                            child: Center(
                              child: Text(
                                "今期ドラマの感想の投稿と\nプレゼント応募はこちらから",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 10,
                    right: 10,
                    left: 10,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 2,
                  ),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius),
                    gradient: LinearGradient(colors: [
                      Colors.cyan[600],
                      Colors.cyan[400],
                    ], stops: [
                      0,
                      1
                    ]),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0, 5.0),
                        blurRadius: 5.0,
                      )
                    ],
                  ),
                  child: Text(
                    "今期ドラマの感想",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        NewsListView(),
        WeatherView(),
        BreakingNewsView(),
        PresentView(),
        ApplyPostView(),
        CouponView(),
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
  double get minExtent => tabBar.preferredSize.height;

  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(color: kSecondaryColor, child: tabBar);
  }

  @override
  bool shouldRebuild(_TabBarDelegate oldDelegate) {
    return tabBar != oldDelegate.tabBar;
  }
}
