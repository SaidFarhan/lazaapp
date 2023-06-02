import 'package:flutter/material.dart';

class product extends StatelessWidget {
  product(
      {required this.textName, required this.image, required this.textharga});

  String image;
  String textName;
  String textharga;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        // padding: EdgeInsets.all(10),
        // padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          // color: Colors.blue,
        ),
        child: InkWell(
          splashColor: Color(0xff9775FA),
          borderRadius: BorderRadius.circular(15),
          onTap: () {},
          child: Column(
            children: [
              Image.asset(image),
              SizedBox(height: 5),
              Text(textName),
              SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    textharga,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
