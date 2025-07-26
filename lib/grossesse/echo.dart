import 'package:flutter/material.dart';
import 'package:youzahabou/main.dart';
import 'mes_styles.dart';
import 'resultat.dart';
import 'package:table_calendar/table_calendar.dart';
import 'main_grossesse.dart';

class Echo extends StatefulWidget {
  const Echo({super.key});

  @override
  State<Echo> createState() => _EchoState();
}

class _EchoState extends State<Echo> {
  int valeur_sem = 4;
  int valeur_jours = 0;
  DateTime jourChoisi = DateTime.now();

  @override
  Widget build(BuildContext context) {
    List<int> semaines = [];
    for (int i = 4; i < 40; i++) {
      semaines.add(i);
    }

    List<int> ayams = [];
    for (int i = 0; i < 7; i++) {
      ayams.add(i);
    }
    return Scaffold(
      backgroundColor: Mes_Styles.couleurDeFond,
      appBar: AppBar(
        backgroundColor: Colors.purple[800],
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text("Échographie", style: Mes_Styles.b22),
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
            Row(
              children: [
                const SizedBox(width: 22.0),
                Expanded(
                  child: DropdownButton(
                    value: valeur_sem,
                    items:
                        semaines.map((int val) {
                          return DropdownMenuItem<int>(
                            value: val,
                            child: Text(val.toString()),
                          );
                        }).toList(),
                    onChanged: (Tamane) {
                      setState(() {
                        valeur_sem = Tamane!;
                      });
                    },
                  ),
                ),
                Expanded(child: Text('sem', style: Mes_Styles.n18)),
                Expanded(child: Text('et', style: Mes_Styles.n18)),
                Expanded(
                  child: DropdownButton(
                    value: valeur_jours,
                    items:
                        ayams.map((int val) {
                          return DropdownMenuItem<int>(
                            value: val,
                            child: Text(val.toString()),
                          );
                        }).toList(),
                    onChanged: (Tamane2) {
                      setState(() {
                        valeur_jours = Tamane2!;
                      });
                    },
                  ),
                ),
                Expanded(child: Text('jour(s)', style: Mes_Styles.n18)),
                const SizedBox(width: 22.0),
              ],
            ),
            ElevatedButton(
              style: Mes_Styles.v22,
              onPressed: () {
                setState(() {
                  int jours = valeur_sem * 7 + valeur_jours;
                  DDR = jourChoisi.subtract(Duration(days: jours));
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Resultat()),
                  );
                });
              },
              child: const Text('Calculer'),
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
