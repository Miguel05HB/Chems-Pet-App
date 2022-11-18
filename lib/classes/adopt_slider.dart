import 'package:chems_pet_app/classes/adopt_sections.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';

class AdoptPets extends StatelessWidget {
  const AdoptPets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chems Pet"),
        toolbarHeight: 65,
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF2A2323),
                Color(0xFF1E1216),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      backgroundColor: const Color(0xffF5F5CA),
      body: const SliderSectionsPets(),
    );
  }
}

class SliderSectionsPets extends StatelessWidget {
  const SliderSectionsPets({Key? key}) : super(key: key);

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
                      image: AssetImage("assets/img/ado1.jpg"),
                      fit: BoxFit.fill),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/img/ado2.jpg"),
                      fit: BoxFit.fill),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/img/ado3.jpg"),
                    fit: BoxFit.fill,
                  ),
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
            padding: EdgeInsets.all(40.0),
            child: Center(
              child: Text(
                '"Hasta que uno no ha amado a un animal, parte de su alma permanece dormida"',
                style: TextStyle(
                  fontSize: 20.0,
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
              SectionAdopt1(),
              SectionAdopt2(),
              SectionAdopt3(),
              SectionAdopt4(),
              SectionAdopt5(),
              SectionAdopt6(),
            ],
          ),
        ],
      ),
    );
  }
}
