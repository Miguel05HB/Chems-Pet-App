import 'package:chems_pet_app/classes/shop_screen.dart';
import 'package:flutter/material.dart';

class ShopPets extends StatelessWidget {
  const ShopPets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shop All",
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
            ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const ShopAllScreen(),
    );
  }
}
