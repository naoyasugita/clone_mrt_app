import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/event.dart';
import 'package:clone_mrt_app/models/header_tab.dart';
import 'package:clone_mrt_app/models/holiday_doctor.dart';
import 'package:clone_mrt_app/screens/event/event_body.dart';
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
        EventListView(),
        ExpandableItemExample(),
        LiveCameraListView(),
        UsageListView(),
      ],
    );
  }
}

class ExpandableItemExample extends StatelessWidget {
  final List<HospitalInfoModelList> _hospitalList = hospitalList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => Container(
        margin: EdgeInsets.only(
          right: 5,
          bottom: 5,
          left: 5,
        ),
        decoration: BoxDecoration(
          color: Colors.purple[100],
          borderRadius: BorderRadius.circular(kBorderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 5.0),
              blurRadius: 5.0,
            )
          ],
        ),
        child: HospitalInfoView(hospitalList: _hospitalList, index: index),
      ),
      itemCount: _hospitalList.length,
    );
  }
}

class HospitalInfoView extends StatelessWidget {
  final index;

  const HospitalInfoView({
    Key key,
    this.index,
    @required List<HospitalInfoModelList> hospitalList,
  })  : _hospitalList = hospitalList,
        super(key: key);

  final List<HospitalInfoModelList> _hospitalList;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      backgroundColor: Colors.purple[100],
      title: Text(_hospitalList[index].hospitalType.toJapanese()),
      leading: Icon(Icons.add_box),
      children: buildList(index).toList(),
    );
  }

  List<Container> buildList(int index) {
    return List.generate(
      _hospitalList[index].hospitalList.length,
      (_index) => Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(
          right: 10,
          bottom: 10,
          left: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(kBorderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 5.0),
              blurRadius: 5.0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(_hospitalList[index].hospitalList[_index].datetime +
                _hospitalList[index].hospitalList[_index].cityName),
            Text(
              _hospitalList[index].hospitalList[_index].hospitalName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
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
