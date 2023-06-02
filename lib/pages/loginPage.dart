import 'package:flutter/material.dart';
import 'package:lazaapp/menu.dart';
import 'package:lazaapp/pages/signupPage.dart';
import 'package:lazaapp/widgets/circleButton.dart';
import 'package:lazaapp/widgets/loginForm.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

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
                    ontap: () {},
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
              SizedBox(height: 120),
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
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
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
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Belum Punya Akun?"),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return signupPage();
                        }),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: Color(0xff9775FA)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Text(
                "By connecting your account confirm that you agree",
                style: TextStyle(
                  color: Color(0xff8F959E),
                ),
              ),
              Text(
                "with our Term and Condition",
                style: TextStyle(
                  color: Color(0xff8F959E),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
