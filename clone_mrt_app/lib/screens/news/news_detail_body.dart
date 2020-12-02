import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/news.dart';
import 'package:flutter/material.dart';

class NewsDetailView extends StatelessWidget {
  final index;

  const NewsDetailView({
    Key key,
    @required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text('MRTニュース'),
        backgroundColor: kSecondaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(kDefaultPadding),
                    child: Text(
                      newsList[index].title,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.green[600],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      newsList[index].timestamp,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Image.asset(
                    newsList[index].newsImagePath,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      newsList[index].content,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: EdgeInsets.all(20),
                      width: 70,
                      height: 50,
                      color: Colors.blue,
                      child: Image.asset(
                        "assets/twitter_logo.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              copytight,
              style: TextStyle(
                fontSize: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
