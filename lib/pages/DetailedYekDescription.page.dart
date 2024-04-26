//! / landing page / DashBoardPage/ ListWheelScroll / NewYekSalaiPage / DetailedYekDescriptionPage

import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';
import 'package:yeksalai/constant/constant.dart';
import 'package:yeksalai/router/router.gr.dart';
import 'package:yeksalai/widgets/topWidgetDetailedYekDes.dart';
import 'package:parallax_image_ns/parallax_image.dart';

@RoutePage()
class DetailedYekDescriptionPage extends StatefulWidget {
  final int yekPageIndex;

  const DetailedYekDescriptionPage({super.key, required this.yekPageIndex});

  @override
  State<DetailedYekDescriptionPage> createState() =>
      _DetailedYekDescriptionPageState(
          yekIndex: yekPageIndex, yekdetailIndex: yekPageIndex);
}

class _DetailedYekDescriptionPageState extends State<DetailedYekDescriptionPage>
    with SingleTickerProviderStateMixin {
  int newIndex = 0;
  late PageController _pageController;
  // late Animation<double> _fadeAnimation;

  late AnimationController _fadeController;

  int selectedIndex = 0;
  List yekinfo = [];

  final GlobalKey _backgroundImageKey = GlobalKey();

  final int yekIndex;
  final int yekdetailIndex;

  _DetailedYekDescriptionPageState(
      {required this.yekIndex, required this.yekdetailIndex});

  @override
  void initState() {
    _pageController = PageController(
      viewportFraction: 1,
      initialPage: widget.yekPageIndex,
    );
    yekinfo = dataMap[widget.yekPageIndex]['YekInfo'];

    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 222),
    );
    // _fadeAnimation = Tween<double>(
    //   begin: 1,
    //   end: 0,
    // ).animate(_fadeController);

    super.initState();
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double scheight = MediaQuery.of(context).size.height;
    double scwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
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
            child:
                // PageView.builder(
                //   controller: _pageController,
                //   itemCount: dataMap.length,
                //   itemBuilder: (context, index) {
                //     return
                Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: Container(
                      // padding: const EdgeInsets.symmetric(vertical: 10.0),
                      constraints: const BoxConstraints(maxHeight: 360.0),
                      padding: const EdgeInsets.only(left: 26, top: 26),
                      height: scheight / 2.6,
                      width: scwidth,
                      child: AnimatedBuilder(
                        animation: _pageController,
                        builder: (context, child) {
                          double value = 1.0;

                          // if (_pageController.position.haveDimensions &&
                          //     constraints.maxWidth != 0) {
                          //   value =
                          //       (_pageController.page! - widget.yekPageIndex)
                          //           .abs();
                          //   value = 1 - (value * 0.5).clamp(0.0, 1.0);
                          // }

                          // newIndex = widget.yekPageIndex;

                          return GestureDetector(
                            onTap: () {
                              context.router.pop();
                            },
                            child: SwipeDetector(
                              onSwipeDown: (offset) {
                                context.router.pop();

                                // Navigator.pop(context, newIndex);
                              },
                              child: TopWidget(
                                selectedIndex: selectedIndex,
                                widget: widget,
                                value: value,
                                scwidth: scwidth,
                                topIndex: widget.yekPageIndex,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                  ),
                  Expanded(
                    flex: 7,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: yekinfo.length,
                      // physics: const NeverScrollableScrollPhysics(),
                      // primary: false,
                      padding: const EdgeInsets.all(20),
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: GestureDetector(
                              onTap: () {
                                context.router.push(ItemDescriptionRoute(
                                    yekdetailIndex: yekdetailIndex,
                                    yekIndex: index));
                                log("index ${index + 1} @ parallaxImage listview  DetailedYekDescriptionPage");
                              },
                              child: ParallaxImage(
                                color: Colors.transparent,
                                extent: 260.0,
                                image: ExactAssetImage(
                                  dataMap[yekdetailIndex]["YekInfo"][index]
                                      ['asset'],
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        dataMap[yekIndex]["YekInfo"][index]
                                            ["itemname"],
                                        style: TextStyle(
                                            fontSize: scwidth / 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[200]),
                                      )
                                          .animate(
                                            onPlay: (controller) =>
                                                controller.repeat(),
                                          )
                                          .shimmer(
                                            duration: const Duration(
                                                milliseconds: 4444),
                                            color: Colors.grey[800],
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )));
  }
}

class BgStack extends StatelessWidget {
  final GlobalKey _globalKey = GlobalKey();
  final int yekIndex;

  final int yekPageIndex;

  BgStack({
    super.key,
    required this.imagePath,
    required this.isSelected,
    required this.yekPageIndex,
    required this.yekIndex,
  });

  final String imagePath;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, 6),
            blurRadius: 8,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: AspectRatio(
          aspectRatio: .9,
          child: Image.asset(
            opacity: const AlwaysStoppedAnimation(.8),
            imagePath,
            fit: BoxFit.cover,
            key: _globalKey,
          )
              .animate(
                onPlay: (controller) => controller.repeat(),
              )
              .shimmer(
                  curve: const ElasticOutCurve(3),
                  duration: const Duration(milliseconds: 5000),

                  // color: dataMap[yekIndex]["YekInfo"][yekPageIndex]["color"],
                  blendMode: BlendMode.srcATop),
        ),
      ),
    );
  }
}
