import 'package:flutter/material.dart';
import 'package:youzahabou/main.dart';
import 'package:youzahabou/tsh/main.dart';
import 'mes_styles/bouton.dart';
import 'mes_styles/textes.dart';
import 'suivi3ans.dart';
import 'suivi1an.dart';

class AntiTPO extends StatelessWidget {
  const AntiTPO({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: const Text('Hypothyroidie', style: StyleTexte.stylAppBar),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TSHApp()),
                );
              },
              style: AppButtonStyles.styleBtnTSH,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Aller vers TSH')],
              ),
            ),
            const SizedBox(height: 20),
            Text("Dosage", style: StyleTexte.tsgv),
            Text("AC antiTPO", style: StyleTexte.tsgv),

            const SizedBox(height: 35),
            Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Suivi1an()),
                    );
                  },
                  style: AppButtonStyles.styleBtnVert,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Positif')],
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Suivi3ans()),
                );
              },
              style: AppButtonStyles.styleBtnVert,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Négatif')],
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
    );
  }
}
