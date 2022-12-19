import 'dart:math';

import 'package:flutter/material.dart';

class BackgroumWidget extends StatelessWidget {
  const BackgroumWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        _FondoColor(),
        Positioned(top: -110,left: -15,child: _BoxPink()),
      ],
    );
  }
}

class _FondoColor extends StatelessWidget {
  const _FondoColor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
            0.2,
            0.8
          ],
              colors: [
            //* SE COLOCAN DOS VALORES
            Color(0xff2E305F),
            Color(0xff202333),
          ])),
    );
  }
}


class _BoxPink extends StatelessWidget {
  const _BoxPink({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 4,
      child: Container(
       width: 450,
       height: 450,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(236, 98, 188, 1),
            Color.fromRGBO(241, 142, 172, 1)
          ]),
          borderRadius: BorderRadius.circular(80)
        ),    
          
          
      ),
    );
  }
}