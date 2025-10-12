import 'package:animation/widgets/elevated_button.dart';
import 'package:flutter/material.dart';



import '../../implicit/animated_align.dart';
import '../../implicit/animated_container.dart';
import '../../implicit/animated_default_text_style.dart';
import '../../implicit/animated_list.dart';
import '../../implicit/animated_opacity.dart';
import '../../implicit/animated_opacity_rotation.dart';
import '../../implicit/animated_padding.dart';
import '../../implicit/animated_physical_model.dart';
import '../../implicit/animated_positioned-directional.dart';
import '../../implicit/animated_positioned.dart';
import '../../implicit/animated_scale_icon.dart';
import '../../implicit/animated_slide.dart';
import '../../implicit/animated_switcher.dart';
import '../../implicit/cross_fade.dart';
import '../../implicit/tween_animation_builder.dart';

class ImplicitScreen extends StatelessWidget {
  ImplicitScreen({super.key});

  List screens=[
    {
      "screen":AnimatedAlignWidget(),
      "name":"Animated Align"
    } ,
    {
      "screen":CostumeAnimatedContainer(),
      "name":"Animated Container"
    } ,

    {
      "screen":CostumeAnimatedDefaultTextStyle(),
      "name":"Animated Default Text Style"
    },
    {
      "screen":CostumeAnimatedOpacity(),
      "name":"Animated Opacity"
    },
    {
      "screen":CostumeAnimatedPadding(),
      "name":"Animated Padding"
    },

    {
      "screen":CostumePhysicalModel(),
      "name":"Animated Physical Model"
    },
    {
      "screen":CostumeAnimatedPositioned(),
      "name":"Animated Positioned"
    },
    {
      "screen":CostumeAnimatedPositionedDirectional(),
      "name":" Positioned Directional"
    },

    {
      "screen":CostumeCrossFade(),
      "name":"Cross Fade"
    },

    {
      "screen":CostumeAnimatedSwitcher(),
      "name":"Animated Switcher"
    },
    {
      "screen":CostumeAnimatedList(),
      "name":"Animated List"
    },
    {
      "screen":CustomAnimatedOpacityRotation(),
      "name":"Animated Opacity & Rotation"
    },
    {
      "screen":CustomAnimatedSlide(),
      "name":"Animated Slide"
    },
    {
      "screen":CustomAnimatedScaleAndIcon(),
      "name":"Animated Scale & Icon"
    },
    {
      "screen":CostumeTweenAnimationBuilder(),
      "name":"Tween Animation Builder"
    },
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
