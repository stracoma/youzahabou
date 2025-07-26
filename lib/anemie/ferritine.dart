import 'package:flutter/material.dart';
import 'package:youzahabou/anemie/main_anemie.dart';
import 'package:youzahabou/main.dart';
import 'package:youzahabou/tsh/mes_styles/bouton.dart';
import 'carence_en_fer.dart';
import 'anemie_inflammatoire.dart';

class Ferritine extends StatelessWidget {
  const Ferritine({super.key});

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
      body: SingleChildScrollView(
        child: Center(
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
                  children: [Text('Aller vers anemie')],
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                "Ferritine",
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  backgroundColor: Colors.red[600],
                  minimumSize: const Size(300, 50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Carence_Fer(),
                    ),
                  );
                },
                child: const Text(
                  "basse",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  backgroundColor: Colors.red[600],
                  minimumSize: const Size(300, 50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Anemie_inflammatoire(),
                    ),
                  );
                },
                child: const Text(
                  "normale ou augmentée + inflammation",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
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
