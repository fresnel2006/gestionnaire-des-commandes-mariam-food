import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher_android/url_launcher_android.dart';

class DetailcommandePage extends StatefulWidget {
  DetailcommandePage({super.key, required this.crepes});
var crepes;
  @override
  State<DetailcommandePage> createState() => _DetailcommandePageState();
}

class _DetailcommandePageState extends State<DetailcommandePage> {
Future<void> lancer_whatsapp() async{
  final url=Uri.parse("https://wa.me/225${widget.crepes[1]}");
  var whatsapp=launchUrl(url,mode: LaunchMode.externalApplication);
}
Future<void> lancer_telephone() async{
  final url=Uri(scheme: 'tel',path:"225${widget.crepes[1]}" );
  var whatsapp=launchUrl(url,mode: LaunchMode.externalApplication);
}
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
                width: MediaQuery.of(context).size.width *1,child: Row(children: [
                Text("Identifiant : ",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF632B23)),),
                Text("${widget.crepes[0]}",style: TextStyle(fontFamily: "Poppins",color: Colors.orange),),

              ],),
              ),
              Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.06),
                height: MediaQuery.of(context).size.height *0.035,
                width: MediaQuery.of(context).size.width *1,child:Row(
                children: [
                  Text("Nom complet : ",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF632B23)),)
    ,Text("${widget.crepes[5]}",style: TextStyle(fontFamily: "Poppins",color: Colors.green),),

    ],),
              ),
              Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.06),
                height: MediaQuery.of(context).size.height *0.035,
                width: MediaQuery.of(context).size.width *1,child:Row(
    children: [
    Text("Numero : ",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF632B23)),)
    ,Text("${widget.crepes[1]}",style: TextStyle(fontFamily: "Poppins",color: Colors.green),),

    ],)      ),

              Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.06),
                height: MediaQuery.of(context).size.height *0.035,
                width: MediaQuery.of(context).size.width *1,child:Row(
    children: [
    Text("Date : ",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF632B23)),)
    ,Text("${widget.crepes[4]}",style: TextStyle(fontFamily: "Poppins",color: Colors.orange),),

    ],) ),
              Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.06),
                height: MediaQuery.of(context).size.height *0.035,
                width: MediaQuery.of(context).size.width *1,child:Row(
    children: [
    Text("Commande : ",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF632B23)),)
    ,Text("${widget.crepes[3]}",style: TextStyle(fontFamily: "Poppins",color: Colors.orange),),

    ],)),
              Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.06),
                height: MediaQuery.of(context).size.height *0.035,
                width: MediaQuery.of(context).size.width *1,child:Row(
    children: [
    Text("Prix : ",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF632B23)),)
    ,Text("${widget.crepes[6]} FCFA",style: TextStyle(fontFamily: "Poppins",color: Colors.orange),),

    ],)),
              Container(
                margin: EdgeInsets.only(left: MediaQuery.of(context).size.width *0.06),
                height: MediaQuery.of(context).size.height *0.035,
                width: MediaQuery.of(context).size.width *1,child:Row(
    children: [
    Text("Quantite : ",style: TextStyle(fontFamily: "Poppins",color: Color(0xFF632B23)),)
    ,Text("x${widget.crepes[2]}",style: TextStyle(fontFamily: "Poppins",color: Colors.orange),),

    ],)),
              SizedBox(height: MediaQuery.of(context).size.height *0.03,),
              GestureDetector(
                onTap: (){
                  lancer_whatsapp();
                },
                child: Container(
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
              ),),
              SizedBox(height: MediaQuery.of(context).size.height *0.03,),
GestureDetector(
  onTap: (){lancer_telephone();},
  child:
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
              ),),
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
