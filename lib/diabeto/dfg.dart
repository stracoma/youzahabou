import 'package:flutter/material.dart';
String? sexe = "Homme";
class dfg extends StatefulWidget {

  const dfg({super.key});

  @override
  State<dfg> createState() => _dfgState();
}

class _dfgState extends State<dfg> {
  String? sexe = "Homme";
  String? noir = "oui";
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _poidsController = TextEditingController();
  final TextEditingController _creatController = TextEditingController();
  int age = 0;
  double poids = 0;
  double creat=0;
  String strAge = "";
  String strPoids = "";
  String strCreat = "";
  String avertissement = "Avertissement";

  @override
  void dispose() {
    _ageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("DFG"),
      ),
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
                      //mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
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
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text("Sexe",style:TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
                    ),
                  ),
                   Expanded(
                     flex: 1,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
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
            ),
            SizedBox(height: 5,),
            Container(
              color: Colors.blue,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Radio<String>(
                              value: "oui",
                              groupValue: noir,
                              onChanged: (value){
                                setState((){
                                  noir = value;
                                });
                              }),
                        ),
                        Text("Oui"),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Text("Race noire",style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        ),
                      )
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Radio<String>(
                              value: "non",
                              groupValue: noir,
                              onChanged: (value){
                                setState((){
                                  noir = value;
                                });}
                          ),
                        ),
                        Text("Non"),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                          color: Colors.green,child: Center(child: Text("Âge",style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold),))),
                    )),
                Expanded(
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextField(
                            controller: _ageController,
                            keyboardType: TextInputType.number,
                            onChanged: (value){
                              setState((){
                                age = int.parse(value);
                                strAge = '$age ans';
                              });
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              isDense: true,

                              contentPadding: EdgeInsets.all(8),
                            ),
                          ),
                        )
                    )
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                          color: Colors.green,child: Center(child: Text("Poids",style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold),))),
                    )),
                Expanded(
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0,right: 12.0),
                          child: TextField(
                            controller: _poidsController,
                            keyboardType: TextInputType.number,
                            onChanged: (value){
                              setState((){
                                poids = double.parse(value);
                                strPoids = '$poids Kg';
                              });
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              isDense: true,

                              contentPadding: EdgeInsets.all(8),
                            ),
                          ),
                        )
                    )
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Container(
                          color: Colors.green,child: Center(child: Text("Créatinine",style:TextStyle(fontSize: 30, fontWeight: FontWeight.bold),))),
                    )),
                Expanded(
                    child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: TextField(
                            controller: _creatController,
                            keyboardType: TextInputType.number,
                            onChanged: (value){
                              setState((){
                                creat = double.parse(value);
                                strCreat = '$creat Kg';
                              });
                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              isDense: true,

                              contentPadding: EdgeInsets.all(8),
                            ),
                          ),
                        )
                    )
                ),
              ],
            ),
            Text(avertissement,style: TextStyle(color: Colors.red,fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
