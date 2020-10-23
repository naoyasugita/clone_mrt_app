import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/event.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EventListView extends StatelessWidget {
  const EventListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: eventModelList.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(top: 10, right: 10, left: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kBorderRadius),
            color: eventModelList[index].category.getBackgroundColor(),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 5.0),
                blurRadius: 5.0,
              )
            ],
          ),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                CategoryHeader(index: index),
                EventContent(index: index),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CategoryHeader extends StatelessWidget {
  final index;

  const CategoryHeader({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(4),
          color: eventModelList[index].category.getBackgroundIconColor(),
          child: Icon(
            eventModelList[index].category.toIcon(),
            color: Colors.white,
          ),
          width: 40,
          height: 40,
        ),
        Text(
          eventModelList[index].category.toCategoryName(),
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class EventContent extends StatelessWidget {
  final index;

  const EventContent({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchURL(eventModelList[index].siteUrl);
      },
      child: Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
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
