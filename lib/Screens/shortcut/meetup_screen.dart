import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:promilo_assignment/utils/colors.dart';
import 'package:promilo_assignment/utils/constants.dart';
import 'package:promilo_assignment/widget/meetupScreen_constants.dart';
import 'package:promilo_assignment/widget/sizedbox.dart';

import '../description_screen.dart';

final List<String> imgList = [
  "assets/images/img1.jpeg",
  "assets/images/img3.jpg",
  "assets/images/img2.jpg",
];

class MeetupScreen extends StatefulWidget {
  const MeetupScreen({super.key});

  @override
  State<MeetupScreen> createState() => _MeetupScreenState();
}

class _MeetupScreenState extends State<MeetupScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: wColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                        )),
                    Text(
                      "Individual Meetup",
                      style: blackHeading,
                    )
                  ],
                ),
                Divider(
                  color: gColor.withOpacity(0.3),
                  thickness: 1,
                ),
                height16,
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: bColor,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(),
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: bColor,
                      ),
                      suffixIcon: Icon(
                        Icons.mic,
                        color: bColor,
                      ),
                    ),
                  ),
                ),
                height16,
                CarouselSlider(
                    items: imgList
                        .map((item) => Container(
                              // height: 50.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      colorFilter: ColorFilter.mode(
                                          Colors.black.withOpacity(1.0),
                                          BlendMode.softLight),
                                      image: AssetImage(item),
                                      fit: BoxFit.cover)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 12, bottom: 12),
                                child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      "Popular Meetups \nin India",
                                      style: TextStyle(
                                          color: wColor,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20),
                                    )),
                              ),
                            ))
                        .toList(),
                    options: CarouselOptions(
                      viewportFraction: 1.0,
                      enlargeCenterPage: true,
                      aspectRatio: 1.85 / 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgList.map((url) {
                    int index = imgList.indexOf(url);
                    return Container(
                      width: 8,
                      height: 8,
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: currentIndex == index
                              ? bColor
                              : gColor.withOpacity(0.2)),
                    );
                  }).toList(),
                ),
                height16,
                Text("Trending Popular People",style: blackHeading,),
                height12,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      popularPeopleContainer(),
                      width12,
                      popularPeopleContainer(),
                      width12,
                      popularPeopleContainer(),
                    ],
                  ),
                ),
                height16,
                Text("Top Trending Meetups",style: blackHeading,),
                height12,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionScreen(),),);
    },
                        child: trendingMeetupContainer("01")),
                      width30,
                      GestureDetector(
                        onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionScreen(),),);
    },
                        child: trendingMeetupContainer("02")),
                      width30,
                      GestureDetector(
                        onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionScreen(),),);
    },
                        child: trendingMeetupContainer("03")),
                      width30,
                      GestureDetector(
                        onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionScreen(),),);
    },
                        child: trendingMeetupContainer("04")),
                      width30,
                      GestureDetector(
                        onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>DescriptionScreen(),),);
    },
                        child: trendingMeetupContainer("05")),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

 

 
}
