import 'package:flutter/material.dart';

import '../widgets/elevated_button.dart';

class CostumeAnimatedPadding extends StatefulWidget {
  const CostumeAnimatedPadding({super.key});

  @override
  State<CostumeAnimatedPadding> createState() => _CostumeAnimatedPaddingState();
}

class _CostumeAnimatedPaddingState extends State<CostumeAnimatedPadding> {
  bool animate = true;

  List images = [
    "asset/jerry.png",
    "asset/tom.png",
    "asset/dog.png",
    "asset/cheese.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Animated Padding",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Expanded(
              child: GridView.builder(
                itemCount: images.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return AnimatedPadding(
                    duration: Duration(milliseconds: 500),
                    padding: EdgeInsets.all(animate ? 8.0 : 20),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Image(image: AssetImage(images[index])),
                    ),
                  );
                },
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
