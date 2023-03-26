import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget({
    Key? key,
    required this.text,
    this.color,
    this.fontWeight,
    this.textStyle,
    this.textDecoration,
    required this.textSize,
    this.isTitle = false,
    this.maxLines,
  }) : super(key: key);
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double textSize;
  final TextStyle? textStyle;
  final TextDecoration? textDecoration;
  bool isTitle;
  int? maxLines;
  @override
  Widget build(BuildContext context) {
    return Text(
      //softWrap: false,
     overflow: TextOverflow.ellipsis,
      text,
      maxLines: maxLines,
      style: TextStyle(
       
          color: color,
          fontSize: textSize,
          fontWeight: isTitle ? FontWeight.bold : FontWeight.normal),
    );
  }
}
