import 'package:chems_pet_app/details/components/show_adopt.dart';
import 'package:flutter/material.dart';

class TextFormAdopt extends StatefulWidget {
  @override
  State<TextFormAdopt> createState() => _TextFormAdoptState();
}

class _TextFormAdoptState extends State<TextFormAdopt> {
  final textController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Image.asset(
            "assets/Images/adoptame.png",
            height: 250,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "¿Por que quieres adoptarme?",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          _inputNombre(),
          // const SizedBox(
          //   height: 50,
          // ),
          const SizedBox(
            height: 20,
          ),
          RaisedButton(
            onPressed: () {
              if (formKey.currentState!.validate()) ;
            },
            child: const Text(
              "Enviar Solicitud",
            ),
          )
        ],
      ),
    );
  }

  Container _inputNombre() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Form(
        key: formKey,
        child: TextFormField(
          validator: ((value) {
            if (value == "") {
              return "Por favor complete este campo de texto!";
            } else {
              setState(() {
                textController.clear();
              });
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return ShowAdopt();
                },
              );
            }
          }),
          controller: textController,
          style: const TextStyle(
            fontSize: 20,
          ),
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
