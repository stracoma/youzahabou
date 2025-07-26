import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:youzahabou/main.dart';
import 'mes_styles.dart';
import 'resultat.dart';
import 'echo.dart';
import 'mounassabates.dart';

int nbr_jours = 0;
int nbr_sem = 0;
int jours_sem = 0;
int nbr_mois = 0;
int jours_mois = 0;
String semaines = "";
String mois = "";
DateTime DDR = DateTime.now();
DateTime accouchement = DateTime.now();
DateFormat dtf = DateFormat("dd MMMM yyyy", 'fr_FR');

class MyApp_grossesse extends StatefulWidget {
  const MyApp_grossesse({super.key});

  @override
  State<MyApp_grossesse> createState() => _MyApp_grossesseState();
}

class _MyApp_grossesseState extends State<MyApp_grossesse> {
  DateTime jourChoisi = DateTime.now();
  //DateTime focusJour=DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Mes_Styles.couleurDeFond,
      appBar: AppBar(
        backgroundColor: Colors.purple[800],
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text('DDR', style: Mes_Styles.b22),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TableCalendar(
              locale: "fr_FR",
              focusedDay: jourChoisi,
              firstDay: DateTime(2022, 1, 1),
              lastDay: DateTime(2030, 12, 31),
              startingDayOfWeek: StartingDayOfWeek.monday,
              selectedDayPredicate: (jour) {
                return isSameDay(jourChoisi, jour);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  jourChoisi = selectedDay;
                  focusedDay = jourChoisi;
                  DDR = jourChoisi;
                });
              },
            ),

            Builder(
              builder: (context) {
                return ElevatedButton(
                  style: Mes_Styles.v22,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Resultat()),
                    );
                  },
                  child: const Text("Calculer"),
                );
              },
            ),
            const SizedBox(height: 5),
            Builder(
              builder: (context) {
                return ElevatedButton(
                  style: Mes_Styles.v22,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Echo()),
                    );
                  },
                  child: const Text("Échographie"),
                );
              },
            ),
            SizedBox(height: 5),
            Builder(
              builder: (context) {
                return ElevatedButton(
                  style: Mes_Styles.v22,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Mounassabates(),
                      ),
                    );
                  },
                  child: const Text("مناسبات"),
                );
              },
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
