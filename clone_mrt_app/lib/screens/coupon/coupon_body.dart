import 'package:clone_mrt_app/constants.dart';
import 'package:flutter/material.dart';

class CouponView extends StatelessWidget {
  const CouponView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return Scaffold();
                },
              ),
            ),
            child: Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                gradient: LinearGradient(colors: [
                  Colors.orange[700],
                  Colors.orange[400],
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Icon(
                      Icons.cake,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                        )
                      ],
                    ),
                    child: Text(
                      "飲食店辞表者様のお申し込みはこちらから",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.orange[900],
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return Scaffold();
                },
              ),
            ),
            child: Container(
              height: 150,
              margin: EdgeInsets.only(
                right: 10,
                bottom: 10,
                left: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(kBorderRadius),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 5.0),
                    blurRadius: 5.0,
                  )
                ],
              ),
              child: Row(
                children: [
                  Container(
                    height: 150,
                    child: Image.asset("assets/coupon.png"),
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        width: MediaQuery.of(context).size.width - 90,
                        height: 55,
                        padding: EdgeInsets.all(5),
                        child: Text(
                          "赤鶏もも炭火焼き（小）もちかえりプレゼント",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
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
                              "assets/coupon.png",
                              width: 100,
                              height: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width - 200,
                                  height: 40,
                                  alignment: Alignment.topLeft,
                                  padding: EdgeInsets.only(bottom: 5),
                                  child: Text(
                                    "地鶏炭火焼　〇〇",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
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
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 5),
                                      child: Text(
                                        "2021年1月1日",
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
