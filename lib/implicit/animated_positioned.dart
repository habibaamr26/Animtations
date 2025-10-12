import 'package:flutter/material.dart';

import '../widgets/elevated_button.dart';

class CostumeAnimatedPositioned extends StatefulWidget {
  const CostumeAnimatedPositioned({super.key});

  @override
  State<CostumeAnimatedPositioned> createState() =>
      _CostumeAnimatedPositionedState();
}

class _CostumeAnimatedPositionedState
    extends State<CostumeAnimatedPositioned> {
  bool animate = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Animated Physical Positioned",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Image(
                      image: AssetImage("asset/cheese.png"),
                      width: 100,
                      height: 100,
                    ),
                  ),

                  AnimatedPositioned(
                    top: 0,
                    left: animate?250:0,
                    duration: Duration(milliseconds: 1500),
                    child: Image(
                      image: AssetImage("asset/jerry.png"),
                      width: 100,
                      height: 100,
                    ),
                  ),

                  AnimatedPositioned(
                    top: animate?350:0,
                    left: 0,
                    duration: Duration(milliseconds: 1000),
                    child: Image(
                      image: AssetImage("asset/tom.png"),
                      width: 100,
                      height: 100,
                    ),
                  ),

                  AnimatedPositioned(
                    top: animate?120:0,
                    left:animate? 200:0,
                    duration: Duration(milliseconds: 1500),
                    child: Image(
                      image: AssetImage("asset/dog.png"),
                      width: 100,
                      height: 100,
                    ),
                  ),
                ],
              ),
            ),

            CostumeElevatedButton(
              onPressed: () {
                animate = !animate;
                setState(() {});
              },
              label: 'Animate',
            ),
          ],
        ),
      ),
    );
  }
}
