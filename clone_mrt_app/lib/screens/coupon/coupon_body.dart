import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/coupon.dart';
import 'package:clone_mrt_app/screens/coupon/coupon_header.dart';
import 'package:flutter/material.dart';

class CouponView extends StatelessWidget {
  const CouponView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CouponHeader(),
            CouponBodyView(),
          ],
        ),
      ),
    );
  }
}

class CouponBodyView extends StatelessWidget {
  const CouponBodyView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: couponList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return Scaffold();
                },
              ),
            ),
            child: Container(
              height: 140,
              margin: EdgeInsets.only(
                right: 10,
                bottom: 10,
                left: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(kCouponRadius),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(1, 2.0),
                    blurRadius: 3.0,
                  )
                ],
              ),
              child: Row(
                children: [
                  Container(
                    height: 150,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(kCouponRadius),
                        bottomLeft: Radius.circular(kCouponRadius),
                      ),
                      child: Image.asset("assets/coupon.png"),
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                          width: 1,
                          color: Colors.orange,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ),
                  CouponOverview(
                    index,
                  ),
                ],
              ),
            ),
          );
        });
  }
}

class CouponOverview extends StatelessWidget {
  const CouponOverview(
    this.index, {
    Key key,
  }) : super(key: key);
  final index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CouponName(index),
        Image.asset(
          "assets/border.png",
          height: 10,
          width: MediaQuery.of(context).size.width - 90,
          fit: BoxFit.fill,
        ),
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              child: Image.asset(
                couponList[index].shop.image,
                width: 100,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShopNameView(index),
                CouponExpiration(index),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class CouponName extends StatelessWidget {
  const CouponName(
    this.index, {
    Key key,
  }) : super(key: key);
  final index;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: MediaQuery.of(context).size.width - 90,
      height: 55,
      padding: EdgeInsets.all(5),
      child: Text(
        couponList[index].name,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class ShopNameView extends StatelessWidget {
  const ShopNameView(
    this.index, {
    Key key,
  }) : super(key: key);
  final index;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: MediaQuery.of(context).size.width - 200,
        height: 40,
        alignment: Alignment.topLeft,
        padding: EdgeInsets.only(bottom: 5),
        child: Text(
          couponList[index].shop.name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}

class CouponExpiration extends StatelessWidget {
  const CouponExpiration(
    this.index, {
    Key key,
  }) : super(key: key);
  final index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 210,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.orange[900],
            ),
            child: Text(
              "有効期限",
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              couponList[index].expirationDate,
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
