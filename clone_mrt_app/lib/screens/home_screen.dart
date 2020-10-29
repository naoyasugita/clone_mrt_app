import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/header_tab.dart';
import 'package:clone_mrt_app/models/presetnt.dart';
import 'package:clone_mrt_app/screens/broadcast/broadcast_body.dart';
import 'package:clone_mrt_app/screens/event/event_body.dart';
import 'package:clone_mrt_app/screens/breaking_news/breaking_news_body.dart';
import 'package:clone_mrt_app/screens/holiday_doctor/holiday_doctor_body.dart';
import 'package:clone_mrt_app/screens/live_camera/live_camera_body.dart';
import 'package:clone_mrt_app/screens/news/news_body.dart';
import 'package:clone_mrt_app/screens/shop_introduction/shop_introduction.dart';
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
        BreakingNewsView(),
        Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                PresentHeader(),
                CampaignView(),
                CocokaraView(),
                PresentViewList(),
              ],
            ),
          ),
        ),
        myContainer("a"),
        myContainer("a"),
        myContainer("a"),
        myContainer("a"),
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

class CocokaraView extends StatelessWidget {
  final url = "https://app.mrt.jp/contents/cocokara/cocokara.html";
  const CocokaraView({
    Key key,
  }) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchURL(url);
      },
      child: Container(
        padding: EdgeInsets.all(30),
        // height: 160,
        margin: EdgeInsets.only(
          top: 10,
          right: 10,
          left: 10,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.purple[400],
                Colors.red,
              ],
              stops: [
                0.3,
                1
              ]),
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
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Text(
                "MRT  PROGRAM  MAGAZINE",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                "COCOKARA",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Center(
                child: Text(
                  "読んで答えよう！",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CampaignView extends StatelessWidget {
  const CampaignView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("ok");
      },
      child: Container(
        height: 100,
        margin: EdgeInsets.only(
          top: 10,
          right: 10,
          left: 10,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.purple[400],
                Colors.red,
              ],
              stops: [
                0.3,
                1
              ]),
          borderRadius: BorderRadius.circular(kBorderRadius),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 5.0),
              blurRadius: 5.0,
            )
          ],
        ),
        child: textWithStroke(
          text: "MRT視聴ポイントキャンペーン",
          fontSize: 26,
        ),
        // child: Image.asset(
        //   "assets/dummy_broadcast.png",
        //   fit: BoxFit.cover,
        // ),
      ),
    );
  }

  Widget textWithStroke(
      {String text,
      double fontSize: 12,
      double strokeWidth: 5,
      Color textColor: Colors.red,
      Color strokeColor: Colors.white}) {
    return Stack(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = strokeWidth
              ..color = strokeColor,
          ),
        ),
        Text(text, style: TextStyle(fontSize: fontSize, color: textColor)),
      ],
    );
  }
}

class PresentViewList extends StatelessWidget {
  const PresentViewList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: presentModelList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
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
              child: Row(
                children: [
                  Image.asset(
                    presentModelList[index].thumbnailImagePath,
                    width: 130,
                    // fit: BoxFit.fitWidth,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Text(
                            presentModelList[index].content.name,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Text(
                          presentModelList[index].formTitle,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          presentModelList[index]
                              .content
                              .winner
                              .toListMessage(),
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class PresentHeader extends StatelessWidget {
  const PresentHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        right: 10,
        left: 10,
      ),
      padding: EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        gradient: LinearGradient(colors: [
          Colors.pink[400],
          Colors.pink[200],
        ], stops: [
          0.3,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.cake,
              color: Colors.white,
              size: 40,
            ),
          ),
          Text(
            "ふるってご応募ください！",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
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
