import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yeksalai/pages/dashboard.page.dart';
import 'package:yeksalai/pages/searchAndCompare.page.dart';

@RoutePage()
class CustomNavigationHomePage extends StatefulWidget {
  const CustomNavigationHomePage({super.key});

  @override
  State<CustomNavigationHomePage> createState() =>
      _CustomNavigationHomePageState();
}

class _CustomNavigationHomePageState extends State<CustomNavigationHomePage> {
  int selectedIndex = 0;
  void navigationBottomBar(int index) {
    setState(() {
      selectedIndex = index;
      HapticFeedback.lightImpact();
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
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 201, 176, 245),
          title: const Text("Yek Salai"),
        ),
        drawer: const Drawer(),
        body: chartPage[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            // backgroundColor: const Color.fromARGB(0, 48, 48, 50),
            //
            selectedItemColor: const Color.fromARGB(255, 162, 16, 206),
            unselectedItemColor: const Color.fromARGB(255, 158, 160, 155),
            currentIndex: selectedIndex,
            selectedFontSize: 18,
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
    );
  }

  Future<bool> _onBackButtonPressed(BuildContext context) async {
    bool exitApp = await showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            buttonPadding: const EdgeInsets.all(20),
            title: const Text("Are you sure you want to exit?"),
            actions: <Widget>[
              ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.blue[100]),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: const Text("Cancel"),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: const Text("Ok"),
              ),
            ],
          );
        }));

    return exitApp;
  }
}
