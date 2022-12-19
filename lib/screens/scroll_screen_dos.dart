import 'package:flutter/material.dart';

import 'package:ui_aplication/screens/ui_screen.dart';

class ScrollDosScreen extends StatelessWidget {
   
  const ScrollDosScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [ 
          Container(
            color: const Color(0xff30BAD6),
            child: Center(
              child: TextButton(
              style: TextButton.styleFrom(
                elevation: 5,
                backgroundColor: Colors.black87,
                shape: const  StadiumBorder()
              ),
              child: const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 40),
                child: Text('Bienvenido', style: TextStyle( fontSize: 30, color: Colors.white) ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const UiScreen()));
              }, 
              ),
            ) ,
           ),
        
        ]
      )
    );
  }
}