import 'package:flutter/material.dart';
import 'package:youzahabou/main.dart';
import 'mes_styles.dart';
import 'main_grossesse.dart';
import 'tableaux.dart';
import 'resultat.dart';

class Mounassabates extends StatefulWidget {
  const Mounassabates({super.key});

  @override
  State<Mounassabates> createState() => _MounassabatesState();
}

class _MounassabatesState extends State<Mounassabates> {
  String chahr = Tablo.hijri[0];
  String sanate = Tablo.annees[0];
  int indice_chahr = 0;
  int indice_sanate = 0;

  // Déclare la liste joursDePlus une seule fois
  List<int> joursDePlus = List<int>.generate(
    31,
    (index) => index,
  ); // Génère une liste de 0 à 30
  int nahar = 0; // Valeur par défaut

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mes_Styles.couleurDeFond,
      appBar: AppBar(
        backgroundColor: Colors.purple[800],
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text("مناسبات", style: Mes_Styles.b22),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Center(
              child: Container(
                width: 240, // Ajuste la largeur selon tes besoins
                decoration: BoxDecoration(
                  color: Colors.purple[400], // Couleur du container
                  borderRadius: BorderRadius.circular(20), // Arrondir les bords
                ),
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: DropdownButton<String>(
                  value: chahr,
                  dropdownColor:
                      Colors.purple[400], // Couleur du fond du dropdown
                  underline:
                      SizedBox(), // Suppression de la ligne sous le dropdown
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ), // Personnalisation de l'icône
                  items:
                      Tablo.hijri.map((String val) {
                        return DropdownMenuItem(
                          value: val,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              val,
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                  onChanged: (kalima) {
                    setState(() {
                      chahr = kalima!;
                      indice_chahr = Tablo.hijri.indexOf(kalima);
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // DropdownButton pour joursDePlus
                Container(
                  width: 90, // Ajuste la largeur selon tes besoins
                  decoration: BoxDecoration(
                    color: Colors.purple[400], // couleur du container
                    borderRadius: BorderRadius.circular(
                      20,
                    ), // arrondir les bords
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: DropdownButton<int>(
                    value:
                        nahar, // Valeur sélectionnée par défaut (peut être le premier élément)
                    dropdownColor:
                        Colors.purple[400], // couleur du fond du dropdown
                    underline:
                        SizedBox(), // suppression de la ligne sous le dropdown
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ), // personnaliser l'icône
                    items:
                        joursDePlus.map((int val) {
                          return DropdownMenuItem(
                            value: val, // valeur de chaque élément du menu
                            child: Text(
                              val.toString(), // affichage de la valeur dans le menu
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        nahar =
                            newValue!; // Mise à jour de la valeur sélectionnée
                      });
                    },
                  ),
                ),

                SizedBox(width: 20), // Espace entre les DropdownButtons
                // DropdownButton pour les années (Tablo.annees)
                Container(
                  width: 130, // Ajuste la largeur selon tes besoins
                  decoration: BoxDecoration(
                    color: Colors.purple[400], // couleur du container
                    borderRadius: BorderRadius.circular(
                      20,
                    ), // arrondir les bords
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: DropdownButton<String>(
                    value: sanate,
                    dropdownColor:
                        Colors.purple[400], // couleur du fond du dropdown
                    underline:
                        SizedBox(), // suppression de la ligne sous le dropdown
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ), // personnaliser l'icône
                    items:
                        Tablo.annees.map((String val) {
                          return DropdownMenuItem(
                            value: val,
                            child: Text(
                              val,
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        sanate = newValue!;
                        indice_sanate = Tablo.annees.indexOf(newValue);
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            ElevatedButton(
              style: Mes_Styles.v22,
              onPressed: () {
                setState(() {
                  DateTime ddrTemp =
                      Tablo.correspondance[indice_chahr + (indice_sanate * 12)];
                  DDR = ddrTemp.add(Duration(days: nahar));
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Resultat()),
                  );
                });
              },
              child: Text('Calculer'),
            ),
            SizedBox(height: 10),
            Text("عاشوراء : 10 محرم", style: Mes_Styles.n18),
            Text("عيد المولد النبوي : 12 ربيع الأول", style: Mes_Styles.n18),
            Text("عيد الفطر : 1 شوال", style: Mes_Styles.n18),
            Text("عيد الأضحى : 10 ذو الحجة", style: Mes_Styles.n18),
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
