//! / landing page / DashBoardPage/ ListWheelScroll

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yeksalai/constant/constant.dart';
import 'package:yeksalai/router/router.gr.dart';

class ListWheelScroll extends StatefulWidget {
  const ListWheelScroll({super.key});

  @override
  _ListWheelScrollState createState() => _ListWheelScrollState();
}

class _ListWheelScrollState extends State<ListWheelScroll> {
  int selectedIndex = 0;

  TextStyle _buttonTextStyle(String itemName) {
    Color textColor = Colors.black;
    if (itemName == 'Khuman') {
      textColor = Colors.grey;
    }
    return TextStyle(
      fontSize: 32,
      color: textColor,
      fontWeight: FontWeight.bold,
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 2,
      child: ListWheelScrollView(
        onSelectedItemChanged: (value) {
          // setState(() {
          //   selectedIndex = value;
          // });
          // context.router.push(YekSalaiRoute(yekIndex: selectedIndex));
          // print(selectedIndex.toString());
        },
        itemExtent: 80,
        diameterRatio: 2.8,
        // offAxisFraction: 1,
        physics: const BouncingScrollPhysics(),
        squeeze: 1,
        perspective: 0.004, clipBehavior: Clip.antiAlias,
        children: dataMap.map((e) {
          return GestureDetector(
            onTap: () {
              int index = dataMap.indexOf(e);

              context.router.push(
                //todo --> navigate to yeksalaiPage
                // YekSalaiRoute(yekPageIndex: index, yekColor: e["color"]),
                NewYekSalaiRoute(yekPageIndex: index, yekColor: e["color"]),
              );
            },
            child: Container(
              height: screenHeight / 6,
              width: screenWidth,
              decoration: BoxDecoration(
                  color: e["color"], borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Text(
                  e['Yek'],
                  textAlign: TextAlign.center,
                  style: _buttonTextStyle(e['Yek']),
                ),
              ),
            ),
          );
        }).toList(),

        // itemColorMap.keys.map((item) {
        //   final color = itemColorMap[item];
        // }).toList(),
      ),
    );
  }
}
