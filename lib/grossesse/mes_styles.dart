import 'package:flutter/material.dart';
import 'main_grossesse.dart';

class Mes_Styles {
  static final Color couleurDeFond = Color.fromARGB(180, 255, 190, 231);
  static TextStyle b22 = const TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static TextStyle n18 = const TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static ButtonStyle v22 = ElevatedButton.styleFrom(
    backgroundColor: Colors.purple[800],
    foregroundColor: Colors.white,
    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    fixedSize: const Size(200, 50),
  );

  static void calculer() {
    accouchement = DDR.add(const Duration(days: 280));
    nbr_jours = DateTime.now().difference(DDR).inDays;
    nbr_sem = nbr_jours ~/ 7;
    jours_sem = nbr_jours % 7;
    nbr_mois = (nbr_jours - 14) ~/ 30;
    jours_mois = (nbr_jours - 14) % 30;
  }
}
