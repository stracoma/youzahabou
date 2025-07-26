import 'package:flutter/material.dart';
import 'mes_styles.dart';
import 'main_grossesse.dart';
import 'package:youzahabou/main.dart';

class Resultat extends StatelessWidget {
  const Resultat({super.key});

  @override
  Widget build(BuildContext context) {
    Mes_Styles.calculer();
    String strDDR = dtf.format(DDR);
    String strSem1 = "$nbr_sem sem et $jours_sem jour(s)";
    String strSem2 = "d'aménorrhée";
    String strMois1 = "$nbr_mois mois et $jours_mois jour(s)";
    String strMois2 = "de grossesse";
    String strAccouch1 = 'Accouchement prévu le :';
    String strAccouch2 = dtf.format(accouchement);
    if (DDR.isAfter(DateTime.now())) {
      strDDR = "Date erronée";
      strSem1 = "";
      strSem2 = "";
      strMois1 = "";
      strMois2 = "";
      strAccouch1 = '';
      strAccouch2 = "";
    } else if (nbr_jours > 287) {
      strDDR = "Terme dépassé";
      strSem1 = "";
      strSem2 = "";
      strMois1 = "";
      strMois2 = "";
    } else if (nbr_jours >= 0 && nbr_jours <= 14) {
      strMois1 = "Pas encore de";
    }

    return Scaffold(
      backgroundColor: Mes_Styles.couleurDeFond,
      appBar: AppBar(
        backgroundColor: Colors.purple[800],
        title: Text("Résultat", style: Mes_Styles.b22),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              alignment: Alignment.center,
              width: double.infinity,
              height: 50,
              color: Colors.blue[900],
              child: Text(strDDR, style: Mes_Styles.b22),
            ),
            const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.center,
              color: Colors.blue[500],
              child: Text(strSem1, style: Mes_Styles.b22),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.center,
              color: Colors.blue[500],
              child: Text(strSem2, style: Mes_Styles.b22),
            ),
            const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.center,
              color: Colors.blue[900],
              child: Text(strMois1, style: Mes_Styles.b22),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.center,
              color: Colors.blue[900],
              child: Text(strMois2, style: Mes_Styles.b22),
            ),
            const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.center,
              color: Colors.blue[500],
              child: Text(strAccouch1, style: Mes_Styles.b22),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
              alignment: Alignment.center,
              color: Colors.blue[500],
              child: Text(strAccouch2, style: Mes_Styles.b22),
            ),
            SizedBox(height: 10),
            Builder(
              builder: (context) {
                return ElevatedButton(
                  style: Mes_Styles.v22,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyApp_grossesse(),
                      ),
                    );
                  },
                  child: Text('vers DDR', style: Mes_Styles.b22),
                );
              },
            ),
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
