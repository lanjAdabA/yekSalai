//! / landing page / DashBoardPage / YekThoknabaPage

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:yeksalai/widgets/searchCardWidget.dart';

@RoutePage()
class YekThoknabaPage extends StatelessWidget {
  const YekThoknabaPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 201, 176, 245),
      ),
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
        child: Column(
          children: [
            SearchCardWidget(screenHeight: screenHeight),
            SizedBox(
              height: screenHeight / 54,
            ),
          ],
        ),
      ),
    );
  }
}
