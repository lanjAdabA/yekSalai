//! / landing page / DashBoardPage/ ListWheelScroll / NewYekSalaiPage / DetailedYekDescriptionPage

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yeksalai/constant/constant.dart';

@RoutePage()
class DetailedYekDescriptionPage extends StatefulWidget {
  final int yekPageIndex;

  const DetailedYekDescriptionPage({super.key, required this.yekPageIndex});

  @override
  State<DetailedYekDescriptionPage> createState() =>
      _DetailedYekDescriptionPageState();
}

class _DetailedYekDescriptionPageState
    extends State<DetailedYekDescriptionPage> {
  late PageController _pageController;

  @override
  @override
  void initState() {
    _pageController = PageController(
      viewportFraction: 1,
      initialPage: widget.yekPageIndex,
    );
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double scheight = MediaQuery.of(context).size.height;
    double scwidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Container(
      color: Colors.amber,
      height: scheight,
      width: scwidth,
      child: PageView.builder(
        controller: _pageController,
        itemCount: dataMap.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                //! -->>

                //!-->
                AnimatedBuilder(
                  animation: _pageController,
                  builder: (context, child) {
                    double value = 1.0;

                    // double offset = _pageController.hasClients
                    //     ? _pageController.offset
                    //     : 0;
                    if (_pageController.position.haveDimensions
                        // &&
                        //     constraints.maxWidth != 0
                        ) {
                      value = (_pageController.page! - index).abs();
                      value = 1 - (value * 0.5).clamp(0.0, 1.0);
                    }

                    return Center(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.5,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Transform.translate(
                              offset: Offset(
                                  0.0,
                                  value *
                                      MediaQuery.of(context).size.height *
                                      0.09),
                              child: Image.asset(
                                dataMap[index]["char"]!,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )
              ],
            ),
          );
        },
        // onPageChanged: (i) => setState(() => selectedIndex = i),
      ),
    ));
  }
}
