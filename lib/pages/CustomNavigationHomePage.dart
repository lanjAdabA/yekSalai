import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:yeksalai/pages/dashboard.page.dart';
import 'package:yeksalai/pages/searchAndCompare.page.dart';
import 'package:yeksalai/router/router.gr.dart';
import 'package:yeksalai/widgets/onBackButtonPressedPopUp.dart';

//! / landing page
@RoutePage()
class CustomNavigationHomePage extends StatefulWidget {
  const CustomNavigationHomePage({super.key});

  @override
  State<CustomNavigationHomePage> createState() =>
      _CustomNavigationHomePageState();
}

class _CustomNavigationHomePageState extends State<CustomNavigationHomePage> {
  int selectedIndex = 0;
  // final PageController _controller =
  //     PageController(initialPage: 0, keepPage: true);
  final _advancedController = AdvancedDrawerController();
  void navigationBottomBar(int index) {
    setState(() {
      selectedIndex = index;
      // HapticFeedback.lightImpact();
    });
  }

  final List chartPage = [
    const SearchAndComparePage(),
    const DashBoardPage(),
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
        onWillPop: () => _onBackButtonPressed(context),
        child: AdvancedDrawer(
          controller: _advancedController,
          backdrop: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Theme.of(context).colorScheme.secondary.withOpacity(0.4),
                  Theme.of(context).colorScheme.primary.withOpacity(0.2)
                ],
              ),
            ),
          ),
          drawer: SafeArea(
            child: Container(
              child: ListTileTheme(
                textColor: Colors.white,
                iconColor: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 128.0,
                      height: 128.0,
                      margin: const EdgeInsets.only(
                        top: 24.0,
                        bottom: 64.0,
                      ),
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        color: Colors.black26,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset(
                        'assets/images/SanamahiLogo.png',
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          ListTile(
                            onTap: () {
                              _advancedController.hideDrawer();
                            },
                            leading: const Icon(Icons.home),
                            title: const Text('Home'),
                          ),
                          ListTile(
                            onTap: () {
                              context.router.push(const ContactRoute());
                            },
                            leading: const Icon(Icons.inbox),
                            title: const Text('contact us'),
                          ),
                          ListTile(
                            onTap: () {
                              // Navigator.pushNamed(
                              // context, TableScreen.routename);
                            },
                            leading: const Icon(Icons.info),
                            title: const Text('about'),
                          ),
                          ListTile(
                            onTap: () {
                              // Navigator.pushNamed(
                              // context, MobileSettings.routename);
                            },
                            leading: const Icon(Icons.settings),
                            title: const Text('setting'),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                onPressed: () {
                  _advancedController.showDrawer();
                },
                icon: ValueListenableBuilder<AdvancedDrawerValue>(
                  valueListenable: _advancedController,
                  builder: (_, value, __) {
                    return AnimatedSwitcher(
                      duration: const Duration(milliseconds: 05),
                      child: Icon(
                        value.visible ? Icons.clear : Icons.menu,
                        key: ValueKey<bool>(value.visible),
                      ),
                    );
                  },
                ),
                // icon: const Icon(Icons.menu),
              ),
              backgroundColor: const Color.fromARGB(255, 201, 176, 245),
              title: const Text("Yek Salai"),
            ),
            body: chartPage[selectedIndex],
            bottomNavigationBar: BottomNavigationBar(

                // backgroundColor: const Color.fromARGB(0, 48, 48, 50),
                //
                selectedItemColor: const Color.fromARGB(255, 162, 16, 206),
                unselectedItemColor: const Color.fromARGB(255, 158, 160, 155),
                currentIndex: selectedIndex,
                selectedFontSize: 16,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                unselectedFontSize: 10,
                enableFeedback: true,
                onTap: navigationBottomBar,
                items: [
                  BottomNavigationBarItem(
                      icon: SizedBox(
                          height: MediaQuery.of(context).size.height * .026,
                          child: const Icon(Icons.search)),
                      label: "Search"),
                  BottomNavigationBarItem(
                      icon: SizedBox(
                          height: MediaQuery.of(context).size.height * .026,
                          child: const Icon(Icons.dashboard)),
                      label: "DASHBOARD"),
                ]),
          ),
        ));
  }

  Future<bool> _onBackButtonPressed(BuildContext context) async {
    bool exitApp = await showDialog(
        context: context,
        builder: ((context) {
          return const OnButtonPressedPopUp();
        }));

    return exitApp;
  }
}
