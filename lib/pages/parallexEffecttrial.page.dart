// import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const App());
// // }

// // class App extends StatefulWidget {
// //   const App({Key? key}) : super(key: key);

// //   @override
// //   State<App> createState() => _AppState();
// // }

// // class _AppState extends State<App> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return const MaterialApp(
// //       title: 'Parallax Images',
// //       debugShowCheckedModeBanner: false,
// //       home: VideosScreen(),
// //     );
// //   }
// // }

// class VideosScreen extends StatefulWidget {
//   const VideosScreen({super.key});

//   @override
//   State<VideosScreen> createState() => _VideosScreenState();
// }

// class _VideosScreenState extends State<VideosScreen> {
//   late PageController _pageController;

//   int selectedIndex = 0;

//   @override
//   void initState() {
//     super.initState();
//     _pageController = PageController(viewportFraction: 0.92);
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
//             imagePath: 'assets/BG.jpg', // Replace with your image path
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
//     super.key,
//     required this.imagePath,
//     required this.isSelected,
//   });

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
