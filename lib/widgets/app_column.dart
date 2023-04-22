import 'package:ctrleat/widgets/small_text.dart';
import 'package:flutter/material.dart';

import '../pages/home/color.dart';
import '../utils/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
          color: Colors.yellow.shade900,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(children: [
          Wrap(
            children: List.generate(
              1,
              (index) => Row(
                children: [
                  Icon(
                    Icons.star,
                    color: AppColors.brightgreen,
                    size: 10,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SmallText(text: "4"),
                  SizedBox(
                    width: 5,
                  ),
                  SmallText(text: "0"),
                  SizedBox(
                    width: 5,
                  ),
                  SmallText(text: "comments"),
                ],
              ),
            ),
          )
        ]),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
                icon: Icons.circle_sharp,
                text: "Normal",
                iconColor: AppColors.black),
          ],
        )
      ],
    );
  }
}
