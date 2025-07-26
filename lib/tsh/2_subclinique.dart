import 'package:flutter/material.dart';
import 'package:youzahabou/main.dart';
import 'package:youzahabou/tsh/main.dart';
import 'mes_styles/textes.dart';
import 'mes_styles/bouton.dart';
import '2_goitre.dart';
import '2_suivi_6_mois.dart';

class Subclinique_2 extends StatelessWidget {
  const Subclinique_2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: const Text('Hyperthyroidie', style: StyleTexte.stylAppBar),
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
            Text("Hyperthyroïdie", style: StyleTexte.tsgr),
            Text("subclinique", style: StyleTexte.tsgr),
            Text("Âge > 60 ans", style: StyleTexte.tspr),
            Text("ATCD cardiopathie", style: StyleTexte.tspr),
            Text("TSH < 0.1 mUI/l", style: StyleTexte.tspr),
            const SizedBox(height: 35),
            Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const goitre_2()),
                    );
                  },
                  style: AppButtonStyles.styleBtnRouge,
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
                  MaterialPageRoute(builder: (context) => const Suivi_6mois()),
                );
              },
              style: AppButtonStyles.styleBtnRouge,
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
