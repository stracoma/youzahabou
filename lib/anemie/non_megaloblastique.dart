import 'package:flutter/material.dart';
import 'package:youzahabou/anemie/main_anemie.dart';
import 'package:youzahabou/main.dart';
import 'package:youzahabou/tsh/mes_styles/bouton.dart';

// ignore: camel_case_types
class NonMegaloblastique extends StatelessWidget {
  const NonMegaloblastique({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        backgroundColor: Colors.red[600],
        title: const Text(
          "Les anémies",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const main_anemie(),
                    ),
                  );
                },
                style: AppButtonStyles.styleBtnTSH,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('Aller vers anémie')],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 8),
                  Text(
                    "Anémie macrocytaire",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    "non mégaloblastique.",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "I) Anémies « réfractaires »",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(221, 21, 35, 241),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "    ou myélodysplasies:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(221, 21, 35, 241),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "- Coloration de Perls pour la recherche de sidéroblastes (Anémie sidéroblastique).",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 30),
              const Row(
                children: [
                  Text(
                    "II) Autres :",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(221, 33, 43, 179),
                    ),
                  ),
                  Text(
                    "  (Pas de réticulocytose)",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "- Alcoolisme chronique.",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const Text(
                    "- Maladie hépatique.",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  const Text(
                    "- Hypothyroïdie.",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Builder(
                builder: (context) {
                  return IconButton(
                    icon: Image.asset('images/accueil.png'),
                    iconSize: 50,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
