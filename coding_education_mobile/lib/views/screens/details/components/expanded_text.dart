import 'package:coding_education_mobile/views/contains/style.dart';
import 'package:flutter/material.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final TextStyle style;
  final int maxLines;

  ExpandableText({
    required this.text,
    required this.style,
    required this.maxLines,
  });

  @override
  _ExpandableTextState createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isExpanded = false;

  void toggleExpanded() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          widget.text,
          maxLines: isExpanded ? null : widget.maxLines,
          style: widget.style,
        ),
        InkWell(
          onTap: toggleExpanded,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                isExpanded ? 'Read Less' : 'Read More',
                style: TextStyle(color: kBlueColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
