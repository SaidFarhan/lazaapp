import 'package:flutter/material.dart';

class sidebar extends StatelessWidget {
  const sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xffF5F6FA),
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xffF5F6FA),
            ),
            accountName: Text(
              "Said Farhan",
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            accountEmail: Row(
              children: [
                Text(
                  "Verified Profile",
                  style: TextStyle(color: Colors.black, fontSize: 13),
                ),
                Image.asset("images/Badge.png"),
              ],
            ),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: ClipOval(
                child: Image.asset("images/person.jpg"),
              ),
            ),
          ),
          ListTile(
            leading: Image.asset("images/ai.png"),
            title: Text("Account Information"),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset("images/pw.png"),
            title: Text("Password"),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset("images/Bag_black.png"),
            title: Text("Order"),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset("images/wallet_black.png"),
            title: Text("My Cards"),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset("images/likes_black.png"),
            title: Text("Wishlist"),
            onTap: () {},
          ),
          ListTile(
            leading: Image.asset("images/setting.png"),
            title: Text("Settings"),
            onTap: () {},
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Image.asset("images/Logout.png"),
            title: Text(
              "Logout",
              style: TextStyle(color: Color(0xffFF5757)),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
