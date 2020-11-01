import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/breaking_news.dart';
import 'package:flutter/material.dart';

class BreakingNewsView extends StatelessWidget {
  const BreakingNewsView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ListView.builder(
      itemCount: breakingNewsList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return Scaffold(
                  appBar: AppBar(
                    title: Text(breakingNewsList[index].categpry.toString()),
                    backgroundColor: kSecondaryColor,
                  ),
                  body: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 10),
                                child: Text(
                                  breakingNewsList[index].title,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                breakingNewsList[index].content,
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  child: Text(
                                    breakingNewsList[index]
                                            .datetime
                                            .getMonthDay() +
                                        breakingNewsList[index]
                                            .datetime
                                            .getHourMinutes(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    breakingNewsList[index].datetime.getMonthDay(),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        breakingNewsList[index].datetime.getHourMinutes(),
                      ),
                    ),
                    Container(
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
                      child: BreakingNewsContents(index: index, size: size),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      // ),
    );
  }
}

class BreakingNewsContents extends StatelessWidget {
  const BreakingNewsContents({
    Key key,
    @required this.index,
    this.size,
  }) : super(key: key);

  final index;
  final size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: size.width - 60,
      child: Row(
        children: [
          Icon(
            breakingNewsList[index].categpry.toIcon(),
            size: 50,
          ),
          // TODO: 横幅を調整できるようにする
          // https://itome.team/blog/2019/12/flutter-advent-calendar-day9/
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    breakingNewsList[index].title,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    breakingNewsList[index].content,
                    maxLines: 3,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
