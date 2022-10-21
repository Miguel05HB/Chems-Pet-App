import 'package:chems_pet_app/details/components/card_conter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class heartFavorite extends StatelessWidget {
  const heartFavorite({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartEfects(),
      ],
    );
  }
}
