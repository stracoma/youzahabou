import 'package:flutter/material.dart';
import 'package:youzahabou/main.dart';
import 'Hypochrome_microcytaire.dart';
import 'normochrome_normocytaire.dart';
import 'reticulocytes.dart';
/*
class main_anemie extends StatelessWidget {
  const main_anemie({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: page1());
  }
}*/

class main_anemie extends StatelessWidget {
  const main_anemie({super.key});

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
              const SizedBox(height: 30),
              const Text(
                "Anémie",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(5),
                  backgroundColor: Colors.red[600],
                  fixedSize: const Size(280, 60),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyWidget()),
                  );
                },
                child: const Text(
                  "Hypochrome microcytaire",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(5),
                  backgroundColor: Colors.red[600],
                  fixedSize: const Size(280, 60),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Normoch_normocyt(),
                    ),
                  );
                },
                child: const Text(
                  "Normochrome normocytaire",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(5),
                  backgroundColor: Colors.red[600],
                  fixedSize: const Size(280, 60),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Reticulocytes(),
                    ),
                  );
                },
                child: const Text(
                  "Normochrome macrocytaire",
                  style: TextStyle(
                    fontSize: 16,
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
