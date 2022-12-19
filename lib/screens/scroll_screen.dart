import 'package:flutter/material.dart';

import 'package:ui_aplication/screens/scroll_screen_dos.dart';


class ScrollScreen extends StatelessWidget {
   
  const ScrollScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: const [
          _ScreenUno(),
          ScrollDosScreen()
        ],
      )
      
    );
  }
}

class _ScreenUno extends StatelessWidget {
  const _ScreenUno({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const  [
        _Background(),

        _Contenido()
      ],
    );
  }
}

class _Contenido extends StatelessWidget {
  
  const _Contenido({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children:  [
          const Text('UI', style: TextStyle(fontSize: 100),),
          const Text('APLICACIÓN',style: TextStyle(fontSize: 80),),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down_rounded, size: 150,)
    
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xff30BAD6),
      child: const Image(image: AssetImage('assets/scroll-1.png'), fit: BoxFit.cover,));
  }
}