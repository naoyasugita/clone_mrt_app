import 'package:clone_mrt_app/constants.dart';
import 'package:clone_mrt_app/models/apply_post.dart';
import 'package:flutter/material.dart';

class ApplyPostView extends StatelessWidget {
  const ApplyPostView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ApplyList(),
            ContactList(),
          ],
        ),
      ),
    );
  }
}

class ContactList extends StatelessWidget {
  const ContactList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: contactModelList.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            print("ok");
          },
          child: Container(
            padding: EdgeInsets.only(left: 20),
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
              gradient: LinearGradient(
                stops: [0.04, 0.04],
                colors: [
                  contactModelList[index].listColor,
                  Colors.white,
                ],
              ),
            ),
            child: Row(
              children: [
                Container(
                  color: contactModelList[index].listColor,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    contactModelList[index].title,
                    style: TextStyle(
                      letterSpacing: -1.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ApplyList extends StatelessWidget {
  const ApplyList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: applyModelList.length,
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
                applyModelList[index].imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
