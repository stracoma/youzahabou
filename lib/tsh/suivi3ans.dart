import 'package:flutter/material.dart';
import 'package:youzahabou/main.dart';
import 'package:youzahabou/tsh/main.dart';
import 'package:youzahabou/tsh/mes_styles/bouton.dart';
import 'mes_styles/textes.dart';

class Suivi3ans extends StatelessWidget {
  const Suivi3ans({super.key});

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
            Text("Suivi tous", style: StyleTexte.tsgv),
            Text("les trois ans", style: StyleTexte.tsgv),

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
