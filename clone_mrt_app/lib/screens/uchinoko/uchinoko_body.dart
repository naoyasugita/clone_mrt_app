import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/uchinoko.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UchinokoListView extends StatelessWidget {
  const UchinokoListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            UchinokoHeader(),
            UchinokoList(),
          ],
        ),
      ),
    );
  }
}

class UchinokoHeader extends StatelessWidget {
  const UchinokoHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: uchinokoHeaderList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            _launchURL(uchinokoHeaderList[index].url);
          },
          child: Container(
            width: 300,
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
                  color: Colors.grey,
                  offset: Offset(0, 5.0),
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(kBorderRadius),
              ),
              child: Image.asset(
                uchinokoHeaderList[index].imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}

class UchinokoList extends StatelessWidget {
  const UchinokoList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: uchinokoList.length,
      padding: EdgeInsets.all(kDefaultPadding),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        return UchinokoView(index: index);
      },
    );
  }
}

class UchinokoView extends StatelessWidget {
  final index;
  const UchinokoView({
    Key key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchURL(uchinokoList[index].siteUrl);
      },
      child: Container(
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
        child: UchinokoArticle(index: index),
      ),
    );
  }
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

class UchinokoArticle extends StatelessWidget {
  const UchinokoArticle({
    Key key,
    @required this.index,
  }) : super(key: key);

  final index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // TODO: 画像の角を直接丸くするのをやめて、親ウィジェットをに合わせる
      children: [
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(kBorderRadius),
            ),
            child: Image.asset(
              uchinokoList[index].thumbnailPath,
              fit: BoxFit.cover,
              height: 100.0,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Text(
            uchinokoList[index].title,
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
            uchinokoList[index].content,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }
}
