import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/radio.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RadioView extends StatelessWidget {
  const RadioView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [RadioHeaderView(), RadioProgramListView()],
        ),
      ),
    );
  }
}

class RadioProgramListView extends StatelessWidget {
  const RadioProgramListView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: radioProgramList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            _launchURL(radioProgramList[index].url);
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
                    radioProgramList[index].imagePath,
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Text(
                            radioProgramList[index].title,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Text(
                          radioProgramList[index].startDate,
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          radioProgramList[index].personality,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
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

class RadioHeaderView extends StatelessWidget {
  const RadioHeaderView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // TODO: 一部のリストはWidgetで作成する
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: radioHeaderList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            _launchURL(radioHeaderList[index].url);
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
                radioHeaderList[index].imagePath,
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
