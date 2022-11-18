// ignore_for_file: deprecated_member_use
import 'package:chems_pet_app/Pages/home.dart';
import 'package:chems_pet_app/Pages/main_screen.dart';
import 'package:flutter/material.dart';

class ShowAdopt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: 230,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 70, 0, 10),
              child: Center(
                child: Column(
                  children: <Widget>[
                    const Text(
                      "Felicitaciones!",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Su respuesta ha sido enviada.",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (ctx) => MaterialYou(),
                          ),
                        );
                      },
                      child: const Text("Regresar al Home"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            child: CircleAvatar(
              backgroundColor: Color(0xff34b232),
              radius: 60,
              child: Icon(
                Icons.check,
                size: 50,
                color: Colors.white,
              ),
            ),
            top: -60,
          )
        ],
      ),
    );
  }
}
