import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:lazaapp/pages/bagPage.dart';
import 'package:lazaapp/pages/favoritePage.dart';
import 'package:lazaapp/pages/homePage.dart';
import 'package:lazaapp/pages/walletPage.dart';

enum _SelectedTab { home, favorite, bag, wallet }

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  _SelectedTab _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: IndexedStack(
          index: _SelectedTab.values.indexOf(_selectedTab),
          children: [
            homePage(),
            const favoritePage(),
            bagPage(),
            const walletPage(),
          ],
        ),
      ),
      bottomNavigationBar: DotNavigationBar(
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        dotIndicatorColor: Color(0xff9775FA),
        backgroundColor: Color(0xffF5F6FA),
        paddingR: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        enablePaddingAnimation: false,
        items: [
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.home
                  ? "images/home_color.png"
                  : "images/home.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.favorite
                  ? "images/likes_color.png"
                  : "images/likes.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.bag
                  ? "images/nav_bag_color.png"
                  : "images/nav_bag.png",
              width: 24,
            ),
          ),
          DotNavigationBarItem(
            icon: Image.asset(
              _selectedTab == _SelectedTab.wallet
                  ? "images/wallet_color.png"
                  : "images/wallet.png",
              width: 24,
            ),
          ),
        ],
      ),
    );
  }
}
