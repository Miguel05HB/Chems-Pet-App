import 'package:flutter/material.dart';

class CartEfects extends StatefulWidget {
  CartEfects({Key? key}) : super(key: key);

  @override
  State<CartEfects> createState() => _CartEfectsState();
}

class _CartEfectsState extends State<CartEfects> {
  int numItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        outButton(
          icon: Icons.remove,
          press: () {
            if (numItems > 1) {
              setState(() {
                numItems--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20 / 2),
          child: Text(
            numItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        outButton(
          icon: Icons.add,
          press: () {
            setState(
              () {
                numItems++;
              },
            );
          },
        ),
      ],
    );
  }

  SizedBox outButton({required IconData icon, required VoidCallback press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            )),
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
