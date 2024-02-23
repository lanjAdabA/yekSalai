//! page not used as of now
//! / landing page / DashBoardPage/ ListWheelScroll / YekSalaiPage -->YekChartWidget

import 'package:flutter/material.dart';
import 'package:yeksalai/constant/constant.dart';

class YekChartWidget extends StatelessWidget {
  final String bgImagePath;
  final String title;
  final Color yekColor;
  final int yekIndex;
  final int yekdetailIndex;

  const YekChartWidget({
    super.key,
    required this.bgImagePath,
    required this.title,
    required this.yekIndex,
    required this.yekColor,
    required this.yekdetailIndex,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Card(
      margin: EdgeInsets.only(bottom: screenHeight / 54),
      elevation: 5,
      shadowColor: Colors.black,
      child: Column(
        children: [
          BgImageWidget(
              screenHeight: screenHeight,
              yekIndex: yekIndex,
              yekdetailIndex: yekdetailIndex,
              yekColor: yekColor),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6), color: yekColor),
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(8),
                  child: SizedBox(
                      width: double.infinity,
                      child: Row(
                        children: [
                          Text(
                            dataMap[yekIndex]["YekInfo"][yekdetailIndex]
                                    ['name'] +
                                " :  ",
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                fontSize: 22,
                                color: dataMap[yekIndex]["Yek"] == "Angom" ||
                                        dataMap[yekIndex]["Yek"] == "Luwang"
                                    ? Colors.black
                                    : Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2),
                          ),
                          Text(
                            dataMap[yekIndex]["YekInfo"][yekdetailIndex]
                                ['itemname'],
                            style: TextStyle(
                                overflow: TextOverflow.ellipsis,
                                color: dataMap[yekIndex]["Yek"] == "Angom" ||
                                        dataMap[yekIndex]["Yek"] == "Luwang"
                                    ? Colors.black
                                    : Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2),
                          ),
                        ],
                      ))),
            ],
          ),
        ],
      ),
    );
  }
}

class BgImageWidget extends StatelessWidget {
  const BgImageWidget({
    super.key,
    required this.screenHeight,
    required this.yekIndex,
    required this.yekdetailIndex,
    required this.yekColor,
  });

  final double screenHeight;
  final int yekIndex;
  final int yekdetailIndex;
  final Color yekColor;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      dataMap[yekIndex]["YekInfo"][yekdetailIndex]['asset'],
    );

    // return Container(
    //   margin: const EdgeInsets.only(left: 8, right: 8, top: 8),
    //   height: screenHeight / 4,
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(10),
    //     image: DecorationImage(
    //       image: AssetImage(
    //         dataMap[yekIndex]["YekInfo"][yekdetailIndex]['asset'],
    //       ),
    //       fit: BoxFit.cover,
    //     ),
    //   ),
    // );
  }
}
