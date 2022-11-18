// ignore_for_file: deprecated_member_use
import 'package:chems_pet_app/details/components/cartbtn.dart';
import 'package:chems_pet_app/details/components/colorsize.dart';
import 'package:chems_pet_app/details/components/description_pets.dart';
import 'package:chems_pet_app/details/components/products_pets.dart';
import 'package:chems_pet_app/objects/product.dart';
import 'package:flutter/material.dart';

class BodySections extends StatelessWidget {
  final Product product;
  const BodySections({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  margin: const EdgeInsets.only(top: 250),
                  width: 400,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorsSize(product: product),
                      const SizedBox(
                        height: 10 / 2,
                      ),
                      Description(product: product),
                      const SizedBox(
                        height: 10 / 2,
                      ),
                      //cartButton(product: product),
                      const SizedBox(
                        height: 10 / 2,
                      ),
                    ],
                  ),
                ),
                ProductsPets(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
