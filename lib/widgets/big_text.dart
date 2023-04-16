import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class BigText extends StatefulWidget {
  final String text;
  final double size;
  final Color color;
  final TextOverflow overflow;

  const BigText(
      {Key? key,
      required this.text,
      this.size = 0,
      this.color = Colors.black,
      this.overflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => BigTextState();
}

class BigTextState extends State<BigText> {
  double get size => widget.size;

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      overflow: widget.overflow,
      maxLines: 1,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: widget.color,
        fontSize: size == 0 ? Dimensions.font20 : size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
