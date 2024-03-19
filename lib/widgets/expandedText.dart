import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wanted/utils/color.dart';
import 'package:wanted/utils/myText.dart';
class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({
    super.key,
    required this.text,
  });
  @override
  State<ExpandableTextWidget> createState() => _ExpandedDescriptionState();
}
class _ExpandedDescriptionState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = true;
  // Default height of text
  double textHeight = 120;
  @override
  void initState() {
    super.initState();
    if (widget.text.length > textHeight) {
      firstHalf = widget.text.substring(0, textHeight.toInt());
      secondHalf =
          widget.text.substring(textHeight.toInt(), widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = "";
    }
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      child: secondHalf.isEmpty
          ? MyTextQuickSand(
        text: widget.text,
        color: Colors.black,
        height: 1.4,
        fontWeight: FontWeight.w600,

        fontSize: width * 0.032,
        maxLines: 10,
      )
          : Column(
        children: [
          MyTextQuickSand(
            text: hiddenText
                ? ("$firstHalf . . . .")
                : (firstHalf + secondHalf),
            color: Colors.black,
            height: 2.0,
            fontWeight: FontWeight.w600,
            fontSize: width * 0.032,
            maxLines: 100,
          ),
          const SizedBox(height: 5),
          GestureDetector(
            onTap: () {
              setState(() {
                hiddenText = !hiddenText;
              });
            },
            child: Row(
              children: [
                MyTextQuickSand(
                  text: hiddenText ? "Read more" : "Read Less",
                  color: appColor,
                  fontSize: width * 0.03,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(width: 4),
                Icon(
                  hiddenText
                      ? CupertinoIcons.chevron_down
                      : CupertinoIcons.chevron_up,
                  color: appColor,
                  size: width * 0.04,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}









