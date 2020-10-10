import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DEMO APP',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MyAppHome(),
    );
  }
}

const _tabs = [
  'ニュース',
  '天気',
  '速報履歴',
  'プレゼント',
  '応募・投稿',
  '乗り越えよう',
  'テレビ',
  'ラジオ',
  'お店紹介',
  'うちのこ',
  'ネット配信',
  'イベント',
  '休日当番医',
  'ライブカメラ',
  '使い方',
];

class MyAppHome extends StatelessWidget {
  const MyAppHome();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: _tabs.length,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: Colors.lightGreenAccent[700],
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
                      labelColor: Colors.white,
                      isScrollable: true,
                      unselectedLabelColor: Colors.black54,
                      tabs:
                          _tabs.map((String name) => Tab(text: name)).toList(),
                    ),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: _tabs.map((String name) {
                return SafeArea(
                  child: ListView.builder(
                    key: PageStorageKey(name),
                    itemCount: 30,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('Item $index'),
                      );
                    },
                  ),
                );
              }).toList(),
            ),
          ),
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
    return Container(color: Colors.lightGreenAccent[700], child: tabBar);
  }

  @override
  bool shouldRebuild(_TabBarDelegate oldDelegate) {
    return tabBar != oldDelegate.tabBar;
  }
}
