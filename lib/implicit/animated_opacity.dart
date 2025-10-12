import 'package:flutter/material.dart';

import '../widgets/elevated_button.dart';

class CostumeAnimatedOpacity extends StatefulWidget {
  const CostumeAnimatedOpacity({super.key});

  @override
  State<CostumeAnimatedOpacity> createState() => _CostumeAnimatedOpacityState();
}

class _CostumeAnimatedOpacityState extends State<CostumeAnimatedOpacity> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Animated Opacity",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Flexible(
              child: AnimatedOpacity(
                opacity: isVisible ? 1 : 0,
                duration: Duration(milliseconds: 500),
                child: Text(
                  "Animated Text",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            Flexible(
              child: AnimatedOpacity(
                opacity: isVisible ? 1 : 0,
                duration: Duration(milliseconds: 1500),
                child: Image(image: AssetImage("asset/jerry.png")),
              ),
            ),
            Flexible(
              child: AnimatedOpacity(
                opacity: isVisible ? 1 : 0,
                duration: Duration(milliseconds: 2000),
                child: Image(image: AssetImage("asset/tom.png")),
              ),
            ),
            CostumeElevatedButton(
              onPressed: () {
                isVisible = !isVisible;
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
