//! page not used as of now
//! / landing page / DashBoardPage/ ListWheelScroll / YekSalaiPage

import 'package:flutter/material.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';
import 'package:auto_route/auto_route.dart';
import 'package:yeksalai/constant/constant.dart';
import 'package:yeksalai/router/router.gr.dart';
import 'package:yeksalai/widgets/yekChartWidget.dart';

@RoutePage()
class YekSalaiPage extends StatefulWidget {
  final int yekPageIndex;
  final Color yekColor;

  const YekSalaiPage(
      {super.key, required this.yekPageIndex, required this.yekColor});

  @override
  State<YekSalaiPage> createState() => _YekSalaiPageState();
}

class _YekSalaiPageState extends State<YekSalaiPage> {
  List yekinfo = [];

  @override
  void initState() {
    super.initState();
    yekinfo = dataMap[widget.yekPageIndex]['YekInfo'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          dataMap[widget.yekPageIndex]["Yek"],
          style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: itemColor[widget.yekPageIndex]),
        ),
        backgroundColor: const Color.fromARGB(255, 201, 176, 245),
      ),
      body: SwipeDetector(
        onSwipeLeft: (Offset) {
          _navigateToPage(context, widget.yekPageIndex + 1);
        },
        onSwipeRight: (Offset) {
          _navigateToPage(context, widget.yekPageIndex - 1);
        },
        child: Container(
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
          child: Container(
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                stops: [0.1, 0.5, 0.7],
                colors: [
                  Color.fromARGB(255, 201, 176, 245),
                  Color.fromARGB(255, 225, 211, 248),
                  Color.fromARGB(255, 234, 229, 246),
                ],
              ),
              border:
                  Border.all(color: itemColor[widget.yekPageIndex], width: 3),
              borderRadius: BorderRadius.circular(22),
            ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Expanded(
                  flex: 10,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: yekinfo.length,
                    physics: const BouncingScrollPhysics(),
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    itemBuilder: (BuildContext context, int index) {
                      return YekChartWidget(
                        bgImagePath: "assets/images/",
                        title: dataMap[widget.yekPageIndex]["Yek"],
                        yekIndex: widget.yekPageIndex,
                        yekColor: itemColor[widget.yekPageIndex],
                        yekdetailIndex: index,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToPage(BuildContext context, int newIndex) {
    final totalPages = dataMap.length;
    if (newIndex >= 0 && newIndex < totalPages) {
      context.router.replace(
        YekSalaiRoute(yekPageIndex: newIndex, yekColor: widget.yekColor),
      );
    }
  }
}
