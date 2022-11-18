import 'package:chems_pet_app/Pages/formadop.dart';
import 'package:chems_pet_app/Pages/shop.dart';
import 'package:flutter/material.dart';

class SectionAdopt1 extends StatelessWidget {
  const SectionAdopt1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        // alignment: AlignmentDirectional(0, 0),
        children: [
          Image.asset('assets/img/sol.webp'),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            width: 70,
            child: const Text(
              'SOL',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromARGB(255, 33, 174, 179),
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
            height: 140,
            alignment: Alignment.bottomLeft,
            width: 110,
            child: const Text(
              '¡Hola, mi nombre es Sol! ¿Sabes por qué me pusieron ese nombre? Pues porque soy radiante y super noble.',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color(0xFF060000),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 20),
            alignment: Alignment.bottomLeft,
            height: 170,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(70, 28.7),
                primary: const Color(0xFF5D49A7),
                onPrimary: const Color(0xff000000),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormAdopt()),
                );
              },
              child: const Text(
                'Adoptame',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionAdopt2 extends StatelessWidget {
  const SectionAdopt2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        children: [
          Image.asset('assets/img/karla.jpg'),
          Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            height: 40,
            child: const Text(
              'KARLA',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromARGB(255, 33, 174, 179),
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            height: 150,
            alignment: Alignment.bottomLeft,
            width: 110,
            child: const Text(
              'Carla fue encontrada en la Av Valencia, Castellón. Iba asustada y buscando dónde esconderse, así que la rescataron ',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color(0xFF060000),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            alignment: Alignment.bottomLeft,
            height: 220,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(70, 28.7),
                primary: const Color.fromARGB(255, 23, 179, 106),
                onPrimary: const Color(0xff000000),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormAdopt()),
                );
              },
              child: const Text(
                'Adoptame',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionAdopt3 extends StatelessWidget {
  const SectionAdopt3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        children: [
          Image.asset('assets/img/noa.webp'),
          Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            height: 60,
            child: const Text(
              'NOA',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromARGB(255, 33, 174, 179),
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
            height: 180,
            alignment: Alignment.bottomLeft,
            width: 110,
            child: const Text(
              '¡Hola, mi nombre es Noa! Aún soy una cachorra en busca de un hogar. Me han dicho que seré de tamaño pequeños-mediano, pero eso no me quita el inmenso corazón que tengo.',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            alignment: Alignment.bottomLeft,
            height: 300,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(70, 28.7),
                  primary: const Color(0xFF83BE16),
                  onPrimary: const Color(0xff000000)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormAdopt()),
                );
              },
              child: const Text(
                'Adoptame',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionAdopt4 extends StatelessWidget {
  const SectionAdopt4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        children: [
          Image.asset('assets/img/luc.jpg'),
          Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            height: 40,
            child: const Text(
              'LUCAS',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromARGB(255, 33, 174, 179),
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            height: 180,
            alignment: Alignment.bottomLeft,
            width: 100,
            child: const Text(
              'Luc en un gato blanco y negro (vaquita o veneciano como dicen) que están buscando adopción. ',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            alignment: Alignment.bottomLeft,
            height: 220,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(70, 28.7),
                  primary: const Color(0xFFA714A7),
                  onPrimary: const Color(0xff000000)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormAdopt()),
                );
              },
              child: const Text(
                'Adoptame',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionAdopt5 extends StatelessWidget {
  const SectionAdopt5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        children: [
          Image.asset('assets/img/brunito.webp'),
          Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            height: 40,
            child: const Text(
              'BRUNITO',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromARGB(255, 33, 174, 179),
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            height: 150,
            alignment: Alignment.bottomLeft,
            width: 110,
            child: const Text(
              'Al comienzo puedo ser un poco tímido, pero te aseguro que tengo mucho amor para dar.',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            alignment: Alignment.bottomLeft,
            height: 210,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(70, 28.7),
                  primary: const Color(0xFFCC310B),
                  onPrimary: const Color(0xff000000)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormAdopt()),
                );
              },
              child: const Text(
                'Adoptame',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionAdopt6 extends StatelessWidget {
  const SectionAdopt6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        children: [
          Image.asset('assets/img/zigri.webp'),
          Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            height: 60,
            child: const Text(
              'ZIGRI',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromARGB(255, 33, 174, 179),
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            height: 150,
            alignment: Alignment.bottomLeft,
            width: 110,
            child: const Text(
              'Me encantaría llegar a un hogar donde pueda jugar todo el dia, pero que al mismo tiempo me den muchísimo amor. ',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Color.fromARGB(255, 6, 0, 0),
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 90, horizontal: 20),
            alignment: Alignment.bottomLeft,
            height: 170,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(70, 28.7),
                  primary: const Color(0xFF42FFD6),
                  onPrimary: const Color(0xff000000)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormAdopt()),
                );
              },
              child: const Text(
                'Adoptame',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
