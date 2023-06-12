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
          border: Border.all(width: 1, color: Color(0xffD8D8D8)),
          // color: Colors.blue,
        ),
        child: InkWell(
          splashColor: Color(0xff9775FA),
          borderRadius: BorderRadius.circular(15),
          onTap: () {},
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 8),
                width: 160,
                height: 203,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffD8D8D8),
                  image: DecorationImage(
                    image: NetworkImage(image),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        textName,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      textharga,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                    ),
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
