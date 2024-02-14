//! / landing page / DashBoardPage/ ListWheelScroll / NewYekSalaiPage / DetailedYekDescriptionPage

import 'dart:developer';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';
import 'package:yeksalai/constant/constant.dart';
import 'package:yeksalai/router/router.gr.dart';

@RoutePage()
class DetailedYekDescriptionPage extends StatefulWidget {
  final int yekPageIndex;

  const DetailedYekDescriptionPage({super.key, required this.yekPageIndex});

  @override
  State<DetailedYekDescriptionPage> createState() =>
      _DetailedYekDescriptionPageState();
}

class _DetailedYekDescriptionPageState extends State<DetailedYekDescriptionPage>
    with SingleTickerProviderStateMixin {
  int newIndex = 0;
  late PageController _pageController;
  late Animation<double> _fadeAnimation;

  late AnimationController _fadeController;

  int selectedIndex = 0;

  @override
  void initState() {
    _pageController = PageController(
      viewportFraction: 1,
      initialPage: widget.yekPageIndex,
    );

    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 222),
    );
    _fadeAnimation = Tween<double>(
      begin: 1,
      end: 0,
    ).animate(_fadeController);

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
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      return SwipeDetector(
        onSwipeDown: (offset) {
          // context.router.pop();

          Navigator.pop(context, newIndex);
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
          child: PageView.builder(
            controller: _pageController,
            itemCount: dataMap.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 26, top: 26),
                      height: scheight / 2.6,
                      width: scwidth,
                      child: AnimatedBuilder(
                        animation: _pageController,
                        builder: (context, child) {
                          double value = 1.0;

                          if (_pageController.position.haveDimensions &&
                              constraints.maxWidth != 0) {
                            value = (_pageController.page! - index).abs();
                            value = 1 - (value * 0.5).clamp(0.0, 1.0);
                          }

                          newIndex = index;

                          return Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Stack(
                                  fit: StackFit.loose,
                                  children: [
                                    BgStack(
                                      imagePath: dataMap[index]["BG"],
                                      isSelected:
                                          selectedIndex == widget.yekPageIndex,
                                    ),
                                    Transform.translate(
                                        filterQuality: FilterQuality.high,
                                        offset: Offset(
                                          -value *
                                              MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.01,
                                          value *
                                              MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                        ),
                                        child: Hero(
                                          tag: "splash$index",
                                          child: Image.asset(
                                            dataMap[index]["splash"]!,
                                            fit: BoxFit.contain,
                                          ),
                                        )),
                                    Transform.translate(
                                      offset: Offset(
                                          0.0,
                                          value *
                                              MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.09),
                                      child: Hero(
                                        tag: "char$index",
                                        child: Image.asset(
                                          dataMap[index]["char"]!,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                  child: Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    dataMap[index]["Yek"]!,
                                    style: TextStyle(
                                        fontSize: scwidth / 14,
                                        color: Colors.white),
                                  )
                                      .animate(
                                        onPlay: (controller) =>
                                            controller.repeat(),
                                      )
                                      .shimmer(
                                        duration:
                                            const Duration(milliseconds: 4444),
                                        color: Colors.amber,
                                      ),
                                ),
                              ))
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
            onPageChanged: (i) => setState(() => selectedIndex = i),
          ),
        ),
      );
    }));
  }
}

class BgStack extends StatelessWidget {
  final GlobalKey _globalKey = GlobalKey();

  BgStack({
    super.key,
    required this.imagePath,
    required this.isSelected,
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
        child: Flow(
          delegate: ParallaxFlowDelegate(
              backgroundImageKey: _globalKey,
              scrollable: Scrollable.of(context),
              listItemContext: context),
          children: [
            AspectRatio(
              aspectRatio: .9,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                key: _globalKey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ParallaxFlowDelegate extends FlowDelegate {
  ParallaxFlowDelegate({
    required this.scrollable,
    required this.listItemContext,
    required this.backgroundImageKey,
  }) : super(repaint: scrollable.position);

  final ScrollableState scrollable;
  final BuildContext listItemContext;
  final GlobalKey backgroundImageKey;

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(
      height: constraints.maxHeight,
    );
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    // Calculate the position of this list item within the viewport.
    final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
    final listItemBox = listItemContext.findRenderObject() as RenderBox;
    final listItemOffset = listItemBox.localToGlobal(
      listItemBox.size.topCenter(Offset.zero),
      ancestor: scrollableBox,
    );

    // Determine the percent position of this list item within the
    // scrollable area.
    final viewportDimension = scrollable.position.viewportDimension;
    final scrollFraction =
        (listItemOffset.dx / viewportDimension).clamp(0.0, 1.0);

    // Calculate the horizontal alignment of the background
    // based on the scroll percent.
    final horizontalAlignment = Alignment(scrollFraction * 2 - 1, 0);

    // Convert the background alignment into a pixel offset for
    // painting purposes.
    final backgroundSize =
        (backgroundImageKey.currentContext!.findRenderObject() as RenderBox)
            .size;
    final listItemSize = context.size;
    final childRect = horizontalAlignment.inscribe(
      backgroundSize,
      Offset.zero & listItemSize,
    );

    // Paint the background.
    context.paintChild(
      0,
      transform:
          Transform.translate(offset: Offset(childRect.left, 0)).transform,
    );
  }

  @override
  bool shouldRepaint(ParallaxFlowDelegate oldDelegate) {
    return scrollable != oldDelegate.scrollable ||
        listItemContext != oldDelegate.listItemContext ||
        backgroundImageKey != oldDelegate.backgroundImageKey;
  }
}
