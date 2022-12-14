import 'package:chems_pet_app/main.dart';
import 'package:chems_pet_app/screens/forgot_password.dart';
import 'package:chems_pet_app/screens/show_confirm.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';

class LoginWidget extends StatefulWidget {
  final VoidCallback onClickedSignUp;

  const LoginWidget({
    Key? key,
    required this.onClickedSignUp,
  }) : super(key: key);

  @override
  State<LoginWidget> createState() => _LoginState();
}

class _LoginState extends State<LoginWidget> {
  final _claveForm = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _claveForm,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.53,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/login/pets.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: const <Widget>[
                    Positioned(
                      left: 30.0,
                      bottom: 30.0,
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 28.0,
                            letterSpacing: 1.5,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Ingresar un correo electronico';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                      ),
                      controller: emailController,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Ingresar su contrase??a';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                      ),
                      obscureText: true,
                      controller: passwordController,
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        if (_claveForm.currentState!.validate()) {
                          // Scaffold.of(context).showSnackBar(
                          //   const SnackBar(
                          //     content: Text("Procesando Datos"),
                          //   ),
                          // );
                        }
                        signIn();
                      },
                      label: const Text("Sign In"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        fixedSize: const Size(220, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      icon: const Icon(Icons.pets),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    GestureDetector(
                      child: Text(
                        'Olvidaste tu contrase??a?',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 20,
                        ),
                      ),
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const ForgotPasswordPage(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        text: 'Ya tienes una cuenta? ',
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = widget.onClickedSignUp,
                            text: 'Sign Up',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future signIn() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);

      //Utils.showSnackBar(e.message);
    }

    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }
}
