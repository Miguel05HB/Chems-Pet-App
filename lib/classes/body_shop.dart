import 'package:chems_pet_app/api/carrito_compras.dart';
import 'package:chems_pet_app/classes/item_card.dart';
import 'package:chems_pet_app/details/details_screen.dart';
import 'package:chems_pet_app/objects/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class BodyShop extends StatefulWidget {
  const BodyShop({Key? key}) : super(key: key);

  @override
  State<BodyShop> createState() => _BodyShopState();
}

class _BodyShopState extends State<BodyShop> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CarritoCompras>(
      builder: (context, carrito, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AppBar(
              title: const Text("Chems Pet"),
              actions: [
                IconButton(
                  onPressed: () {
                    setState(() {});
                  },
                  icon: const Icon(
                    Icons.shopping_cart_rounded,
                    size: 30,
                  ),
                ),
              ],
              toolbarHeight: 65,
              elevation: 0.0,
              backgroundColor: Colors.black,
              systemOverlayStyle: SystemUiOverlayStyle.light,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Center(
                child: Text(
                  "Shop All",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff535353),
                      ),
                ),
              ),
            ),
            // const Categorias(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) => ItemCard(
                    product: products[index],
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          product: products[index],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
