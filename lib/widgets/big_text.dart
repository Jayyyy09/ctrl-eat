import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../utils/dimensions.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  BigText(
      {Key? key,
      this.color = const Color(000000),
      required this.text,
      this.size = 20,
      this.overflow = TextOverflow.fade,
      int? maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      overflow: overflow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size == 0 ? Dimensions.font20 : size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
