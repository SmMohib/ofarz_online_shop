import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ofarz_online_shop/utility/color.dart';

class HoverButton extends StatelessWidget {
  HoverButton(
      {super.key,
      required this.onTap,
      required this.text,
      required this.color});
  Function onTap;
  String text;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: redClor, 
      ),
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed))
                return color; //<-- SEE HERE
              return null; // Defer to the widget's default.
            },
          ),
        ),
        child: Text(
          text.toString(),
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
