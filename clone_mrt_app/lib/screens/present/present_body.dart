import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/presetnt.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PresentView extends StatelessWidget {
  const PresentView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            PresentHeader(),
            CampaignView(),
            CocokaraView(),
            PresentViewList(),
          ],
        ),
      ),
    );
  }
}

class CocokaraView extends StatelessWidget {
  final url = "https://app.mrt.jp/contents/cocokara/cocokara.html";
  const CocokaraView({
    Key key,
  }) : super(key: key);

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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchURL(url);
      },
      child: Container(
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.only(
          top: 10,
          right: 10,
          left: 10,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.purple[400],
                Colors.red,
              ],
              stops: [
                0.3,
                1
              ]),
          borderRadius: BorderRadius.circular(kBorderRadius),
          color: Colors.red,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 5.0),
              blurRadius: 5.0,
            )
          ],
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Text(
                "MRT  PROGRAM  MAGAZINE",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                "COCOKARA",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Center(
                child: Text(
                  "読んで答えよう！",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CampaignView extends StatelessWidget {
  const CampaignView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("ok");
      },
      child: Container(
        height: 100,
        margin: EdgeInsets.only(
          top: 10,
          right: 10,
          left: 10,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.purple[400],
                Colors.red,
              ],
              stops: [
                0.3,
                1
              ]),
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
        child: textWithStroke(
          text: "MRT視聴ポイントキャンペーン",
          fontSize: 26,
        ),
        // child: Image.asset(
        //   "assets/dummy_broadcast.png",
        //   fit: BoxFit.cover,
        // ),
      ),
    );
  }

  Widget textWithStroke(
      {String text,
      double fontSize: 12,
      double strokeWidth: 5,
      Color textColor: Colors.red,
      Color strokeColor: Colors.white}) {
    return Stack(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = strokeWidth
              ..color = strokeColor,
          ),
        ),
        Text(text, style: TextStyle(fontSize: fontSize, color: textColor)),
      ],
    );
  }
}

class PresentViewList extends StatelessWidget {
  const PresentViewList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: presentModelList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            print("ok");
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
                    presentModelList[index].thumbnailImagePath,
                    width: 130,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Text(
                            presentModelList[index].content.name,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Text(
                          presentModelList[index].formTitle,
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          presentModelList[index]
                              .content
                              .winner
                              .toListMessage(),
                          style: TextStyle(
                            color: Colors.grey[600],
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
}

class PresentHeader extends StatelessWidget {
  const PresentHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 10,
        right: 10,
        left: 10,
      ),
      padding: EdgeInsets.all(5),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        gradient: LinearGradient(colors: [
          Colors.pink[400],
          Colors.pink[200],
        ], stops: [
          0.3,
          1
        ]),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 5.0),
            blurRadius: 5.0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.cake,
              color: Colors.white,
              size: 40,
            ),
          ),
          Text(
            "ふるってご応募ください！",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
