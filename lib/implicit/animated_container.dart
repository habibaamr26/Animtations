import 'package:flutter/material.dart';

import '../widgets/elevated_button.dart';

class CostumeAnimatedContainer extends StatefulWidget {
  const CostumeAnimatedContainer({super.key});

  @override
  State<CostumeAnimatedContainer> createState() =>
      _CostumeAnimatedContainerState();
}

class _CostumeAnimatedContainerState extends State<CostumeAnimatedContainer> {
  bool animate = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Animated Container",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Flexible(
                child: AnimatedContainer(
                  duration: Duration(seconds: 2),
                  decoration: BoxDecoration(
                    color: animate ? Colors.grey : Colors.teal,
                    borderRadius: BorderRadius.circular(animate ? 25 : 18),
                  ),
                  width: animate ? 100 : 200,
                  height: animate ? 100 : 200,
                  child: Image(image: AssetImage("asset/jerry.png")),
                ),
              ),
              Spacer(),
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
      ),
    );
  }
}
