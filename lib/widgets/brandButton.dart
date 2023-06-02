import 'package:flutter/material.dart';

class brandButton extends StatelessWidget {
  brandButton({required this.icon, required this.name, required this.ontap});

  String icon;
  String name;

  void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xffF5F6FA),
        ),
        child: InkWell(
          splashColor: Color(0xff9775FA),
          borderRadius: BorderRadius.circular(10),
          onTap: ontap,
          child: Row(
            children: [
              Image.asset(icon),
              SizedBox(width: 10),
              Text(name),
            ],
          ),
        ),
        height: 50,
        width: 115,
      ),
    );
  }
}
