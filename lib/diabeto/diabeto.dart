import 'package:flutter/material.dart';
import 'package:youzahabou/mesStyles.dart';
import 'package:youzahabou/diabeto/hba1c.dart';
import 'dfg.dart';

class diabete extends StatelessWidget {
  const diabete({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.purple[800],
        title: Text("Diabète",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Builder(
              builder: (context) {
                return ElevatedButton(
                  style: mestyles.tsyleBouton(),
                    onPressed: (){},
                    child: Text("LDL"));
              }
            ),
            SizedBox(height: 20), // Espace entre les boutons)


            Builder(
                builder: (context) {
                  return ElevatedButton(
                      style: mestyles.tsyleBouton(),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Hba1c()),
                        );
                      },
                      child: Text("HBA1C"));
                }
            ),
            SizedBox(height: 20), // Espace entre les boutons)

            Builder(
                builder: (context) {
                  return ElevatedButton(
                      style: mestyles.tsyleBouton(),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => dfg()),
                        );

                      },
                      child: Text("DFG"));
                }
            ),
            SizedBox(height: 20), // Espace entre les boutons)
          ],
        ),
      ),

    );
  }
}
