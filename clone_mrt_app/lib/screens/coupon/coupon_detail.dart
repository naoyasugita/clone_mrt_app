import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/coupon.dart';
import 'package:clone_mrt_app/screens/coupon/coupon_dialog.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CouponDetailBody extends StatelessWidget {
  const CouponDetailBody(
    this.index, {
    Key key,
  }) : super(key: key);
  final index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(couponList[index].shop.name),
        backgroundColor: kSecondaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CouponContent(index: index),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      couponList[index].shop.name,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Image.asset(
                    couponList[index].shop.image,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width,
                  ),
                  // 住所
                  ShopInfoTag(
                    tagIcon: Icons.home,
                    tagName: "住所",
                  ),
                  ShopInfo(
                    info: couponList[index].shop.address,
                  ),
                  // TEL
                  ShopInfoTag(
                    tagIcon: Icons.phone,
                    tagName: "TEL",
                  ),
                  ShopTel(
                    tel: couponList[index].shop.tel,
                  ),
                  // 営業時間
                  ShopInfoTag(
                    tagIcon: Icons.timelapse,
                    tagName: "営業時間",
                  ),
                  ShopInfo(
                    info: couponList[index].shop.businessHours.toString(),
                  ),
                  // 定休日
                  ShopInfoTag(
                    tagIcon: Icons.calendar_today,
                    tagName: "定休日",
                  ),
                  ShopInfo(
                    info: couponList[index].shop.holiday,
                  ),
                  // 駐車場
                  ShopInfoTag(
                    tagIcon: Icons.local_parking,
                    tagName: "駐車場",
                  ),
                  ShopInfo(
                    info: couponList[index].shop.parking,
                  ),
                  // URL
                  ShopInfoTag(
                    tagIcon: Icons.link,
                    tagName: "URL",
                  ),
                  ShopLink(
                    url: couponList[index].shop.siteUrl,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShopInfo extends StatelessWidget {
  const ShopInfo({
    Key key,
    this.info,
  }) : super(key: key);
  final info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 4,
        bottom: 5,
        left: 4,
      ),
      child: Text(info),
    );
  }
}

class ShopTel extends StatelessWidget {
  const ShopTel({
    Key key,
    this.tel,
  }) : super(key: key);

  final tel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 4,
        bottom: 5,
        left: 4,
      ),
      child: RichText(
        text: TextSpan(
          text: tel,
          style: TextStyle(color: Colors.lightBlue),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              _launchURL(tel);
            },
        ),
      ),
    );
  }

  _launchURL(String tel) async {
    print("tel");
    print(this.tel);
    String tel2 = this.tel.replaceAll('-', '');
    String tel3 = "tel:" + tel2;

    print("tel3");
    print(tel3);

    launch(tel3);
  }
}

class ShopLink extends StatelessWidget {
  const ShopLink({
    Key key,
    this.url,
  }) : super(key: key);
  final url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 4,
        bottom: 5,
        left: 4,
      ),
      child: RichText(
        text: TextSpan(
          text: url,
          style: TextStyle(color: Colors.lightBlue),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              _launchURL(url);
            },
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

class ShopInfoTag extends StatelessWidget {
  // TODO: タグの横幅を動的にする
  const ShopInfoTag({
    Key key,
    this.tagIcon,
    this.tagName,
  }) : super(key: key);
  final tagIcon;
  final tagName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 4,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 4,
      ),
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        color: Colors.orange[900],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            tagIcon,
            color: Colors.white,
            size: 11,
          ),
          Text(
            tagName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}

class CouponContent extends StatelessWidget {
  const CouponContent({
    Key key,
    @required this.index,
  }) : super(key: key);

  final index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      margin: EdgeInsets.all(10),
      color: Colors.orange[900],
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 4,
              right: 10,
              bottom: 2,
              left: 10,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                couponList[index].name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Text(couponList[index].message),
                Text(
                  "有効期限：" + couponList[index].expirationDate,
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    return showCoupon(context, index);
                  },
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0, 1.0),
                            blurRadius: 5.0,
                          )
                        ],
                      ),
                      child: Text(
                        "使用する",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
