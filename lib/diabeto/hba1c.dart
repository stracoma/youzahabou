import 'package:flutter/material.dart';

class Hba1c extends StatefulWidget {
  const Hba1c({super.key});

  @override
  State<Hba1c> createState() => _Hba1cState();
}

class _Hba1cState extends State<Hba1c> {
  final TextEditingController _hba1cController = TextEditingController();
  double hba1c = 0;
  double glycemie = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("HBA1C"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Glycémie plasmatique",
              style: TextStyle(
                color: Colors.blue[800],
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "à partir de Hba1c",
              style: TextStyle(
                color: Colors.blue[800],
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Hba1c = ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),), //Text
                SizedBox(
                  width: 80,
                  child: TextField(
                    controller: _hba1cController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      isDense: true,
                      contentPadding: EdgeInsets.all(8),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  hba1c = double.tryParse(_hba1cController.text) ?? 0;
                  // Ici tu peux calculer la glycémie si tu veux
                  glycemie = ((1.59 * hba1c) - 2.59)/5.5; // exemple
                });
              },
              child: Text("Calculer"),
            ),
            SizedBox(height: 20),
            Text(glycemie.toStringAsFixed(2) + " g/L",
            style:
              TextStyle(fontSize: 32, fontWeight: FontWeight.bold,color: Colors.blue[800]))
          ],
        ),
      ),
    );
  }
}
