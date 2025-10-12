import 'package:flutter/material.dart';

import '../widgets/elevated_button.dart';

class CostumeAnimatedSwitcher extends StatefulWidget {
  const CostumeAnimatedSwitcher({super.key});

  @override
  State<CostumeAnimatedSwitcher> createState() =>
      _CostumeAnimatedSwitcherState();
}

class _CostumeAnimatedSwitcherState extends State<CostumeAnimatedSwitcher> {
   int counter = 0;

  List widgets=[
    CostumeElevatedButton(
      onPressed: () {
      },
      label: 'Animate',
    ),
    Container(
      color: Colors.blue,
      width: 100,
      height: 100,
      child: Image(image: AssetImage("asset/tom.png")),
    ),
    Container(
      color: Colors.blue,
      width: 200,
      height: 200,
      child: Image(image: AssetImage("asset/jerry.png")),
    ),
    CircularProgressIndicator(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Animated Cross Fade",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: AnimatedSwitcher(
                switchInCurve: Curves.bounceInOut,
                switchOutCurve: Curves.easeOut,
                duration: Duration(milliseconds: 500),
                child: _getChild(),
                transitionBuilder: (child, animation) {
                  return ScaleTransition(
                    scale: animation,
                    child: RotationTransition(
                        turns: animation,
                      child: child,
                    ),
                  );
                },
              ),
            ),

            CostumeElevatedButton(
              onPressed: () {
                counter++;
                setState(() {

                });
              },
              label: 'Animate',
            ),
          ],
        ),
      ),
    );
  }
  Widget _getChild()
  {
    return widgets[counter%(widgets.length)];
  }
}
