import 'package:flutter/material.dart';
import 'package:youzahabou/main.dart';
import 'package:youzahabou/tsh/main.dart';
import 'mes_styles/textes.dart';
import 'mes_styles/bouton.dart';

class Hyperthyr extends StatelessWidget {
  const Hyperthyr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        backgroundColor: Colors.green[900],
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
            Text("Grossesse", style: StyleTexte.tsgv),
            const SizedBox(height: 35),
            ElevatedButton(
              onPressed: () {},
              style: AppButtonStyles.styleBtnVert,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text('Oui')],
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
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
