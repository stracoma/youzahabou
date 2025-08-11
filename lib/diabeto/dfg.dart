import 'package:flutter/material.dart';
String? sexe = "Homme";
class dfg extends StatefulWidget {

  const dfg({super.key});

  @override
  State<dfg> createState() => _dfgState();
}

class _dfgState extends State<dfg> {
  String? sexe = "Homme";
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.amber,
              child: Row(

                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Radio<String>(
                              value: "Homme",
                              groupValue: sexe,
                              onChanged: (value){
                                setState((){
                                  sexe = value;
                                });
                              }),
                        ),
                         Text("Homme"),
                      ],
                    ),
                  ),
                   Expanded(
                     flex: 1,
                       child: Padding(
                         padding: const EdgeInsets.all(12.0),
                         child: Center(
                           child: Text("Sexe",style:
                             TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                         ),
                       )),
                   Expanded(
                     flex: 1,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(12.0),
                           child: Radio<String>(
                              value: "Femme",
                              groupValue: sexe,
                              onChanged: (value){
                                setState((){
                                  sexe = value;
                                });}
                                ),
                         ),
                                         Text("Femme"),
                       ],
                     ),
                   )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
