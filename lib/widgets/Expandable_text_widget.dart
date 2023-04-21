import 'package:flutter/material.dart';

class ExpandedTextWidget extends StatefulWidget {
  final String text;
  const ExpandedTextWidget({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandedTextWidget> createState() => _ExpandedTextWidgetState();
}

class _ExpandedTextWidgetState extends State<ExpandedTextWidget> {
  late String firstHalf;
  late String secondHalf;
  bool flag = true;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > 150) {
      firstHalf = widget.text.substring(0, 150);
      secondHalf = widget.text.substring(151, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: secondHalf.length == ""
            ? Text(widget.text)
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(flag ? firstHalf : widget.text),
                  SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        flag = !flag;
                      });
                    },
                    child: Row(
                      children: [
                        Text(
                          "Show more",
                          style: TextStyle(color: Color(0xFF00B100)),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xFF00B100),
                        )
                      ],
                    ),
                  )
                ],
              ));
  }
}
