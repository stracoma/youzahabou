import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:youzahabou/anemie/main_anemie.dart';
import 'tsh/main.dart';
import 'grossesse/main_grossesse.dart';
import'diabeto/diabeto.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('fr_FR', null);

  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber[200],
        appBar: AppBar(
          backgroundColor: Colors.amber[500],
          title: Text('Youzahabou'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Builder(
                builder: (context) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(200, 50), // Largeur 200px, hauteur 50px
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyApp_grossesse(),
                        ),
                      );
                    },
                    child: Text('Grossesse'),
                  );
                },
              ),
              SizedBox(height: 20), // Espace entre les boutons
              Builder(
                builder: (context) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(200, 50), // Largeur 200px, hauteur 50px
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => main_anemie()),
                      );
                    },
                    child: Text('Anémie'),
                  );
                },
              ),
              SizedBox(height: 20), // Espace entre les boutons
              Builder(
                builder: (context) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(200, 50), // Largeur 200px, hauteur 50px
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TSHApp()),
                      );
                    },
                    child: Text('TSH'),
                  );
                },
              ),
              SizedBox(height: 20), // Espace entre les boutons

              Builder(
                builder: (context) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(200, 50), // Largeur 200px, hauteur 50px
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => diabete()),
                      );
                    },
                    child: Text('Diabète'),
                  );
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}
