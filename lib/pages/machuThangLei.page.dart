//! / landing page / DashBoardPage / MachuThangLeiPage

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MachuThangLeiPage extends StatelessWidget {
  const MachuThangLeiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 201, 176, 245),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          // image: DecorationImage(
          //     scale: 2,
          //     alignment: Alignment(0, -.9),
          //     image: AssetImage(
          //       "assets/images/SanamahiLogo.png",
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
        child: const Column(
          children: [Text("MachuThangLeiPage")],
        ),
      ),
    );
  }
}
