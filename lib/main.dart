import 'package:flutter/material.dart';
import 'package:gestionnaire_des_commandes_mariam_food/Pages/Commande.dart';
import 'package:gestionnaire_des_commandes_mariam_food/Pages/DetailCommande.dart';

void main() {
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
        body: CommandePage()
      ),
    );
  }
}
