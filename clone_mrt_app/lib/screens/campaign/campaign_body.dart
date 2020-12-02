import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/campaign.dart';
import 'package:clone_mrt_app/screens/campaign/campagin_detail.dart';
import 'package:flutter/material.dart';

class CampaignPageView extends StatelessWidget {
  const CampaignPageView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CampaignHeader(),
            DramaImpressions(),
            ImpressionsHeader(),
            DramaImpressionsList(),
          ],
        ),
      ),
    );
  }
}

class DramaImpressionsList extends StatelessWidget {
  const DramaImpressionsList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: campaignModelList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return DramaImpressionsDetail(index);
              },
            ),
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
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
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      campaignModelList[index].dramaTitle.format(),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Text(
                    campaignModelList[index].contributor.format(),
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    campaignModelList[index].post,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12,
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

class ImpressionsHeader extends StatelessWidget {
  const ImpressionsHeader({
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
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 2,
      ),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        gradient: LinearGradient(colors: [
          Colors.cyan[600],
          Colors.cyan[400],
        ], stops: [
          0,
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
      child: Text(
        "今期ドラマの感想",
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}

class DramaImpressions extends StatelessWidget {
  const DramaImpressions({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          color: Colors.cyan[500],
          child: Row(
            children: [
              Image.asset(
                "assets/dummy_image.png",
                width: 130,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 150,
                // padding: EdgeInsets.all(30),
                child: Center(
                  child: Text(
                    "今期ドラマの感想の投稿と\nプレゼント応募はこちらから",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
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

class CampaignHeader extends StatelessWidget {
  const CampaignHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    color: Colors.cyan[800],
                    child: Image.asset(
                      "assets/dummy_image.png",
                      width: 60,
                      height: 60,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 80,
                    height: 60,
                    color: Colors.cyan[500],
                    child: Center(
                      child: Text(
                        "ドラマグッズプレゼントキャンペーン!!",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/dummy_image.png",
                    width: MediaQuery.of(context).size.width,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    child: Text(
                      "今期ドラマ番組オリジナルグッズを\n合計で30名様にプレゼント!!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.cyan[600],
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    color: Colors.pinkAccent[400],
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "応募期間  ",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: "11/30",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: "(月)",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: "〜12/13",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: "(日)",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
