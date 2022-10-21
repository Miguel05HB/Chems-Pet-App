import 'package:chems_pet_app/screens/login_screen.dart';
import 'package:chems_pet_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class AutenticationScreen extends StatefulWidget {
  AutenticationScreen({Key? key}) : super(key: key);

  @override
  State<AutenticationScreen> createState() => _AutenticationScreenState();
}

class _AutenticationScreenState extends State<AutenticationScreen> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) => isLogin
      ? Login(onClickedSignUp: toggle)
      : SignUpScreen(onClickedSignIn: toggle);

  void toggle() => setState(() => isLogin = !isLogin);
}
