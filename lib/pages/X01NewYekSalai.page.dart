// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_animate/flutter_animate.dart';
// import 'package:yeksalai/constant/constant.dart';
//! pageView()
// @RoutePage()
// class NewYekSalaiPage extends StatefulWidget {
//   final int yekPageIndex;
//   final Color yekColor;
//   const NewYekSalaiPage(
//       {super.key, required this.yekPageIndex, required this.yekColor});

//   @override
//   State<NewYekSalaiPage> createState() => _NewYekSalaiPageState();
// }

// class _NewYekSalaiPageState extends State<NewYekSalaiPage> {
//   late PageController _pageController;

//   @override
//   void initState() {
//     _pageController =
//         PageController(viewportFraction: 1, initialPage: widget.yekPageIndex);

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
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomLeft,
//                 stops: [0.1, 0.5, 0.7],
//                 colors: [
//                   Color.fromARGB(255, 201, 176, 245),
//                   Color.fromARGB(255, 225, 211, 248),
//                   Color.fromARGB(255, 234, 229, 246),
//                 ],
//               ),
//             ),
//             child: PageView.builder(
//               controller: _pageController,
//               itemCount: dataMap.length,
//               itemBuilder: (context, index) {
//                 return AnimatedBuilder(
//                   animation: _pageController,
//                   builder: (context, child) {
//                     double value = 1.0;
//                     double offset =
//                         _pageController.hasClients ? _pageController.offset : 0;
//                     if (_pageController.position.haveDimensions &&
//                         constraints.maxWidth != 0) {
//                       value = (_pageController.page! - index).abs();
//                       value = 1 - (value * 0.5).clamp(0.0, 1.0);
//                     }
//                     return Center(
//                       child: SizedBox(
//                         height: MediaQuery.of(context).size.height * 0.96,
//                         width: MediaQuery.of(context).size.width * 0.96,
//                         child: Stack(
//                           fit: StackFit.expand,
//                           children: [
//                             Transform.translate(
//                               offset: Offset(
//                                   offset *
//                                       0, // Adjust horizontal parallax effect strength
//                                   value *
//                                       MediaQuery.of(context).size.height *
//                                       0), // Adjust vertical parallax effect strength
//                               child: SizedBox(
//                                 height:
//                                     MediaQuery.of(context).size.height * 0.4,
//                                 width: MediaQuery.of(context).size.width * 0.4,
//                                 child: ClipRRect(
//                                   borderRadius: BorderRadius.circular(26),
//                                   child: Image.asset(
//                                     dataMap[index]["BG"]!,
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Transform.translate(
//                               offset: Offset(
//                                   -value *
//                                       MediaQuery.of(context).size.height *
//                                       .01,
//                                   value *
//                                       MediaQuery.of(context).size.height *
//                                       0.06),
//                               child: Image.asset(dataMap[index]["splash"]!,
//                                   fit: BoxFit.contain),
//                             ),
//                             Transform.translate(
//                               offset: Offset(
//                                   0.0,
//                                   value *
//                                       MediaQuery.of(context).size.height *
//                                       0.09),
//                               child: Image.asset(
//                                 dataMap[index]["char"]!,
//                                 fit: BoxFit.contain,
//                               ),
//                             ),
//                             Text(
//                               dataMap[index]["Yek"]!,
//                               style: const TextStyle(fontSize: 68),
//                             )
//                                 .animate(
//                                   onPlay: (controller) => controller.repeat(),
//                                 )
//                                 .shimmer(
//                                   duration: const Duration(milliseconds: 4444),
//                                   color: const Color(0xFF80DDFF),
//                                 ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }



//!
//todo
//?
// @
// //

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const App());
// }

// class App extends StatefulWidget {
//   const App({Key? key}) : super(key: key);

//   @override
//   State<App> createState() => _AppState();
// }

// class _AppState extends State<App> {
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Parallax Images',
//       debugShowCheckedModeBanner: false,
//       home: VideosScreen(),
//     );
//   }
// }

// class VideosScreen extends StatefulWidget {
//   const VideosScreen({Key? key}) : super(key: key);

//   @override
//   State<VideosScreen> createState() => _VideosScreenState();
// }

// class _VideosScreenState extends State<VideosScreen> {
//   late PageController _pageController;

//   int selectedIndex = 0;

//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController(viewportFraction: 0.8);
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Parallax Images'),
//       ),
//       body: PageView.builder(
//         controller: _pageController,
//         itemCount: 5, // Assuming you have 5 cards
//         itemBuilder: (context, index) {
//           return VideoCard(
//             imagePath: 'assets/blueBG.jpg', // Replace with your image path
//             isSelected: selectedIndex == index,
//           );
//         },
//         onPageChanged: (i) => setState(() => selectedIndex = i),
//       ),
//     );
//   }
// }

// class VideoCard extends StatelessWidget {
//   final GlobalKey _globalKey = GlobalKey();

//   VideoCard({
//     Key? key,
//     required this.imagePath,
//     required this.isSelected,
//   }) : super(key: key);

//   final String imagePath;
//   final bool isSelected;

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 250),
//       padding: isSelected
//           ? const EdgeInsets.symmetric(vertical: 16, horizontal: 4)
//           : const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.3),
//             offset: const Offset(0, 6),
//             blurRadius: 8,
//           ),
//         ],
//       ),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(16),
//         child: Flow(
//           delegate: ParallaxFlowDelegate(
//               backgroundImageKey: _globalKey,
//               scrollable: Scrollable.of(context),
//               listItemContext: context),
//           children: [
//             AspectRatio(
//               aspectRatio: .9,
//               child: Image.asset(
//                 imagePath,
//                 fit: BoxFit.cover,
//                 key: _globalKey,
//               ),
//             ),
//           ],


//         ),
//       ),
//     );
//   }
// }

// class ParallaxFlowDelegate extends FlowDelegate {
//   ParallaxFlowDelegate({
//     required this.scrollable,
//     required this.listItemContext,
//     required this.backgroundImageKey,
//   }) : super(repaint: scrollable.position);

//   final ScrollableState scrollable;
//   final BuildContext listItemContext;
//   final GlobalKey backgroundImageKey;

//   @override
//   BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
//     return BoxConstraints.tightFor(
//       height: constraints.maxHeight,
//     );
//   }

//   @override
//   void paintChildren(FlowPaintingContext context) {
//     // Calculate the position of this list item within the viewport.
//     final scrollableBox = scrollable.context.findRenderObject() as RenderBox;
//     final listItemBox = listItemContext.findRenderObject() as RenderBox;
//     final listItemOffset = listItemBox.localToGlobal(
//       listItemBox.size.topCenter(Offset.zero),
//       ancestor: scrollableBox,
//     );

//     // Determine the percent position of this list item within the
//     // scrollable area.
//     final viewportDimension = scrollable.position.viewportDimension;
//     final scrollFraction =
//         (listItemOffset.dx / viewportDimension).clamp(0.0, 1.0);

//     // Calculate the horizontal alignment of the background
//     // based on the scroll percent.
//     final horizontalAlignment = Alignment(scrollFraction * 2 - 1, 0);

//     // Convert the background alignment into a pixel offset for
//     // painting purposes.
//     final backgroundSize =
//         (backgroundImageKey.currentContext!.findRenderObject() as RenderBox)
//             .size;
//     final listItemSize = context.size;
//     final childRect = horizontalAlignment.inscribe(
//       backgroundSize,
//       Offset.zero & listItemSize,
//     );

//     // Paint the background.
//     context.paintChild(
//       0,
//       transform:
//           Transform.translate(offset: Offset(childRect.left, 0)).transform,
//     );
//   }

//   @override
//   bool shouldRepaint(ParallaxFlowDelegate oldDelegate) {
//     return scrollable != oldDelegate.scrollable ||
//         listItemContext != oldDelegate.listItemContext ||
//         backgroundImageKey != oldDelegate.backgroundImageKey;
//   }
// }
