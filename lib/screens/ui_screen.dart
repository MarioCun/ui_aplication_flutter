import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:ui_aplication/widgets/widgets.dart';



class UiScreen extends StatelessWidget {
   
  const UiScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const  [
          BackgroumWidget(),

          _UiBody()
        ],
      ),
      bottomNavigationBar: const BotomNavigatorWidget(),
    );
  }
}

class _UiBody extends StatelessWidget {
  const _UiBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
    filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const  [
            PageTitleWidget(),
        
            GripViewWidget(),
        
          ],
        ),
      ),
    )
    ;
  }
}