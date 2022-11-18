import 'package:carousel_slider/carousel_slider.dart';
import 'package:chems_pet_app/classes/sections_pets.dart';
import 'package:flutter/material.dart';

class SliderSections extends StatelessWidget {
  const SliderSections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffF5F5CA),
      child: ListView(
        children: [
          const Padding(padding: EdgeInsets.all(10)),
          const SizedBox(
            height: 15,
          ),
          CarouselSlider(
            items: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/Images/slider1.png"),
                      fit: BoxFit.fill),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/Images/slider3.png"),
                      fit: BoxFit.fill),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/Images/slider2.jpg"),
                      fit: BoxFit.fill),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 190.0,
              autoPlay: true,
              autoPlayCurve: Curves.easeInOut,
              enlargeCenterPage: true,
              autoPlayInterval: const Duration(
                seconds: 3,
              ),
              scrollDirection: Axis.horizontal,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(50.0),
            child: Center(
              child: Text(
                "Hecha un Vistaso",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(20.0),
            children: const [
              SectionPets1(),
              SectionPets2(),
              SectionPets3(),
              SectionPets4(),
              SectionPets5(),
              SectionPets6(),
            ],
          ),
        ],
      ),
    );
  }
}
