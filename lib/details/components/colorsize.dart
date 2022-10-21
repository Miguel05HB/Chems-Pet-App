import 'package:chems_pet_app/objects/product.dart';
import 'package:flutter/material.dart';

class ColorsSize extends StatelessWidget {
  const ColorsSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text("Color"),
              Row(
                children: const <Widget>[
                  ColorsAll(
                    color: Color(0xFF356C95),
                    inSelected: true,
                  ),
                  ColorsAll(
                    color: Color(0xFFF8C078),
                  ),
                  ColorsAll(color: Color(0xFFA29B9B)),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Color(0xff535353),
              ),
              children: [
                const TextSpan(
                  text: "Size\n",
                ),
                TextSpan(
                  text: "${product.size}",
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ColorsAll extends StatelessWidget {
  final Color color;
  final bool inSelected;

  const ColorsAll({
    Key? key,
    required this.color,
    this.inSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20 / 4,
        right: 20 / 2,
      ),
      padding: const EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: inSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
