import 'package:flutter/material.dart';
import 'package:lazaapp/menu.dart';
import 'package:lazaapp/widgets/circleButton.dart';
import 'package:lazaapp/widgets/loginForm.dart';

class signupPage extends StatelessWidget {
  const signupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 45),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  circleButton(
                    height: 45,
                    width: 45,
                    icon: "images/back.png",
                    warna: Color(0xffF5F6FA),
                    ontap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              SizedBox(height: 10),
              Center(
                child: Column(
                  children: [
                    Text("Welcome",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w500)),
                    SizedBox(height: 5),
                    Text("Please enter your data to continue",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff8F959E))),
                  ],
                ),
              ),
              SizedBox(height: 100),
              loginForm(
                labeltext: "Username",
                textStyle: TextStyle(
                  color: Color(0xFF8F959E),
                ),
              ),
              SizedBox(height: 20),
              loginForm(
                labeltext: "Password",
                textStyle: TextStyle(
                  color: Color(0xFF8F959E),
                ),
              ),
              SizedBox(height: 20),
              loginForm(
                labeltext: "Confirm Password",
                textStyle: TextStyle(
                  color: Color(0xFF8F959E),
                ),
              ),
              SizedBox(height: 40),
              Container(
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff9775FA),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return menu();
                      }),
                    );
                  },
                  splashColor: Colors.amber,
                  borderRadius: BorderRadius.circular(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
