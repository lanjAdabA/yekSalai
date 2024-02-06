import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:yeksalai/constant/constant.dart';

@RoutePage()
class NewYekSalaiPage extends StatefulWidget {
  final int yekPageIndex;
  final Color yekColor;
  const NewYekSalaiPage(
      {super.key, required this.yekPageIndex, required this.yekColor});

  @override
  State<NewYekSalaiPage> createState() => _NewYekSalaiPageState();
}

class _NewYekSalaiPageState extends State<NewYekSalaiPage>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  late Animation<double> _fadeAnimation;
  late AnimationController _fadeController;

  @override
  void initState() {
    _pageController = PageController(
      viewportFraction: 1,
      initialPage: widget.yekPageIndex,
    );

    _fadeController = AnimationController(
      vsync: this,
      duration:
          const Duration(milliseconds: 222), // Adjust the duration as needed
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
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
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
                return AnimatedBuilder(
                  animation: _pageController,
                  builder: (context, child) {
                    double value = 1.0;
                    double offset =
                        _pageController.hasClients ? _pageController.offset : 0;
                    if (_pageController.position.haveDimensions &&
                        constraints.maxWidth != 0) {
                      value = (_pageController.page! - index).abs();
                      value = 1 - (value * 0.5).clamp(0.0, 1.0);
                    }
                    return Center(
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.96,
                        width: MediaQuery.of(context).size.width * 0.96,
                        child: Stack(
                          fit: StackFit.expand,
                          children: [
                            Transform.translate(
                              offset: Offset(
                                  offset *
                                      0, // Adjust horizontal parallax effect strength
                                  value *
                                      MediaQuery.of(context).size.height *
                                      0), // Adjust vertical parallax effect strength
                              child: SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                width: MediaQuery.of(context).size.width * 0.4,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(26),
                                  child: Image.asset(
                                    dataMap[index]["BG"]!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Transform.translate(
                              filterQuality: FilterQuality.high,
                              offset: Offset(
                                -value *
                                    MediaQuery.of(context).size.height *
                                    0.01,
                                value *
                                    MediaQuery.of(context).size.height *
                                    0.15,
                              ),
                              child: FadeTransition(
                                opacity: _fadeAnimation,
                                child: Image.asset(
                                  dataMap[index]["splash"]!,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
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
                            Text(
                              dataMap[index]["Yek"]!,
                              style: const TextStyle(fontSize: 68),
                            )
                                .animate(
                                  onPlay: (controller) => controller.repeat(),
                                )
                                .shimmer(
                                  duration: const Duration(milliseconds: 4444),
                                  color: const Color(0xFF80DDFF),
                                ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
