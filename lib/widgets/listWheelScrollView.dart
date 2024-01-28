import 'package:flutter/material.dart';

class ListWheelScroll extends StatefulWidget {
  const ListWheelScroll({Key? key}) : super(key: key);

  @override
  _ListWheelScrollState createState() => _ListWheelScrollState();
}

class _ListWheelScrollState extends State<ListWheelScroll> {
  final Map<String, Color> itemColorMap = {
    'Mangang': Colors.red,
    'Luwang': Colors.white,
    'Khuman': Colors.black,
    'Angom': Colors.yellow,
    'Moirang': Colors.brown,
    'Khaba Nganba': Colors.teal,
    'Sarang Leishangthem': Colors.green,
  };

  TextStyle _buttonTextStyle() {
    return TextStyle(
      fontSize: 25,
      color: const Color.fromARGB(255, 44, 44, 44),
      fontWeight: FontWeight.bold,
    );
  }

  @override
  Widget build(BuildContext context) {
   double screenHeight = MediaQuery.of(context).size.height;
   double screenWidth = MediaQuery.of(context).size.width;
    return Container(padding: EdgeInsets.symmetric(horizontal:20),
      height: screenHeight/2,
      child: ListWheelScrollView(
        itemExtent: 120,
        clipBehavior: Clip.antiAlias,
        children: itemColorMap.keys.map((item) {
          final color = itemColorMap[item];
          return Container( height: screenHeight/4,
          width: screenWidth,
             decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(12)),
            child: Center(
              child: Text(
                item,
                textAlign: TextAlign.center,
                style: _buttonTextStyle(),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
  