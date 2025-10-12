

import 'package:flutter/material.dart';

import '../../explicit/align_transition.dart';
import '../../explicit/animated_builder.dart';
import '../../explicit/default_text_style_transition.dart';
import '../../explicit/fade_transition.dart';
import '../../explicit/indexed_stack_transition.dart';
import '../../explicit/positioned_transition.dart';
import '../../explicit/rotation_fade_transition.dart';
import '../../explicit/rotation_transition.dart';
import '../../explicit/scale_transition.dart';
import '../../explicit/size_transition.dart';
import '../../explicit/slide_transition.dart';
import '../../widgets/elevated_button.dart';

class ExplicitScreen extends StatelessWidget {
   ExplicitScreen({super.key});
  List screens=[
    {
      "screen":CostumePositionedTransition(),
      "name":"Positioned Transition"
    } ,
    {
      "screen":CostumeSizeTransition(),
      "name":"Size Transition"
    } ,
    {
      "screen":CostumeRotationTransition(),
      "name":"Rotation Transition"
    } ,
    {
      "screen":CostumeFadeTransition(),
      "name":"Fade Transition"
    } ,

    {
      "screen":CostumeDefaultTextStyleTransition(),
      "name":"Default Text Style Transition"
    } ,
    {
      "screen":CostumeIndexedStackTransition(),
      "name":"Indexed Stack Transition"
    } ,
    {
      "screen":CustomScaleTransition(),
      "name":"Scale Transition"
    } ,
    {
      "screen":CustomAlignTransition(),
      "name":"Align Transition"
    } ,
    {
      "screen":CustomRotationFadeTransition(),
      "name":"Rotation Fade Transition"
    } ,
    {
      "screen":CustomSlideTransition(),
      "name":"Slide Transition"
    } ,
    {
      "screen":CostumeAnimatedBuilder(),
      "name":"Animated Builder"
    } ,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.teal,
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Implicit Animation",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemCount: screens.length,
            itemBuilder: (BuildContext context, int index) {
              return CostumeElevatedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => screens[index]["screen"]),
                );
              }, label: screens[index]["name"]);
            },

          ),
        ),
      ),
    );
  }
}
