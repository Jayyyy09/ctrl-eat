import 'package:ctrleat/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '/utils/dimensions.dart';

class IconAndTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

  const IconAndTextWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,
            color: iconColor,
            size: Dimensions
                .iconSize24), // define icon, iconColor and Dimensions.iconSize24
        SizedBox(
          width: 5,
        ),
        SmallText(
            text: text,
            height:
                1.0), // add the required argument 'height' with a value of 1.0 or any other appropriate value
      ],
    );
  }
}
