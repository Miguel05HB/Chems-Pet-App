import 'package:chems_pet_app/Pages/shop.dart';
import 'package:flutter/material.dart';

class SectionPets1 extends StatelessWidget {
  const SectionPets1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        // alignment: AlignmentDirectional(0, 0),
        children: [
          Image.asset('assets/Images/food.png'),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            width: 70,
            child: const Text(
              'Oferta de la semana',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 56, horizontal: 5),
            width: 100,
            child: const Text(
              '━━━',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
            width: 100,
            child: const Text(
              '50% Menos',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w300),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            height: 120,
            alignment: Alignment.bottomLeft,
            width: 110,
            child: const Text(
              'en comida para mascotas',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            alignment: Alignment.bottomLeft,
            height: 170,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(70, 28.7),
                  primary: const Color(0xffFF5F42),
                  onPrimary: const Color(0xff000000)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ShopPets()),
                );
              },
              child: const Text(
                'Comprar Ahora',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionPets2 extends StatelessWidget {
  const SectionPets2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        children: [
          Image.asset('assets/Images/dog.png'),
          Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            height: 80,
            child: const Text(
              'Dogs',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            height: 120,
            alignment: Alignment.bottomLeft,
            width: 110,
            child: const Text(
              'Seccion para Perros',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            alignment: Alignment.bottomLeft,
            height: 170,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(70, 28.7),
                  primary: const Color(0xffFF5F42),
                  onPrimary: const Color(0xff000000)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ShopPets()),
                );
              },
              child: const Text(
                'Comprar Ahora',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionPets3 extends StatelessWidget {
  const SectionPets3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        children: [
          Image.asset('assets/Images/cat.png'),
          Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            height: 80,
            child: const Text(
              'Cats',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            height: 120,
            alignment: Alignment.bottomLeft,
            width: 110,
            child: const Text(
              'Seccion para Gatos',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            alignment: Alignment.bottomLeft,
            height: 170,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(70, 28.7),
                  primary: const Color(0xffFF5F42),
                  onPrimary: const Color(0xff000000)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ShopPets()),
                );
              },
              child: const Text(
                'Comprar Ahora',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionPets4 extends StatelessWidget {
  const SectionPets4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        children: [
          Image.asset('assets/Images/bird.png'),
          Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            height: 80,
            child: const Text(
              'Birds',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            height: 120,
            alignment: Alignment.bottomLeft,
            width: 100,
            child: const Text(
              'Seccion para Aves',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            alignment: Alignment.bottomLeft,
            height: 170,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(70, 28.7),
                  primary: const Color(0xffFF5F42),
                  onPrimary: const Color(0xff000000)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ShopPets()),
                );
              },
              child: const Text(
                'Comprar Ahora',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionPets5 extends StatelessWidget {
  const SectionPets5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        children: [
          Image.asset('assets/Images/fish.png'),
          Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            height: 80,
            child: const Text(
              'Fish',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            height: 120,
            alignment: Alignment.bottomLeft,
            width: 110,
            child: const Text(
              'Seccion para Peces',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            alignment: Alignment.bottomLeft,
            height: 170,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(70, 28.7),
                  primary: const Color(0xffFF5F42),
                  onPrimary: const Color(0xff000000)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ShopPets()),
                );
              },
              child: const Text(
                'Comprar Ahora',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionPets6 extends StatelessWidget {
  const SectionPets6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        children: [
          Image.asset('assets/Images/reptiles.png'),
          Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            height: 80,
            child: const Text(
              'Reptiles',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            height: 120,
            alignment: Alignment.bottomLeft,
            width: 110,
            child: const Text(
              'Seccion para Reptiles',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            alignment: Alignment.bottomLeft,
            height: 170,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(70, 28.7),
                  primary: const Color(0xffFF5F42),
                  onPrimary: const Color(0xff000000)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ShopPets()),
                );
              },
              child: const Text(
                'Comprar Ahora',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
