import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NewYekSalaiPage extends StatelessWidget {
  const NewYekSalaiPage({super.key});

  @override
  Widget build(BuildContext context) {
    double scHeight = MediaQuery.of(context).size.height;
    double scWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: scHeight,
        width: scHeight,
        decoration: const BoxDecoration(
          // image: DecorationImage(
          //     scale: 1,
          //     fit: BoxFit.cover,
          //     // alignment: Alignment(0, -.9),
          //     image: AssetImage(
          //       "assets/images/BG/YellowBG.jpeg",
          //     )),
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
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/images/BG/redBG.jpg",
              fit: BoxFit.fill,
            ),
            Image.asset("assets/images/splash/yellow.png", fit: BoxFit.contain),
            Image.asset(
              "assets/images/char/char2.png",
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}
