import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gestionnaire_des_commandes_mariam_food/Pages/Commande.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

Future <void> main() async {
  await Supabase.initialize(
    url: 'https://nciavyshfzeeasjjdgck.supabase.co',
    anonKey: 'sb_publishable_M6zNV1rveNAYU6KPdKH7mQ_wgamdve6',
  );
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(MyApp());
  });
}
final supabase = Supabase.instance.client;
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
        body: CommandePage(),
      ),);
  }
}