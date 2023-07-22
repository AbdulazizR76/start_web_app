import 'package:flutter/material.dart';

class CustomBtn extends StatefulWidget {
  Color color; // Add 'final' to make 'color' a required property
  String title;

  CustomBtn(this.color, this.title); // Add the missing constructor

  @override
  State<CustomBtn> createState() => _CustomBtnState();
}

class _CustomBtnState extends State<CustomBtn> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: null,
        child: Text(
          widget.title,
          style: TextStyle(color: widget.color, fontFamily: 'RaleWay'),
        ));
  }
}
