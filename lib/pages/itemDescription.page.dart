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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  width: 300,
                  height: 50,
                  color: Colors.red,
                  child: const Text("sample text"),
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
                              fontSize: scwidth / 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey[200]),
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
              Container(
                color: Colors.amber,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return const Row(
                      children: [
                        Text(
                          "name : ",
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          "data",
                          style: TextStyle(fontSize: 28),
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
