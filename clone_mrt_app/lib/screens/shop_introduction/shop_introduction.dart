import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/shop_introduction.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ShopIntroductionView extends StatelessWidget {
  const ShopIntroductionView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            TopBanner(),
            GourmetOrShopInfo(type: "shop"),
            GourmetOrShopInfo(type: "gourmet"),
            ShopIntroduction(),
          ],
        ),
      ),
    );
  }
}

class GourmetOrShopInfo extends StatelessWidget {
  final url = "https://mrt.jp/special/tenpo/";
  final String type;

  GourmetOrShopInfo({
    Key key,
    this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _launchURL(url);
      },
      child: Container(
        width: double.infinity,
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
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(kBorderRadius),
          ),
          child: Image.asset(
            _checkImagePath(type),
            fit: BoxFit.cover,
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

  String _checkImagePath(String s) {
    if (s == "shop") {
      return "assets/dummy_shop_info.png";
    }
    return "assets/dummy_shop_info.png";
  }
}

class TopBanner extends StatelessWidget {
  const TopBanner({
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
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.orange,
          width: 5,
        ),
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
      child: Text(
        "テレビ・ラジオで放送したお店などをご紹介。\nあなたが気になるお店をチェック！",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ShopIntroduction extends StatelessWidget {
  const ShopIntroduction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: shopIntroductionList.length,
      padding: EdgeInsets.all(kDefaultPadding),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        return ShopIntroductionBody(index: index);
      },
    );
  }
}

class ShopIntroductionBody extends StatelessWidget {
  const ShopIntroductionBody({
    Key key,
    this.index,
  }) : super(key: key);

  final int index;

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(kBorderRadius),
            ),
            child: Image.asset(
              shopIntroductionList[index].imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Text(
              shopIntroductionList[index].shopName,
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
              shopIntroductionList[index].address,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              shopIntroductionList[index].source.toString(),
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Text(
              shopIntroductionList[index].shopType.toJapanese(),
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
