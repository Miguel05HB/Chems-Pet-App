import 'package:chems_pet_app/classes/adopt_slider.dart';
import 'package:flutter/material.dart';

class AdoptPets extends StatelessWidget {
  const AdoptPets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF5F5CA),
      body: SliderSectionsPets(),
    );
  }
}
