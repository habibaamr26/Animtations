

import 'package:flutter/material.dart';

class CustomAnimatedSlide extends StatefulWidget {
  const CustomAnimatedSlide({super.key});

  @override
  State<CustomAnimatedSlide> createState() => _CustomAnimatedSlideState();
}

class _CustomAnimatedSlideState extends State<CustomAnimatedSlide> {
  Offset offset=Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Animated Slide",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Expanded(
              child: AnimatedSlide(
                offset: offset,
                duration: const Duration(seconds: 2),
                child: Align(
                  alignment: Alignment.center, // أو Center لو عايزاه في النص
                  child: Container(
                    width: 100,
                    height: 50,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),


            ElevatedButton(
              onPressed: () {
                offset= offset==Offset(0, 0)?Offset(1,-1):Offset(0, 0);
                setState(() {});
              },
              child: Text("Animate"),
            ),
          ],
        ),
      ),
    );
  }
}
