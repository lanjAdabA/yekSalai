import 'package:flutter/material.dart';

class OnButtonPressedPopUp extends StatelessWidget {
  const OnButtonPressedPopUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      buttonPadding: const EdgeInsets.all(20),
      title: const Text("Are you sure you want to exit?"),
      actions: <Widget>[
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[100]),
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
  }
}
