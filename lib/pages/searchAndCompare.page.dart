import 'package:flutter/material.dart';

class SearchAndComparePage extends StatefulWidget {
  const SearchAndComparePage({super.key});

  @override
  State<SearchAndComparePage> createState() => _SearchAndComparePageState();
}

class _SearchAndComparePageState extends State<SearchAndComparePage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenHeight,
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
        child: Column(
          children: [
            SearchCardWidget(screenHeight: screenHeight),
            SearchCardWidget(screenHeight: screenHeight),
          ],
        ),
      ),
    );
  }
}

class SearchCardWidget extends StatelessWidget {
  const SearchCardWidget({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: const BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizedBox(height: screenHeight / 4),

                  Card(
                    elevation: 10,
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 253, 253, 252),
                          borderRadius: BorderRadius.circular(7)),
                      height: 43,
                      child: TextFormField(
                        onChanged: ((value) {}),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(top: 7),
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(7)),
                          hintText: 'Type your surname here',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight / 84,
                  ),
                  const FittedBox(
                    child: Row(
                      children: [
                        Text(
                          'Enter Surname/Yumnak in the field provided above',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight / 64,
                  ),

                  Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.deepPurple[400],
                            borderRadius: BorderRadius.circular(10)),
                        width: 150,
                        height: 50,
                        child: const Center(
                          child: Text(
                            'Search',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      )

                      // ElevatedButton(
                      //     onPressed: () {},
                      //     child: const Padding(
                      //       padding: EdgeInsets.symmetric(vertical: 10),
                      //       child: Text('Search Gazette'),
                      //     )),
                      )
                  // Add more cards for additional features
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
