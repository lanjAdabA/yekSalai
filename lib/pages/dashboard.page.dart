import 'package:flutter/material.dart';
import 'package:yeksalai/widgets/carouselSliderBuilder.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({Key? key}) : super(key: key);

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

    return carouselSliderBuilder(dataMap: dataMap);
  }
}
