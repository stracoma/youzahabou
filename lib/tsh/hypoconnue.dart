import 'package:flutter/material.dart';
import 'package:youzahabou/main.dart';
import 'package:youzahabou/tsh/main.dart';
import 'adaptation.dart' as customAdaptation;
import 'tsh20.dart';
import 'mes_styles/textes.dart';
import 'mes_styles/bouton.dart';

class Hypoconnue extends StatelessWidget {
  const Hypoconnue({super.key});

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
            Text("Hypothyroïdie", style: StyleTexte.tsgv),
            Text("connue ?", style: StyleTexte.tsgv),
            const SizedBox(height: 35),
            Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => const customAdaptation.Adaptation(),
                      ),
                    );
                  },
                  style: AppButtonStyles.styleBtnVert,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('Oui')],
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Tsh20()),
                );
              },
              style: AppButtonStyles.styleBtnVert,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Non')],
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
