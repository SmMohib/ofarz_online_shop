import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ofarz_online_shop/utility/color.dart';
import 'package:ofarz_online_shop/widgets/text_widget.dart';

class SocialButton extends StatelessWidget {
  SocialButton(
      {super.key,
      required this.color,
      required this.fct,
      this.image,
      this.text});
  String? text, image;
  Function fct;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: color,
        child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {
              fct();
            },
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: NetworkImage(
                      image.toString(),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  TextWidget(
                    text: text.toString(),
                    textSize: 16,
                    color: cardColor,
                  )
                ],
              ),
            )),
      ),
    );
  }
}
