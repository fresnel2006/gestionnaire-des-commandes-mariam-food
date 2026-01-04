import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
class CommandePage extends StatefulWidget {
  const CommandePage({super.key});

  @override
  State<CommandePage> createState() => _CommandePageState();
}



class _CommandePageState extends State<CommandePage> {
  var ensemble_de_donnee;
  Future <void> charger_commande() async{
    final url=Uri.parse("http://10.0.2.2:8000/ensemble_des_commandes");
    var message=await http.get(url);
      setState(() {
        ensemble_de_donnee=jsonDecode(message.body);
      });

print(ensemble_de_donnee);


  }
  Future <void> repetition() async{
    Timer.periodic(
      Duration(seconds: 5), (timer ) {charger_commande();},
    );

  }
  @override
  void initState(){
    super.initState();
    charger_commande();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
          child: Stack(
        children: [
        Container(
            child: Image.asset("assets/images/mariame food.png",height: MediaQuery.of(context).size.height *0.2,)),
          Column(
            children: [
              Container(width: MediaQuery.of(context).size.width *1,),
              SizedBox(height: MediaQuery.of(context).size.height *0.2,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Container(width: MediaQuery.of(context).size.width *0.32,

                decoration: BoxDecoration(border: Border.all(color: Colors.orangeAccent)),

                ),
                  Container(child: Text("Commande",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF632B23)),),),
                  Container(width: MediaQuery.of(context).size.width *0.32,
                    decoration: BoxDecoration(border: Border.all(color: Colors.orangeAccent)),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height *0.01,),
              Container(
                
                height: MediaQuery.of(context).size.height *0.77,
                child: ListView.builder(itemCount:20,itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                   ),
                  child: ListTile(title: Text("TCHEPE POULET | 0150161468",style: TextStyle(color: Color(0xFF632B23),fontFamily: "Poppins"),),trailing: Icon(Icons.subdirectory_arrow_right_outlined,color: Color(0xFF632B23)),
    leading: Container(
      width: MediaQuery.of(context).size.width *0.1,
      child:Icon(FontAwesomeIcons.burger,color: Color(0xFF632B23)) ,),subtitle: Column(children: [
                    Container(
                      width: MediaQuery.of(context).size.width *1, 
                        child:
                    Text("Prix : 1000 FCFA",style: TextStyle(color: Color(0xFF632B23),fontFamily: "Poppins"),)
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width *1,
                        color: Colors.white,
                        child:
                        Text("Quantité : x2 ",style: TextStyle(color: Color(0xFF632B23),fontFamily: "Poppins"),)
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width *1,
                        color: Colors.white,
                        child:
                        Text("2025-01-12 22:30:22",style: TextStyle(color: Color(0xFF632B23),fontFamily: "Poppins"),)
                    )
                  ],),),
                ),)
                ,)

            ],)
      ],))
    );
  }
}
