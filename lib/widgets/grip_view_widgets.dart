
import 'dart:ui';

import 'package:flutter/material.dart';

class GripViewWidget extends StatelessWidget {
   
  const GripViewWidget({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Table(
      children: const [
        TableRow(children: [
          _ContainerRow(icon: Icons.access_alarm, title: 'Alarma',color: Colors.amber,),
          _ContainerRow(icon: Icons.grading_outlined, title: 'Lista', color: Colors.yellow,),
        ]),
         TableRow(children: [
          _ContainerRow(icon: Icons.lock, title: 'Lock', color: Colors.blueAccent,),
          _ContainerRow(icon: Icons.fingerprint, title: 'fingerprint',color: Colors.purple),
        ]),
         TableRow(children: [
          _ContainerRow(icon: Icons.help_outline, title: 'help outline',color: Colors.redAccent),
          _ContainerRow(icon: Icons.paid, title: 'paid',color: Colors.lightGreenAccent),
        ]),
         TableRow(children: [
          _ContainerRow(icon: Icons.date_range, title: 'date range',color: Colors.brown),
          _ContainerRow(icon: Icons.lightbulb, title: 'lightbulb',color: Colors.teal),
        ]),
      ],
    );
  }
}

class _ContainerRow extends StatelessWidget {
  
  final String title;
  final IconData icon;
  final Color? color;
  
  const _ContainerRow({
     required this.title, required this.icon,  this.color,
  });

  @override
  Widget build(BuildContext context) {
    return
    Container(
      margin: const EdgeInsets.all(15),
      height: 250,
      decoration:   BoxDecoration(
        color: const Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  [
          CircleAvatar(
            backgroundColor: color,
            radius: 30,
            child: Icon(icon, size: 35, color: Colors.white,),
          ),
          const SizedBox(height: 10),
          Text(title, style:  TextStyle( fontSize: 20, color: color),)
        ],
      ),
      
    );
  }
}