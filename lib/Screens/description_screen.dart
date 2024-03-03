import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:promilo_assignment/utils/colors.dart';
import 'package:promilo_assignment/utils/constants.dart';
import 'package:promilo_assignment/widget/sizedbox.dart';
import 'package:readmore/readmore.dart';

final List<String> imgList = [
  "assets/images/img9.jpg",
  "assets/images/img10.jpg",
  "assets/images/img12.jpg",
];

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({super.key});

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
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
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                        )),
                    Text(
                      "Decription",
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
                  height: 350,
                  decoration: BoxDecoration(
                    color: gColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: wColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: CarouselSlider(
                            items: imgList
                                .map((item) => Container(
                                      // height: 50.h,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          image: DecorationImage(
                                              image: AssetImage(item),
                                              fit: BoxFit.cover)),
                                    ))
                                .toList(),
                            options: CarouselOptions(
                              viewportFraction: 1.0,
                              enlargeCenterPage: true,
                              aspectRatio: 4 / 5,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  currentIndex = index;
                                });
                              },
                            )),
                      ),
                      Positioned(
                        bottom: 60,
                        left: 100,
                        right: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: imgList.map((url) {
                            int index = imgList.indexOf(url);
                            return Container(
                              width: 8,
                              height: 8,
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 3),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color:
                                      currentIndex == index ? wColor : gColor),
                            );
                          }).toList(),
                        ),
                      ),
                      Positioned(
                        bottom: 3,
                        left: 20,
                        right: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.download,
                                  color: gColor,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.bookmark_outline,
                                  color: gColor,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite_outline,
                                  color: gColor,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.crop_free,
                                  color: bColor,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.star_border,
                                  color: bColor,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.share_outlined,
                                  color: bColor,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                height16,
                Row(
                  children: [
                    Icon(
                      Icons.bookmark_outline,
                      color: themeColor,
                      size: 16,
                    ),
                    width4,
                    Text(
                      "1034",
                      style: gText,
                    ),
                    width16,
                    Icon(
                      Icons.favorite_border,
                      color: themeColor,
                      size: 16,
                    ),
                    width4,
                    Text(
                      "1034",
                      style: gText,
                    ),
                    width16,
                    Container(
                      height: 20,
                      width: 120,
                      decoration: BoxDecoration(
                          color: gColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.star,
                                color: themeColor,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: themeColor,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: themeColor,
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: themeColor.withOpacity(0.2),
                                size: 15,
                              ),
                              Icon(
                                Icons.star,
                                color: wColor,
                                size: 15,
                              ),
                            ]),
                      ),
                    ),
                    width4,
                    Text(
                      "3.2",
                      style: gText,
                    )
                  ],
                ),
                height16,
                Text(
                  "Actor Name",
                  style: blackText,
                ),
                Text(
                  "Indian Actress",
                  style: gText,
                ),
                height12,
                Row(
                  children: [
                    Icon(
                      Icons.schedule,
                      color: gColor,
                      size: 18,
                    ),
                    width4,
                    Text(
                      "Duration 20 Mins",
                      style: gText,
                    ),
                  ],
                ),
                height12,
                Row(
                  children: [
                    Icon(
                      Icons.account_balance_wallet_outlined,
                      color: gColor,
                      size: 18,
                    ),
                    width4,
                    Text(
                      "Total Average Fees ₹9,999",
                      style: gText,
                    ),
                  ],
                ),
                height16,
                Text(
                  "About",
                  style: blackText,
                ),
                ReadMoreText(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  trimLines: 6,
                  textAlign: TextAlign.justify,
                  style: gText,
                  colorClickableText: themeColor,
                  trimCollapsedText: "Show More",
                  trimExpandedText: "Show Less",
                ),
                height20,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
