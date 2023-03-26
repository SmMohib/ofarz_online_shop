import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ofarz_online_shop/utility/color.dart';
import 'package:ofarz_online_shop/utility/util.dart';
import 'package:ofarz_online_shop/widgets/text_widget.dart';

class MoreButton extends StatelessWidget {
  MoreButton({
    super.key,
    required this.fct,
    required this.buttonText,
    required this.color,
  });
  final Function fct;
  final String buttonText;
  final Color color;
  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).sizeScreen;
    return InkWell(
      onTap: () {
        fct();
      },
      child: Material(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  // ignore: prefer_const_constructors
                  decoration: BoxDecoration(
                      color: color,
                      borderRadius:
                          // ignore: prefer_const_constructors
                          BorderRadius.only(
                              bottomRight: Radius.circular(4),
                              topRight: Radius.circular(4))),
                  height: 60,
                  width: 10,
                ),
                SizedBox(
                  width: 10,
                ),
                TextWidget(
                  text: buttonText,
                  textSize: 15,
                  isTitle: true,
                ),
              ],
            ),
            InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {},
                child: Row(
                  children: [
                    TextWidget(text: 'See More', textSize: 15),
                    Icon(
                      Icons.arrow_right,
                      color: Color.fromARGB(255, 0, 0, 0),
                      size: 12,
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
