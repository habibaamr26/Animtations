import 'package:flutter/material.dart';

import '../widgets/elevated_button.dart';

class AnimatedAlignWidget extends StatefulWidget {
  const AnimatedAlignWidget({super.key});

  @override
  State<AnimatedAlignWidget> createState() => _AnimatedAlignWidgetState();
}

class _AnimatedAlignWidgetState extends State<AnimatedAlignWidget> {
  int tomPosition = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Animated Align",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    AnimatedAlign(
                      alignment: _getPosition(tomPosition),
                      duration: Duration(milliseconds: 500),
                      child: Image(
                        image: AssetImage("asset/tom.png"),
                        width: 100,
                        height: 100,
                      ),
                    ),
                    AnimatedAlign(
                      alignment: _getPosition(tomPosition+1),
                      duration: Duration(milliseconds: 500),
                      child: Image(
                        image: AssetImage("asset/jerry.png"),
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ],
                ),
              ),

              CostumeElevatedButton(onPressed: () {
                if(tomPosition>8) {
                  tomPosition=0;
                } else {
                  tomPosition++;
                }

                setState(() {

                });
              }, label: 'Animate'),
            ],
          ),
        ),
      ),
    );
  }

  AlignmentGeometry _getPosition(jerryPosition) {
    switch (jerryPosition) {
      case 1:
        return Alignment.topCenter;
      case 2:
        return Alignment.topRight;
      case 3:
        return Alignment.centerLeft;
      case 4:
        return Alignment.center;
      case 5:
        return Alignment.centerRight;
      case 6:
        return Alignment.bottomLeft;
      case 7:
        return Alignment.bottomCenter;
      case 8:
        return Alignment.bottomRight;
      default:return Alignment.topLeft;
    }
  }
}
