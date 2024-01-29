import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:yeksalai/constant/constant.dart';

@RoutePage()
class YekSalaiPage extends StatelessWidget {
  final int yekIndex;
  final Color yekColor;
  const YekSalaiPage(
      {super.key, required this.yekIndex, required this.yekColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          dataMap[yekIndex]["Yek"],
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: yekColor),
        ),
        backgroundColor: const Color.fromARGB(255, 201, 176, 245),
      ),
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
              border: Border.all(color: yekColor, width: 3),
              borderRadius: BorderRadius.circular(22)),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
              child: Text(dataMap[yekIndex]["Yek"],
                  style: const TextStyle(fontSize: 40))),
        ),
      ),
    );
  }
}
