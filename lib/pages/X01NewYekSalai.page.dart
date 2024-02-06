// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:yeksalai/constant/constant.dart';

// @RoutePage()
// class NewYekSalaiPage extends StatefulWidget {
//   const NewYekSalaiPage({super.key}); // Fixed typo

//   @override
//   State<NewYekSalaiPage> createState() => _NewYekSalaiPageState();
// }

// class _NewYekSalaiPageState extends State<NewYekSalaiPage> {
//   late PageController _pageController;

//   @override
//   void initState() {
//     _pageController = PageController(viewportFraction: 1);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           return Container(
//               decoration: const BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomLeft,
//                   stops: [0.1, 0.5, 0.7],
//                   colors: [
//                     Color.fromARGB(255, 201, 176, 245),
//                     Color.fromARGB(255, 225, 211, 248),
//                     Color.fromARGB(255, 234, 229, 246),
//                   ],
//                 ),
//               ),
//               child: PageView.builder(
//                 controller: _pageController,
//                 itemCount: dataMap.length - 1,
//                 itemBuilder: (context, index) {
//                   return AnimatedBuilder(
//                     animation: _pageController,
//                     builder: (context, child) {
//                       double value = 1.0;
//                       if (_pageController.position.haveDimensions &&
//                           constraints.maxWidth != 0) {
//                         value = (_pageController.page! - index).abs();
//                         value = 1 - (value * 0.5).clamp(0.0, 1.0);
//                       }
//                       return Center(
//                         child: SizedBox(
//                           height: MediaQuery.of(context).size.height * .96,
//                           width: MediaQuery.of(context).size.width * .96,
//                           child: Stack(
//                             fit: StackFit.expand,
//                             children: [
//                               Transform.translate(
//                                 // Issue may be here, verify constraints.maxWidth usage
//                                 offset: Offset(
//                                     value * constraints.maxWidth * 0.0, 0.2),
//                                 child: SizedBox(
//                                   height:
//                                       MediaQuery.of(context).size.height * 0.4,
//                                   width:
//                                       MediaQuery.of(context).size.width * 0.4,
//                                   child: ClipRRect(
//                                     borderRadius: BorderRadius.circular(26),
//                                     child: Image.asset(
//                                       dataMap[index]["BG"],
//                                       fit: BoxFit.fill,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Transform.translate(
//                                 // Issue may be here, verify constraints.maxWidth usage
//                                 offset: Offset(
//                                     -value * constraints.maxWidth * 0.11, 0.2),
//                                 child: Image.asset(dataMap[index]["splash"],
//                                     fit: BoxFit.contain),
//                               ).animate().effect(
//                                   duration: const Duration(microseconds: 23)),
//                               Transform.translate(
//                                 // Issue may be here, verify constraints.maxHeight usage
//                                 offset: Offset(
//                                     0.0, value * constraints.maxHeight * .091),
//                                 child: Image.asset(
//                                   dataMap[index]["char"],
//                                   fit: BoxFit.contain,
//                                 ),
//                               ),
//                               Text(
//                                 dataMap[index]["Yek"],
//                                 style: const TextStyle(fontSize: 68),
//                               )
//                                   .animate(
//                                       onPlay: (controller) =>
//                                           controller.repeat())
//                                   .shimmer(
//                                       duration: 4444.ms,
//                                       color: const Color(0xFF80DDFF))
//                                   .animate() // this wraps the previous Animate in another Animate
//                               // .fadeIn(duration: 1200.ms, curve: Curves.easeOutQuad)
//                               // .slide(),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   );
//                 },
//               ));
//         },
//       ),
//     );
//   }
// }
