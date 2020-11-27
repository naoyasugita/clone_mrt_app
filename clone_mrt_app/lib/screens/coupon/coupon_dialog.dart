import 'package:clone_mrt_app/models/coupon.dart';
import 'package:flutter/material.dart';

Future<void> showCoupon(BuildContext context, int index) {
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('この画面をお店の方にみせてください'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text("お手数をおかけしますが、本クーポンの使用をご確認いただけましたら、[使用済みにする]ボタンを押してください。"),
              Container(
                padding: EdgeInsets.all(4),
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
                      width: double.infinity,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 10,
                            ),
                            child: Text(
                              couponList[index].message,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ),
                          Text(
                            "有効期限：" + couponList[index].expirationDate,
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    margin: EdgeInsets.only(
                      bottom: 10,
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
                      "使用済みにする",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Text(
                      "キャンセル",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}
