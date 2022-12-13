import 'package:flutter/material.dart';

class Welcome extends StatelessWidget{
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
       body: Padding(
       padding: const EdgeInsets.all(20.0),
    child: ListView(
     children: [
     Text(
       "heading",
       style: Theme.of(context).textTheme.headline2,),
    ]
   ),
       ),
   );
  }
}