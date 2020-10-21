import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/event.dart';
import 'package:clone_mrt_app/models/header_tab.dart';
import 'package:clone_mrt_app/screens/live_camera/live_camera_body.dart';
import 'package:clone_mrt_app/screens/news/news_body.dart';
import 'package:clone_mrt_app/screens/uchinoko/uchinoko_body.dart';
import 'package:clone_mrt_app/screens/usage/usage_body.dart';
import 'package:clone_mrt_app/screens/weather/weather_body.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyAppHome extends StatelessWidget {
  const MyAppHome();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        NewsListView(),
        WeatherView(),
        myContainer("a"),
        myContainer("a"),
        myContainer("a"),
        myContainer("a"),
        myContainer("a"),
        myContainer("a"),
        myContainer("a"),
        UchinokoListView(),
        myContainer("a"),
        ListView.builder(
          itemCount: eventModelList.length,
          // padding: EdgeInsets.all(kDefaultPadding),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            // return GestureDetector(
            //   onTap: () {
            //     _launchURL(eventModelList[index].siteUrl);
            //   },
            // child:
            return Container(
              margin: EdgeInsets.only(top: 10, right: 10, left: 10),
              // alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                color: Colors.red,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 5.0),
                    blurRadius: 5.0,
                  )
                ],
              ),
              child: Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Icon(Icons.music_note),
                          width: 40,
                          height: 40,
                        ),
                        Text(
                          "音楽",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        _launchURL(eventModelList[index].siteUrl);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin:
                            EdgeInsets.only(bottom: 10, right: 10, left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadius),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 3.0),
                              blurRadius: 5.0,
                            )
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            eventModelList[index].title,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // ),
            );
          },
        ),
        myContainer("a"),
        LiveCameraListView(),
        UsageListView(),
      ],
    );
  }

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
      );
    } else {
      throw 'Could not launch $url';
    }
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
