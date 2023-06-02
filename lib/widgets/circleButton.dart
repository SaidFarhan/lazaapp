import 'package:flutter/material.dart';

class circleButton extends StatelessWidget {
  circleButton(
      {required this.height,
      required this.width,
      required this.icon,
      required this.warna,
      required this.ontap});

  String icon;
  double? height;
  double? width;
  Color? warna;
  void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45),
          color: warna,
        ),
        child: InkWell(
          splashColor: Color(0xff5AEEF4),
          borderRadius: BorderRadius.circular(45),
          onTap: ontap,
          child: Image.asset(icon),
        ),
        height: height,
        width: width,
      ),
    );
  }
}
