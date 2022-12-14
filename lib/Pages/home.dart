import 'package:chems_pet_app/classes/slider_sections.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
      body: const SliderSections(),
    );
  }
}
