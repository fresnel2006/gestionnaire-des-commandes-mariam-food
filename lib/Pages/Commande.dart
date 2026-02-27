import 'dart:convert';

import 'package:gestionnaire_des_commandes_mariam_food/Pages/DetailCommande.dart';
import 'package:gestionnaire_des_commandes_mariam_food/main.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
class CommandePage extends StatefulWidget {
  const CommandePage({super.key});

  @override
  State<CommandePage> createState() => _CommandePageState();
}

class _CommandePageState extends State<CommandePage> {

  var ensemble_de_donnee;
  var food=[];

  List <String> identifiant=[];
  Future <void> charger_commande() async{
    var nourriture=await supabase
        .from("commandes")
        .select("*");
    print(nourriture);
    for(int i=0;i<nourriture.length;i++){
      if (nourriture[i]["produit"].toString().contains("CRÊPE")){
        setState(() {
          food.add(nourriture[i]);
        });

      }
    }
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
                    margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.02),
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
                      child: food.isEmpty?

                      Container(
                          child: Column(
                            children: [
                              Lottie.asset("assets/animations/Frying Pan Breakfast.json",height: MediaQuery.of(context).size.height *0.25,),
                              Text("Chargement...",style: TextStyle(color: Color(0xFF632B23),fontFamily: "Poppins"))
                            ],)):ListView.builder(itemCount:food.length,itemBuilder: (context, index) {
                        var item=food[index];
                        return Container(
                          decoration: BoxDecoration(),
                          child: ListTile(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailcommandePage(food:food[index])));
                            },
                            title: Column(children: [
                              Container(
                                width: MediaQuery.of(context).size.width *1,
                                child: Text("${food[index]["id"]}",style: TextStyle(color: Color(0xFF632B23),fontFamily: "Poppins"),),
                              ),Container(
                                  width: MediaQuery.of(context).size.width *1,
                                  child: Text("${food[index]["numero"]}",style: TextStyle(color: Colors.orange,fontFamily: "Poppins"),)
                              )],),leading: Container(
                            width: MediaQuery.of(context).size.width *0.12,
                            child:Icon(FontAwesomeIcons.burger,color: Colors.orangeAccent) ,),subtitle: Column(children: [
                            Container(
                                width: MediaQuery.of(context).size.width *1,
                                child:
                                Row(children: [
                                  Text("Prix : ",style: TextStyle(color: Color(0xFF632B23),fontFamily: "Poppins"),)

                                  ,Text("${food[index]["prix_produit"]} FCFA",style: TextStyle(color: Colors.green,fontFamily: "Poppins"),)

                                ],)
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width *1,
                                color: Colors.white,
                                child:
                                Row(
                                  children: [
                                    Text("Quantité : ",style: TextStyle(color: Color(0xFF632B23),fontFamily: "Poppins"),)
                                    ,Text("x${food[index]["quantite"]}",style: TextStyle(color: Colors.green,fontFamily: "Poppins"),)

                                  ],)
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width *1,
                                color: Colors.white,
                                child:
                                Text("${food[index]["produit"]}",style: TextStyle(color: Colors.orange,fontFamily: "Poppins"),)
                            )
                          ],),trailing: Icon(Icons.subdirectory_arrow_right_outlined,color: Color(0xFF632B23)),),
                        );},)
                      ,)

                  ],)
              ],))
    );
  }
}