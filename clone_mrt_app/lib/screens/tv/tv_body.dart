import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/tv.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TVView extends StatelessWidget {
  const TVView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            TVHeader(),
            TVProgramList(),
          ],
        ),
      ),
    );
  }
}

class TVProgramList extends StatelessWidget {
  const TVProgramList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // TODO: 一部のリストはWidgetで作成する
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: tvList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            _launchURL(tvList[index].url);
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
                tvList[index].imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
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

class TVHeader extends StatelessWidget {
  const TVHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(
        top: 10,
        right: 10,
        left: 10,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(
          Radius.circular(kBorderRadius),
        ),
        child: Image.asset(
          "assets/tv_top.png",
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
