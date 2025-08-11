import 'package:flutter/material.dart';
class mestyles{
  static ButtonStyle tsyleBouton(){
    return ElevatedButton.styleFrom(
      fixedSize: Size(200, 50), // Largeur 200px, hauteur 50px
      backgroundColor: Colors.purple[800],
      foregroundColor: Colors.white,
      textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );

  }
}