import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/news.dart';
import 'package:flutter/material.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: newsList.length,
      padding: EdgeInsets.all(kDefaultPadding),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) {
        return NewsView(index: index);
      },
    );
  }
}

class NewsView extends StatelessWidget {
  final index;
  const NewsView({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
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
      child: NewsArticle(index: index),
    );
  }
}

class NewsArticle extends StatelessWidget {
  const NewsArticle({
    Key key,
    @required this.index,
  }) : super(key: key);

  final index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(kBorderRadius),
          ),
          child: Image.asset(
            newsList[index].newsImagePath,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Text(
            newsList[index].title,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            newsList[index].content,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Text(
              newsList[index].timestamp,
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
