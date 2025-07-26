import 'package:flutter/material.dart';

class AppButtonStyles {
  static final ButtonStyle styleBtnVert = ElevatedButton.styleFrom(
    backgroundColor: Colors.green[800], // Couleur de fond
    foregroundColor: Colors.white, // Couleur du texte
    textStyle: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    fixedSize: Size(260, 80),
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  );

  static final ButtonStyle styleBtnRouge = ElevatedButton.styleFrom(
    backgroundColor: Colors.red[800], // Couleur de fond
    foregroundColor: Colors.white, // Couleur du texte
    textStyle: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
    fixedSize: Size(260, 80),
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  );

  static final ButtonStyle styleBtnTSH = ElevatedButton.styleFrom(
    backgroundColor: Colors.black, // Couleur de fond
    foregroundColor: Colors.white, // Couleur du texte
    textStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    fixedSize: Size(180, 50),
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  );
}
