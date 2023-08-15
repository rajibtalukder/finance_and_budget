import 'package:finance_and_budget/constants/colors.dart';
import 'package:finance_and_budget/view/authentication/login_screen.dart';
import 'package:finance_and_budget/view/budget/budget_screen.dart';
import 'package:finance_and_budget/view/home/home_screen.dart';
import 'package:finance_and_budget/view/manifestation/manifestation_screen.dart';
import 'package:flutter/material.dart';

class CustomNavigation extends StatefulWidget {
  const CustomNavigation({Key? key}) : super(key: key);

  @override
  State<CustomNavigation> createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation> {
  int _bottomNavIndex = 0;

  List<IconData> iconsTemp = [
    Icons.home_outlined,
    Icons.shopping_cart_outlined,
    Icons.favorite_outline,
    Icons.person_outline,
  ];

  List<IconData> icons = [];

  List<Widget> pages = [
    HomeScreen(),
    ManifestationScreen(),
    BudgetScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        extendBody: true,
        body: pages[_bottomNavIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _bottomNavIndex,
          elevation: 10,
          selectedLabelStyle: TextStyle(color: primaryColor,fontSize: 12),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: secondaryTextColor),
              label: 'Home',
              activeIcon: Icon(Icons.home, color: primaryColor),
              backgroundColor: white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_applications_sharp,
                  color: secondaryTextColor),
              label: 'Manifestation',
              activeIcon:
                  Icon(Icons.settings_applications_sharp, color: primaryColor),
              backgroundColor: white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.monetization_on, color: secondaryTextColor),
              label: 'Budget',
              activeIcon: Icon(Icons.monetization_on, color: primaryColor),
              backgroundColor: white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.analytics, color: secondaryTextColor),
              label: 'Analytics',
              activeIcon: Icon(Icons.analytics, color: primaryColor),
              backgroundColor: white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.key, color: secondaryTextColor),
              label: 'Life Admin',
              activeIcon: Icon(Icons.key, color: primaryColor),
              backgroundColor: white,
            ),
          ],
          onTap: (index) {
            setState(() {
              _bottomNavIndex = index;
            });
          },
        ));
  }
}
