// ignore_for_file: deprecated_member_use
import 'package:chems_pet_app/details/components/show_footprint.dart';
import 'package:chems_pet_app/objects/product.dart';
import 'package:flutter/material.dart';

class cartButton extends StatefulWidget {
  const cartButton({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<cartButton> createState() => _cartButtonState();
}

class _cartButtonState extends State<cartButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: <Widget>[
          //const heartFavorite(),
          Expanded(
            child: SizedBox(
              height: 30,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {});

                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return ShowFootPrint();
                    },
                  );
                },
                child: const Text(
                  "Agregar al Carrito",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
