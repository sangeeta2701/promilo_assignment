
import 'package:flutter/material.dart';
import 'package:promilo_assignment/utils/colors.dart';
import 'package:promilo_assignment/utils/constants.dart';
import 'package:promilo_assignment/widget/sizedbox.dart';

Widget trendingMeetupContainer(String number) {
  return Container(
    constraints: BoxConstraints(
      maxWidth: 200,
      maxHeight: 220,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(6),
      image: DecorationImage(
          image: AssetImage("assets/images/img7.jpg"), fit: BoxFit.cover),
    ),
    child: Stack(
      children: [
        Positioned(
          right: 0,
          bottom: 10,
          child: Container(
            height: 90,
            width: 80,
            decoration: BoxDecoration(
                color: wColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6),
                  bottomLeft: Radius.circular(6),
                )),
            child: Center(
              child: Text(
                number,
                style: TextStyle(
                    fontSize: 46, fontWeight: FontWeight.w600, color: bColor),
              ),
            ),
          ),
        )
      ],
    ),
  );
}

Widget popularPeopleContainer() {
  return Container(
    constraints: BoxConstraints(maxWidth: 300),
    decoration: BoxDecoration(
      border: Border.all(
        color: gColor.withOpacity(0.3),
      ),
      borderRadius: BorderRadius.circular(6),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: themeColor,
                child: CircleAvatar(
                  radius: 23,
                  backgroundColor: wColor,
                  child: Icon(
                    Icons.history_edu_outlined,
                    color: themeColor,
                  ),
                ),
              ),
              width12,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Author",
                    style: blackHeading,
                  ),
                  Text(
                    "1,028 Meetups",
                    style: gText,
                  )
                ],
              ),
            ],
          ),
          Divider(
            color: gColor.withOpacity(0.3),
            thickness: 1,
          ),
          SizedBox(
            height: 60,
            width: double.infinity,
            child: Stack(
              children: [
                authorCircleImage("assets/images/img4.jpg"),
                Positioned(
                    left: 37,
                    child: authorCircleImage("assets/images/img6.jpg")),
                Positioned(
                    left: 77,
                    child: authorCircleImage("assets/images/img5.jpg")),
                Positioned(
                    left: 110,
                    child: authorCircleImage("assets/images/img6.jpg")),
                Positioned(
                    left: 147,
                    child: authorCircleImage("assets/images/img4.jpg")),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: themeColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: () {},
                child: Text(
                  "Show More",
                  style: TextStyle(
                    fontSize: 14,
                    color: wColor,
                    fontWeight: FontWeight.w600,
                  ),
                )),
          )
        ],
      ),
    ),
  );
}

Widget authorCircleImage(String img) {
  return CircleAvatar(
    radius: 25,
    backgroundImage: AssetImage(img),
  );
}
