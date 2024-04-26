//! / landing page / DashBoardPage/ carouselSliderBuilder

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yeksalai/router/router.gr.dart';

class carouselSliderBuilder extends StatefulWidget {
  const carouselSliderBuilder(
      {super.key, required List<Map<String, dynamic>> dataMap});

  @override
  _carouselSliderBuilderState createState() => _carouselSliderBuilderState();
}

class _carouselSliderBuilderState extends State<carouselSliderBuilder> {
  int _currentIndex = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> dataMap = [
      {
        "sl.no": 1,
        "title": "Yek Thoknaba",
        "content": "Marriage Prohibition",
        "MoreDescription": "Prohibition of inter Clan Marriage",
        "Machu": Colors.red,
      },
      {
        "sl.no": 2,
        "title": "Yelhen",
        "content": "Forbidden Foods ",
        "MoreDescription": "Prohibition of consumtion of foods of the Clan",
        "Machu": Colors.red,
      },
      {
        "sl.no": 3,
        "title": "Hourakfam",
        "content": "Origin ",
        "MoreDescription": "Place the Clan settlement was first recorded",
        "Machu": Colors.red,
      },
      {
        "sl.no": 4,
        "title": "Machu, Thang, Lei",
        "content": "Color, weapon and flower associated with the clan Clans",
        "MoreDescription": "every clan has its own clan .....",
        "Machu": Colors.red,
      },
      {
        "sl.no": 5,
        "title": "Anang Maming",
        "content": "Baby Names ",
        "MoreDescription": "Name suggestion for newborns",
        "Machu": Colors.red,
      },
      {
        "sl.no": 6,
        "title": "Laipu",
        "content": "Ancesteal God ",
        "MoreDescription": "Every clan worships an .....",
        "Machu": Colors.red,
      },
      {
        "sl.no": 7,
        "title": "Apokpa Khoiramgadaba Numit",
        "content": "Day of warshiping Clan's Ancestral God  ",
        "MoreDescription": "Every clan has a specific day for worshiping ...",
        "Machu": Colors.red,
      },
    ];

    return Column(
      children: [
        const SizedBox(
          height: 6,
        ),
        CarouselSlider.builder(
          itemCount: dataMap.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            String title = dataMap[index]["title"];
            String content = dataMap[index]["content"];
            // String MoreDescription = dataMap[index]["MoreDescription"];
            // todo ->> color
            // Color color = dataMap[index]["Machu"];

            return GestureDetector(
              onTap: () {
                switch (index) {
                  case 0:
                    context.router.push(const YekThoknabaRoute());
                  case 1:
                    context.router.push(const YelhenRoute());
                  case 2:
                    context.router.push(const HourakfamRoute());
                  case 3:
                    context.router.push(const MachuThangLeiRoute());
                  case 4:
                    context.router.push(const AnangMamingRoute());
                  case 5:
                    context.router.push(const LaipuRoute());
                  case 6:
                    context.router.push(const ApokpaKhoirambaNumitRoute());

                    break;
                  default:
                }
                // context.router.push(),
              },
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: Colors.deepPurple.withOpacity(.25),
                // todo ->> color
                // color: color,
                child: Container(
                  padding: const EdgeInsets.all(
                      12), // height: MediaQuery.of(context).size.width / 2,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.rowdies(
                            fontSize: 20, color: Colors.white),
                      ),
                      const SizedBox(
                        height: 18,
                      ),
                      Text(
                        content,
                        style: TextStyle(fontSize: 15, color: Colors.grey[300]),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          carouselController: _controller,
          options: CarouselOptions(
            height: 160,
            // aspectRatio: 1.6,
            disableCenter: false,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 4),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            viewportFraction: .7,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: dataMap.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 12.0,
                height: 12.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == entry.key
                      ? Colors.blueAccent
                      : Colors.grey,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
