import 'package:chems_pet_app/Pages/textformadopt.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormAdopt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adoptame"),
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
      body: TextFormAdopt(),
    );
  }
}
