import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class carouselSliderBuilder extends StatefulWidget {
  const carouselSliderBuilder(
      {Key? key, required List<Map<String, dynamic>> dataMap})
      : super(key: key);

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
        "Yek": "Mangang",
        "Machu": Colors.red,
      },
      {
        "Yek": "Luwang",
        "Machu": Colors.white,
      },
      {
        "Yek": "Khuman",
        "Machu": Colors.black,
      },
      {
        "Yek": "Angom",
        "Machu": Colors.yellow,
      },
      {
        "Yek": "Moirang",
        "Machu": Colors.brown,
      },
      {
        "Yek": "Khaba Nganba",
        "Machu": Colors.teal,
      },
      {
        "Yek": "Salang Leishangthem",
        "Machu": Colors.green,
      },
    ];

    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: dataMap.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            String name = dataMap[index]["Yek"];
            Color color = dataMap[index]["Machu"];

            return Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              color: color,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        name,
                        style: GoogleFonts.rowdies(
                          color: Colors.blueGrey,
                          shadows: [
                            Shadow(
                              color:
                                  Colors.black.withOpacity(0.5), // Shadow color
                              offset: const Offset(2, 2), // Shadow position
                              blurRadius: 2, // Shadow blur radius
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          carouselController: _controller,
          options: CarouselOptions(
            height: 400,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
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
