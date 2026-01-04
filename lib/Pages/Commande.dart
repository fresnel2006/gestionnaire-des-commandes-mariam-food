import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gestionnaire_des_commandes_mariam_food/Pages/DetailCommande.dart';
import 'package:http/http.dart' as http;
import 'package:lottie/lottie.dart';
class CommandePage extends StatefulWidget {
  const CommandePage({super.key});

  @override
  State<CommandePage> createState() => _CommandePageState();
}



class _CommandePageState extends State<CommandePage> {
  var ensemble_de_donnee;
  var crepes=[];
  List <String> identifiant=[];
  Future <void> charger_commande() async{
    final url=Uri.parse("http://192.168.1.42:8000/ensemble_des_commandes");
    var message=await http.get(url);
      setState(() {
        ensemble_de_donnee=jsonDecode(message.body);
      });
print(ensemble_de_donnee["resultat"].length);
int i=0;
print(ensemble_de_donnee["resultat"][1]);
while(i<ensemble_de_donnee["resultat"].length){
  print(i);
  if(ensemble_de_donnee["resultat"][i][3].contains("CRÊPES")){
    setState(() {
      crepes.add(ensemble_de_donnee["resultat"][i]);
    });
  }else{
    print("pas ajouté");
  }
  setState(() {
    i++;
  });
}
print(ensemble_de_donnee["resultat"][0]);
print(crepes);


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
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.04,left: MediaQuery.of(context).size.width *0.03),
            child: Image.asset("assets/images/mariame food.png",height: MediaQuery.of(context).size.height *0.17,)),
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
                child: crepes.isEmpty?

                Container(
                  child: Column(
                    children: [
    Lottie.asset("assets/animations/Frying Pan Breakfast.json",height: MediaQuery.of(context).size.height *0.25,),
                    Text("Chargement...",style: TextStyle(color: Color(0xFF632B23),fontFamily: "Poppins"))
    ],)):ListView.builder(itemCount:crepes.length,itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(),
                  child: ListTile(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailcommandePage(crepes:crepes[index])));
                    },
                    title: Column(children: [
    Container(
      width: MediaQuery.of(context).size.width *1,
      child: Text("${crepes[index][3]} ",style: TextStyle(color: Color(0xFF632B23),fontFamily: "Poppins"),),
    ),Container(
                        width: MediaQuery.of(context).size.width *1,
                        child: Text("${crepes[index][1]}",style: TextStyle(color: Colors.orange,fontFamily: "Poppins"),)
                    )],),leading: Container(
      width: MediaQuery.of(context).size.width *0.12,
      child:Icon(FontAwesomeIcons.burger,color: Colors.orangeAccent) ,),subtitle: Column(children: [
                    Container(
                      width: MediaQuery.of(context).size.width *1, 
                        child:
    Row(children: [
      Text("Prix : ",style: TextStyle(color: Color(0xFF632B23),fontFamily: "Poppins"),)

      ,Text("${crepes[index][6]} FCFA",style: TextStyle(color: Colors.green,fontFamily: "Poppins"),)

    ],)
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width *1,
                        color: Colors.white,
                        child:
    Row(
      children: [
        Text("Quantité : ",style: TextStyle(color: Color(0xFF632B23),fontFamily: "Poppins"),)
,Text("x${crepes[index][2]}",style: TextStyle(color: Colors.green,fontFamily: "Poppins"),)

        ],)
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width *1,
                        color: Colors.white,
                        child:
                        Text("${crepes[index][4]}",style: TextStyle(color: Colors.orange,fontFamily: "Poppins"),)
                    )
                  ],),trailing: Icon(Icons.subdirectory_arrow_right_outlined,color: Color(0xFF632B23)),),
                ),)
                ,)

            ],)
      ],))
    );
  }
}
