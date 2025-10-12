import 'package:flutter/material.dart';

class CustomAnimatedOpacityRotation extends StatefulWidget {
  const CustomAnimatedOpacityRotation({super.key});

  @override
  State<CustomAnimatedOpacityRotation> createState() =>
      _CustomAnimatedOpacityRotationState();
}

class _CustomAnimatedOpacityRotationState
    extends State<CustomAnimatedOpacityRotation> {
  late double turns = 0;
  late double opacity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Animated Opacity & Rotation",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            AnimatedRotation(
              alignment: Alignment.bottomLeft, //change center of rotation
              curve: Curves.easeInCirc,
              turns: turns, // 0.5 => rotate by 180degree
              duration: Duration(seconds: 2),
              child: AnimatedOpacity(
                opacity: opacity,
                duration: Duration(seconds: 2),
                curve: Curves.easeInOutCirc,
                child: FlutterLogo(size: 100),
              ),
            ),

            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    turns++; //positive=> clock wise
                    opacity = 0;
                    setState(() {});
                  },
                  icon: Icon(Icons.add, size: 50),
                ),
                IconButton(
                  onPressed: () {
                    turns--; //negative=> anti clockwise
                    opacity = 1;
                    setState(() {});
                  },
                  icon: Icon(Icons.add, size: 50),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
