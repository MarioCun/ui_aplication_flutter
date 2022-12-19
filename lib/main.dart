import 'package:flutter/material.dart';

import 'package:ui_aplication/screens/screens.dart';
import 'package:ui_aplication/screens/ui_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'scroll-route',
      theme: ThemeData.dark(),
      routes: {
        'Landscape-route': (_) => const  LandScapeScreen(),
        'scroll-route': (_) => const  ScrollScreen(),
        'ui-route': (_) => const  UiScreen()
      } ,
    );
  }
}

