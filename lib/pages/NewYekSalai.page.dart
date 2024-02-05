import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:yeksalai/constant/constant.dart';

@RoutePage()
class NewYekSalaiPage extends StatefulWidget {
  const NewYekSalaiPage({super.key});

  @override
  State<NewYekSalaiPage> createState() => _NewYekSalaiPageState();
}

class _NewYekSalaiPageState extends State<NewYekSalaiPage> {
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(viewportFraction: 1);
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
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        itemCount: dataMap.length - 1,
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Stack(
              children: [
                ParallaxBackground(
                  scrollController: _pageController,
                  backgroundImage: AssetImage(dataMap[index]["BG"]),
                ),
                Image.asset(dataMap[index]["splash"], fit: BoxFit.contain),
                SizedBox(
                  height: scheight,
                  child: Image.asset(dataMap[index]["char"]),
                ),
                Text(
                  dataMap[index]["Yek"],
                  style: const TextStyle(fontSize: 24),
                ),
                // More content widgets
              ],
            ),
          );
        },
      ),
    );
  }
}

class ParallaxBackground extends StatelessWidget {
  final ScrollController scrollController;
  final AssetImage backgroundImage;

  const ParallaxBackground({
    super.key,
    required this.scrollController,
    required this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: scrollController,
      builder: (context, child) {
        double offset =
            scrollController.hasClients ? scrollController.offset : 0;
        return Transform.translate(
          offset: const Offset(2, 1), // Adjust parallax effect strength
          child: Image(image: backgroundImage, fit: BoxFit.cover),
        );
      },
    );
  }
}
