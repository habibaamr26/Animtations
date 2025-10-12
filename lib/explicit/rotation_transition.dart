import 'package:flutter/material.dart';
class CostumeRotationTransition extends StatefulWidget {
  const CostumeRotationTransition({super.key});

  @override
  State<CostumeRotationTransition> createState() => _CostumeRotationTransitionState();
}

class _CostumeRotationTransitionState extends State<CostumeRotationTransition>
    with SingleTickerProviderStateMixin {
  late final AnimationController objectController;
  late final Animation<double> jerryRotation;

  @override
  void initState() {
    super.initState();
    objectController = AnimationController(
      vsync: this,
      duration: Duration(seconds:3),
    );
    jerryRotation = Tween<double>(begin: 0, end: 7.5).animate(objectController);
  }

  @override
  void dispose() {
    objectController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Rotation Transition",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotationTransition(
              turns: jerryRotation,
              child: Container(
                color: Colors.deepOrange,
                width: 100,
                height: 100,
                child: Image(image: AssetImage("asset/jerry.png")),
              ),
            ),

            ElevatedButton(
              onPressed: () {
                objectController.value == 0
                    ? objectController.forward()
                    : objectController.reverse();
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