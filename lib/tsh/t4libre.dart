import 'package:flutter/material.dart';
import 'package:youzahabou/main.dart';
import 'package:youzahabou/tsh/main.dart';
import 'hypoaveree.dart';
import 'mes_styles/textes.dart';
import 'mes_styles/bouton.dart';
import 'subclinique.dart';

class T4libre extends StatelessWidget {
  const T4libre({super.key});

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
            Text("T4 libre", style: StyleTexte.tsgv),
            const SizedBox(height: 35),
            Builder(
              builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Subclinique(),
                      ),
                    );
                  },
                  style: AppButtonStyles.styleBtnVert,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text('normal')],
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Hypoaveree()),
                );
              },
              style: AppButtonStyles.styleBtnVert,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('<8 pmol/L')],
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
