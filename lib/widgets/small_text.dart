import 'package:flutter/material.dart';

@immutable
class SmallText extends StatelessWidget {
  Color? color;
  double size;
  double? height;
  final String text;

  SmallText({
    Key? key,
    required this.text,
    this.color,
    this.size = 12,
    this.height = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color ?? Colors.black,
        fontSize: size ?? 14.0,
        height: height ?? 1.0,
      ),
    );
  }
}
