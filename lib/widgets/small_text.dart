import 'package:flutter/material.dart';

@immutable
class SmallText extends StatelessWidget {
  final Color? color;
  final double? size;
  final double? height;
  final String text;

  const SmallText({
    Key? key,
    required this.text,
    this.color,
    this.size,
    this.height,
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
