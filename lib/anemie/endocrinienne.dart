import 'package:flutter/material.dart';
import 'package:youzahabou/anemie/main_anemie.dart';
import 'package:youzahabou/main.dart';
import 'package:youzahabou/tsh/mes_styles/bouton.dart';

// ignore: camel_case_types
class Endocrinienne extends StatelessWidget {
  const Endocrinienne({super.key});

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
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 25),
            Center(
              child: ElevatedButton(
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
            ),
            const SizedBox(height: 50),
            const Text(
              "- Causes endocriniennes",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 30),
            const Text(
              "- Insuffisance rénale",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "- Anémie inflammatoire (début)",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 50),
            Center(
              child: Builder(
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
            ),
          ],
        ),
      ),
    );
  }
}
