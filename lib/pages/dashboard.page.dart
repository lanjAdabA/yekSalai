import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:yeksalai/constant/constant.dart';

import 'package:yeksalai/widgets/carouselSliderBuilder.dart';
import 'package:yeksalai/widgets/listWheelScrollView.dart';
//! / landing page / DashBoardPage

@RoutePage()
class DashBoardPage extends StatefulWidget {
  const DashBoardPage({
    super.key,
  });

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // double displayWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              scale: 2,
              alignment: Alignment(0, -.9),
              image: AssetImage(
                "assets/images/SanamahiLogo.png",
              )),
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
        child: Column(
          children: [
            const Expanded(flex: 5, child: ListWheelScroll()),
            Expanded(flex: 2, child: carouselSliderBuilder(dataMap: dataMap)),
          ],
        ),
      ),
    );
  }
}
