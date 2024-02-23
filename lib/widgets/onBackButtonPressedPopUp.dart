//! / landing page / OnButtonPressedPopUp [will popup on backAction either on
//! dashboardPage or on SearchPage]

import 'package:flutter/material.dart';

class OnButtonPressedPopUp extends StatelessWidget {
  const OnButtonPressedPopUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        "Exit Yek Salai",
        style: TextStyle(fontSize: 18),
      ),
      buttonPadding: const EdgeInsets.all(32),
      content: const Padding(
        padding: EdgeInsets.only(bottom: 16.0),
        child: Text(
          "Are you sure you want to exit?",
          style: TextStyle(fontSize: 20),
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[100]),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: const Text(
            "Cancel",
            style: TextStyle(color: Colors.black54),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: const Text(
            "Ok",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
