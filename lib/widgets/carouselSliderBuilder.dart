import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class carouselSliderBuilder extends StatelessWidget {
  const carouselSliderBuilder({
    super.key,
    required this.dataMap,
  });

  final List<Map<String, dynamic>> dataMap;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: dataMap.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        String name = dataMap[index]["Yek"];
        Color color = dataMap[index]["Machu"];

        return Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: color,
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width / 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(name),
                ),
              ],
            ),
          ),
        );
      },
      options: CarouselOptions(
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        viewportFraction: 0.35,
        height: 80,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 2),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
    );
  }
}
