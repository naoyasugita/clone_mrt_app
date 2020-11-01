import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/breaking_news.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BreakingNewsDetailView extends StatelessWidget {
  final index;

  const BreakingNewsDetailView({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        breakingNewsList[index].datetime.getMonthDay() +
                            breakingNewsList[index].datetime.getHourMinutes(),
                      ),
                    ),
                  ),
                  _isUrl(context, index),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _isUrl(context, index) {
    String url = breakingNewsList[index].url;
    if (url != "") {
      return GestureDetector(
        onTap: () {
          _launchURL(url);
        },
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            margin: EdgeInsets.symmetric(
              vertical: 10,
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0, 1.0),
                  blurRadius: 5.0,
                )
              ],
            ),
            child: Text(
              "詳細はこちら",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ),
      );
    }
    return SizedBox();
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
