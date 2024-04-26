//! / landing page / DashBoardPage/ ListWheelScroll -->
//! /NewYekSalaiPage / DetailedYekDescriptionPage /listView-->
//! /ItemDescriptionPage

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:parallax_image_ns/parallax_image.dart';
import 'package:yeksalai/constant/constant.dart';

@RoutePage()
class ItemDescriptionPage extends StatelessWidget {
  final int yekdetailIndex;
  final int yekIndex;

  const ItemDescriptionPage(
      {super.key, required this.yekdetailIndex, required this.yekIndex});

  @override
  Widget build(BuildContext context) {
    double scwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomLeft,
            stops: [0.1, 0.5, 0.7],
            colors: [
              Color.fromARGB(255, 201, 176, 245),
              Color.fromARGB(255, 225, 211, 248),
              Color.fromARGB(255, 234, 229, 246),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: SizedBox(
                    width: 300,
                    height: 50,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: ParallaxImage(
                    color: Colors.transparent,
                    extent: 400.0,
                    image: ExactAssetImage(
                      dataMap[yekdetailIndex]["YekInfo"][yekIndex]['asset'],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            dataMap[yekdetailIndex]["YekInfo"][yekIndex]
                                ["itemname"],
                            style: TextStyle(
                                // fontSize: scwidth / 28,
                                fontSize: scwidth / 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[50]),
                          )
                              .animate(
                                onPlay: (controller) => controller.repeat(),
                              )
                              .shimmer(
                                duration: const Duration(milliseconds: 4444),
                                color: Colors.grey[800],
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey[200],
                      borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.all(12),
                  child:
                      //!
                      Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Icon(
                            Icons.info_outline,
                            size: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "info",
                              style: TextStyle(fontSize: 15),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Text(
                            dataMap[yekdetailIndex]["YekInfo"][yekIndex]
                                    ['name'] +
                                " " +
                                "for Yek" +
                                " " +
                                dataMap[yekdetailIndex]["Yek"] +
                                " : ",
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            dataMap[yekdetailIndex]["YekInfo"][yekIndex]
                                ["itemname"],
                            style: const TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                      const Text(
                        "Scientific name : ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      // RichText(
                      //   text: const TextSpan(
                      //     text: ' Info ',
                      //     style: TextStyle(
                      //       backgroundColor: Colors.red,
                      //       color: Colors.blue,
                      //       fontWeight: FontWeight.bold,
                      //       fontSize: 15,
                      //     ),

                      // children: [
                      //   TextSpan(
                      //     text: ' Line ',
                      //     style: TextStyle(
                      //       color: Colors.white,
                      //       backgroundColor: Colors.teal,
                      //       fontSize: 20,
                      //     ),
                      //   ),
                      //   TextSpan(
                      //     text: ' Multiple ',
                      //     style: TextStyle(
                      //       color: Colors.orange,
                      //       fontFamily: 'courier',
                      //       fontSize: 24,
                      //     ),
                      //   ),
                      //   TextSpan(
                      //     text: ' Styles ',
                      //     style: TextStyle(
                      //       fontStyle: FontStyle.italic,
                      //       color: Colors.pink,
                      //       fontSize: 15,
                      //     ),
                      //   ),
                      // ],
                      //   ),
                      // ),
                    ],
                  ),

                  //!
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
