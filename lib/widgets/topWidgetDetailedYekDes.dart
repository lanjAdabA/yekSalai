//! / landing page / DashBoardPage/ ListWheelScroll / NewYekSalaiPage / DetailedYekDescriptionPage[TopWidget]

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:yeksalai/constant/constant.dart';
import 'package:yeksalai/pages/DetailedYekDescription.page.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({
    super.key,
    required this.selectedIndex,
    required this.widget,
    required this.value,
    required this.scwidth,
    required this.topIndex,
  });

  final int selectedIndex;
  final DetailedYekDescriptionPage widget;
  final double value;
  final double scwidth;
  final int topIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Stack(
            fit: StackFit.expand,
            // alignment: Alignment.topCenter,
            children: [
              BgStack(
                imagePath: dataMap[topIndex]["BG"],
                isSelected: selectedIndex == widget.yekPageIndex,
                yekPageIndex: widget.yekPageIndex,
                yekIndex: widget.yekPageIndex,
              ),
              Transform.translate(
                  filterQuality: FilterQuality.high,
                  offset: Offset(
                    -value * MediaQuery.of(context).size.height * 0.01,
                    value * MediaQuery.of(context).size.height * 0.03,
                  ),
                  child: Hero(
                    tag: "splash$topIndex",
                    child: Image.asset(
                      dataMap[topIndex]["splash"]!,
                      fit: BoxFit.scaleDown,
                    ),
                  )),
              Transform.translate(
                offset: Offset(
                    0.0, value * MediaQuery.of(context).size.height * 0.04),
                child: Hero(
                  tag: "char$topIndex",
                  child: Image.asset(
                    dataMap[topIndex]["char"]!,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    dataMap[topIndex]["Yek"]!,
                    style:
                        TextStyle(fontSize: scwidth / 14, color: Colors.white),
                  )
                      .animate(
                        onPlay: (controller) => controller.repeat(),
                      )
                      .shimmer(
                        duration: const Duration(milliseconds: 4444),
                        color: Colors.amber,
                      ),
                  Text(
                    "YEK in meteimayek",
                    style:
                        TextStyle(fontSize: scwidth / 18, color: Colors.white),
                  )
                      .animate(
                        onPlay: (controller) => controller.repeat(),
                      )
                      .shimmer(
                        duration: const Duration(milliseconds: 4444),
                        color: Colors.amber,
                      ),
                  Text(
                    "brief descriptions...",
                    style:
                        TextStyle(fontSize: scwidth / 24, color: Colors.white),
                  )
                      .animate(
                        onPlay: (controller) => controller.repeat(),
                      )
                      .shimmer(
                        duration: const Duration(milliseconds: 4444),
                        color: Colors.amber,
                      ),
                ],
              ),
            ))
      ],
    );
  }
}
