import 'package:chems_pet_app/classes/body_shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShopAllScreen extends StatefulWidget {
  const ShopAllScreen({Key? key}) : super(key: key);

  @override
  State<ShopAllScreen> createState() => _ShopAllScreenState();
}

class _ShopAllScreenState extends State<ShopAllScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF5F5CA),
      body: BodyShop(),
    );
  }
}
