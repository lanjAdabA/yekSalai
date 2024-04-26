import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class SearchCardWidget extends StatefulWidget {
  const SearchCardWidget({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  State<SearchCardWidget> createState() => _SearchCardWidgetState();
}

class _SearchCardWidgetState extends State<SearchCardWidget> {
  bool _languageIsEnglish = true;

  // Function to handle switching to English
  void switchToEnglish() {
    setState(() {
      _languageIsEnglish = true;
    });
  }

  // Function to handle switching to the other language
  void switchToOtherLanguage() {
    setState(() {
      _languageIsEnglish = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 42),
      child: SizedBox(
        height: screenHeight / 1.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: screenHeight / 43,
            ),
            TextFieldsData(
                languageIsEnglish: _languageIsEnglish,
                screenWidth: screenWidth,
                widget: widget),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: switchToEnglish,
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          // Color when button is pressed (active)
                          return Colors
                              .red; // Change to the desired active color
                        }
                        // Default color
                        return Colors.black;
                      },
                    ),
                  ),
                  child: Text(
                    'Switch to English',
                    style: TextStyle(
                        fontSize: 16,
                        color: _languageIsEnglish ? Colors.blue : Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: switchToOtherLanguage,
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          // Color when button is pressed (active)
                          return Colors
                              .red; // Change to the desired active color
                        }
                        // Default color
                        return Colors.black;
                      },
                    ),
                  ),
                  child: Text(
                    'Switch to ꯃꯦꯏꯇꯦꯏ ꯃꯥꯌꯦꯛ꯫',
                    style: TextStyle(
                        fontSize: 16,
                        color: _languageIsEnglish ? Colors.black : Colors.blue),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldsData extends StatelessWidget {
  const TextFieldsData({
    super.key,
    required bool languageIsEnglish,
    required this.screenWidth,
    required this.widget,
  }) : _languageIsEnglish = languageIsEnglish;

  final bool _languageIsEnglish;
  final double screenWidth;
  final SearchCardWidget widget;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
            height: 20,
            width: _languageIsEnglish ? screenWidth / 1.8 : screenWidth / 2.4,
            child: Marquee(
              key: Key("$_languageIsEnglish"),
              text: _languageIsEnglish
                  ? 'Enter Surname/Yumnak in the field provided below.'
                  : "ꯃꯈꯥꯒꯤ ꯐꯤꯜꯗ ꯑꯁꯤꯗꯥ ꯌꯨꯃꯅꯥꯛ ꯃꯦꯅꯕꯤꯌꯨ꯫",
              style: const TextStyle(fontWeight: FontWeight.bold),
              scrollAxis: Axis.horizontal,
              crossAxisAlignment: CrossAxisAlignment.center,
              blankSpace: 30,
              velocity: 60,
              pauseAfterRound: const Duration(seconds: 1),
              showFadingOnlyWhenScrolling: true,
              fadingEdgeStartFraction: 0.2,
              fadingEdgeEndFraction: 0.2,
              numberOfRounds: 5,
              startPadding: 10,
              accelerationDuration: const Duration(seconds: 1),
              accelerationCurve: Curves.easeInCirc,
              decelerationDuration: const Duration(milliseconds: 500),
              decelerationCurve: Curves.easeOut,
              // textDirection:
              //     _languageIsEnglish ? TextDirection.rtl : TextDirection.ltr,
            )),
        SizedBox(
          height: widget.screenHeight / 84,
        ),
        Card(
          elevation: 4,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(7)),
            height: 43,
            child: TextFormField(
              onChanged: ((value) {}),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: 7),
                prefixIcon: const Icon(Icons.search),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
                hintText: _languageIsEnglish
                    ? 'Type your surname here'
                    : "ꯌꯨꯃꯅꯛ ꯃꯦꯅꯕꯤꯌꯨ꯫",
              ),
            ),
          ),
        ),
        SizedBox(
          height: widget.screenHeight / 64,
        ),
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 6,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepPurple[400],
                  borderRadius: BorderRadius.circular(10)),
              width: 150,
              height: 50,
              child: Center(
                child: Text(
                  _languageIsEnglish ? 'Search' : "ꯊꯤꯕ",
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            )),
        SizedBox(
          height: widget.screenHeight / 24,
        ),
        const Text(
          "OR",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: widget.screenHeight / 24,
        ),
        FittedBox(
          child: SizedBox(
              height: 20,
              width:
                  _languageIsEnglish ? screenWidth / 1.46 : screenWidth / 2.2,
              child: Marquee(
                key: Key("$_languageIsEnglish"),
                text: _languageIsEnglish
                    ? 'Enter Surname/Yumnak in the fields provided below to compare.'
                    : "ꯃꯈꯥꯒꯤ ꯐꯤꯜꯗ ꯑꯁꯤꯗꯥ ꯌꯨꯃꯅꯥꯛ ꯃꯦꯟꯁꯤꯅꯕꯤꯌꯨ꯫",
                style: const TextStyle(fontWeight: FontWeight.bold),
                scrollAxis: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.center,
                blankSpace: 30,
                velocity: 60,
                pauseAfterRound: const Duration(seconds: 1),
                showFadingOnlyWhenScrolling: true,
                fadingEdgeStartFraction: 0.2,
                fadingEdgeEndFraction: 0.2,
                numberOfRounds: 5,
                startPadding: 10,
                accelerationDuration: const Duration(seconds: 1),
                accelerationCurve: Curves.easeInCirc,
                decelerationDuration: const Duration(milliseconds: 500),
                decelerationCurve: Curves.easeOut,
                // textDirection:
                //     _languageIsEnglish ? TextDirection.rtl : TextDirection.ltr,
              )),
        ),
        SizedBox(
          height: widget.screenHeight / 84,
        ),
        Card(
          elevation: 4,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(7)),
            height: 43,
            child: TextFormField(
              onChanged: ((value) {}),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: 7),
                prefixIcon: const Icon(Icons.search),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
                hintText: _languageIsEnglish
                    ? 'Enter surname1'
                    : "ꯑꯍꯥꯅꯕꯥ ꯌꯨꯃꯅꯛ ꯃꯦꯅꯁꯤꯅꯕꯤꯌꯨ꯫",
              ),
            ),
          ),
        ),
        SizedBox(
          height: widget.screenHeight / 64,
        ),
        Card(
          elevation: 4,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(7)),
            height: 43,
            child: TextFormField(
              onChanged: ((value) {}),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(top: 7),
                prefixIcon: const Icon(Icons.search),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(7)),
                hintText: _languageIsEnglish
                    ? 'Enter surname2'
                    : "ꯑꯅꯤꯁꯨꯕꯥ ꯌꯨꯃꯅꯛ ꯃꯦꯅꯁꯤꯅꯕꯤꯌꯨ꯫",
              ),
            ),
          ),
        ),
        SizedBox(
          height: widget.screenHeight / 64,
        ),
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 6,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.deepPurple[400],
                  borderRadius: BorderRadius.circular(10)),
              width: 150,
              height: 50,
              child: Center(
                child: Text(
                  _languageIsEnglish ? 'Compare' : "ꯆꯥꯡꯗꯝꯅꯕ",
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            )),
      ],
    );
  }
}
