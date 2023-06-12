import 'package:flutter/material.dart';
import 'package:lazaapp/models/model.dart';
import 'package:lazaapp/repository/repository.dart';
import 'package:lazaapp/sidebar.dart';
import 'package:lazaapp/widgets/brandButton.dart';
import 'package:lazaapp/widgets/circleButton.dart';
import 'package:lazaapp/widgets/productCard.dart';

class homePage extends StatefulWidget {
  homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  List<Product> listProduct = [];
  Repository repository = Repository();

  getData() async {
    listProduct = await repository.getData();
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _key,
        drawer: sidebar(),
        // backgroundColor: Color(0xffFEFEFE),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 45),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  circleButton(
                    height: 45,
                    width: 45,
                    icon: "images/menu.png",
                    warna: Color(0xffF5F6FA),
                    ontap: () {
                      _key.currentState!.openDrawer();
                      // Scaffold.of(context).openDrawer();
                    },
                  ),
                  circleButton(
                    height: 45,
                    width: 45,
                    icon: "images/Bag.png",
                    warna: Color(0xffF5F6FA),
                    ontap: () {},
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Hello",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Welcome to Laza.",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: Color(0xff8F959E))),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffF5F6FA),
                    ),
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                          icon: Image.asset("images/Search.png"),
                          // contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none,
                          hintText: "Search..."),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff9775FA),
                    ),
                    child: Image.asset("images/Voice.png"),
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Choose Brand",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(fontSize: 13, color: Color(0xff8F959E)),
                  ),
                ],
              ),
              SizedBox(height: 15),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    brandButton(
                      icon: "images/Adidas.png",
                      name: "Adidas",
                      ontap: () {},
                    ),
                    SizedBox(width: 10),
                    brandButton(
                      icon: "images/Nike.png",
                      name: "Nike",
                      ontap: () {},
                    ),
                    SizedBox(width: 10),
                    brandButton(
                      icon: "images/Fila.png",
                      name: "Fila",
                      ontap: () {},
                    ),
                    SizedBox(width: 10),
                    brandButton(
                      icon: "images/Puma.png",
                      name: "Puma",
                      ontap: () {},
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              SizedBox(height: 13),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "New Arivall",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "View All",
                          style:
                              TextStyle(fontSize: 13, color: Color(0xff8F959E)),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                        mainAxisExtent: 280,
                      ),
                      
                      itemBuilder: (context, index) {
                        return product(
                          textName: listProduct[index].nameProduct,
                          image: listProduct[index].ProductImage,
                          textharga: listProduct[index].price,
                        );
                      },
                      itemCount: listProduct.length,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
