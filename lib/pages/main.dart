import 'package:flutter/material.dart';
import 'package:grocery_app/model/cart_model.dart';
import 'package:grocery_app/model/water_model.dart';
import 'package:provider/provider.dart';

import 'intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
return ChangeNotifierProvider(
    create: (context)=>CartModel(),
  child: const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: IntroPage(),
  ),
    );
  }
}
