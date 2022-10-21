// ignore_for_file: use_key_in_widget_constructors
import 'package:chems_pet_app/Pages/about.dart';
import 'package:chems_pet_app/Pages/home.dart';
import 'package:chems_pet_app/classes/adopt_slider.dart';
import 'package:chems_pet_app/classes/shop_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MaterialYou extends StatefulWidget {
  @override
  State<MaterialYou> createState() => _MaterialYouState();
}

class _MaterialYouState extends State<MaterialYou> {
  int _currentIndex = 0;
  List<Widget> pages = [
    const HomeScreen(),
    const ShopAllScreen(),
    const AdoptPets(),
    const AboutMe(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chems Pet"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_rounded,
              size: 30,
            ),
          ),
        ],
        toolbarHeight: 65,
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF2A2323),
                Color(0xFF1E1216),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: Center(
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
            indicatorColor: Colors.white.withOpacity(0.5)),
        child: NavigationBar(
          backgroundColor: const Color(0xFF01C0AD),
          animationDuration: const Duration(seconds: 1),
          height: 60,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          selectedIndex: _currentIndex,
          onDestinationSelected: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.shopping_bag_rounded),
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Shop',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.pets),
              icon: Icon(Icons.pets),
              label: 'Adopt Me',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.person_pin_circle_rounded),
              icon: Icon(Icons.person_pin_circle_outlined),
              label: 'About Me',
            )
          ],
        ),
      ),
    );
  }
}
