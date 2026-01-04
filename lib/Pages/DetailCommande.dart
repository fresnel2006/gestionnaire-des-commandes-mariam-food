import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailcommandePage extends StatefulWidget {
  const DetailcommandePage({super.key});

  @override
  State<DetailcommandePage> createState() => _DetailcommandePageState();
}

class _DetailcommandePageState extends State<DetailcommandePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height *0.08,),
              Image.asset("assets/images/mariame food.png",height: MediaQuery.of(context).size.height *0.2,width: MediaQuery.of(context).size.width *1,),
              SizedBox(height: MediaQuery.of(context).size.height *0.02,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(width: MediaQuery.of(context).size.width *0.32,

                    decoration: BoxDecoration(border: Border.all(color: Colors.orangeAccent)),

                  ),
                  Container(child: Text("Détails",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF632B23)),),),
                  Container(width: MediaQuery.of(context).size.width *0.32,
                    decoration: BoxDecoration(border: Border.all(color: Colors.orangeAccent)),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height *0.03,),
              Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.06),
                height: MediaQuery.of(context).size.height *0.035,
                width: MediaQuery.of(context).size.width *1,child: Text("Identifiant : ",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF632B23)),),
              ),
              Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.06),
                height: MediaQuery.of(context).size.height *0.035,
                width: MediaQuery.of(context).size.width *1,child:Text("Nom complet : ",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF632B23)),),
              ),
              Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.06),
                height: MediaQuery.of(context).size.height *0.035,
                width: MediaQuery.of(context).size.width *1,child: Text("Nom complet : ",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF632B23)),),
              ),
              Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.06),
                height: MediaQuery.of(context).size.height *0.035,
                width: MediaQuery.of(context).size.width *1,child:Text("Numero : ",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF632B23)),),
              ),
              Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.06),
                height: MediaQuery.of(context).size.height *0.035,
                width: MediaQuery.of(context).size.width *1,child:Text("Date : ",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF632B23)),),
              ),
              Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.06),
                height: MediaQuery.of(context).size.height *0.035,
                width: MediaQuery.of(context).size.width *1,child:Text("Date : ",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF632B23)),),
              ),
              Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.06),
                height: MediaQuery.of(context).size.height *0.035,
                width: MediaQuery.of(context).size.width *1,child:Text("Commande : ",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF632B23)),),
              ),
              Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.06),
                height: MediaQuery.of(context).size.height *0.035,
                width: MediaQuery.of(context).size.width *1,child:Text("Prix : ",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF632B23)),),
              ),
              Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.06),
                height: MediaQuery.of(context).size.height *0.035,
                width: MediaQuery.of(context).size.width *1,child:Text("Quantité : ",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF632B23)),),
              ),
              SizedBox(height: MediaQuery.of(context).size.height *0.03,),
              Container(
                height: MediaQuery.of(context).size.height *0.1,
                width: MediaQuery.of(context).size.width *0.6,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.1))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.whatsapp,color: Colors.white,size: MediaQuery.of(context).size.width *0.12,),
                    Text("WHATSAPP",style: TextStyle(fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.05,color: Colors.white),)
                  ],),
              ),
              SizedBox(height: MediaQuery.of(context).size.height *0.03,),

              Container(
                height: MediaQuery.of(context).size.height *0.1,
                width: MediaQuery.of(context).size.width *0.6,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.width *0.1))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.phone,color: Colors.white,size: MediaQuery.of(context).size.width *0.1,),
                    Text("TELEPHONE",style: TextStyle(fontFamily: "Poppins",fontSize: MediaQuery.of(context).size.width *0.05,color: Colors.white),)
                  ],),
              ),
              SizedBox(height: MediaQuery.of(context).size.height *0.03,),




            ],),
        ),
        Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height *0.04,left: MediaQuery.of(context).size.width *0.04),
          child: IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_circle_left_sharp,color: Color(0xFF632B23),size: MediaQuery.of(context).size.width *0.1,)),)
      ],),
    );
  }
}
