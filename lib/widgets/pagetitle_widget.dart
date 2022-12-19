import 'package:flutter/material.dart';

class PageTitleWidget extends StatelessWidget {
  const PageTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: const EdgeInsets.symmetric( vertical: 30 , horizontal: 10),
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Classify Trasaction', style: TextStyle( fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),),
            SizedBox(height: 10,),
            Text('Classify thi transation into a particular category', style:  TextStyle(color: Colors.white, fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
