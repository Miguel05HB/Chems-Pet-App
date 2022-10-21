// ignore_for_file: deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShowFootPrint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Expanded(
        child: Container(
          height: 200,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  color: Colors.white70,
                  child: const Icon(
                    Icons.fingerprint,
                    size: 60,
                  ),
                ),
              ),
              // SizedBox(
              //   height: 30,
              // ),
              Expanded(
                child: Container(
                  color: Colors.redAccent,
                  child: SizedBox.expand(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          const Text(
                            'Deseas pagar ahora?\n',
                            style: TextStyle(color: Colors.white),
                          ),
                          RaisedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            color: Colors.white,
                            child: const Text('Si'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
