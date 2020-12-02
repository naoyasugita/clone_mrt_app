import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/campaign.dart';
import 'package:flutter/material.dart';

class DramaImpressionsDetail extends StatelessWidget {
  const DramaImpressionsDetail(
    this.index, {
    Key key,
  }) : super(key: key);
  final index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
      appBar: AppBar(
        title: Text(
          campaignModelList[index].dramaTitle.format(),
          overflow: TextOverflow.ellipsis,
        ),
        backgroundColor: kSecondaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    campaignModelList[index].dramaTitle.format(),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.green[600],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 20,
                    ),
                    child: Text(
                      campaignModelList[index].timestamp,
                    ),
                  ),
                  Text(
                    campaignModelList[index].contributor.format(),
                    style: TextStyle(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 10,
                    ),
                    child: Text(
                      campaignModelList[index].post,
                      style: TextStyle(),
                    ),
                  ),
                  TweetButton(),
                ],
              ),
            ),
            Text(
              "Copytight © 1996-2020 XXXXXX Co.,Ltd. All rights reserved.",
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

class TweetButton extends StatelessWidget {
  const TweetButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              // TODO: リンク先を追加
              return;
            },
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kBorderRadius),
            color: Colors.blue,
          ),
          margin: EdgeInsets.all(20),
          width: 80,
          height: 20,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Image.asset(
                  "assets/twitter_logo.png",
                ),
              ),
              Text(
                "ツイート",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
