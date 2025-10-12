import 'package:flutter/material.dart';
class CostumeSizeTransition extends StatefulWidget {
  const CostumeSizeTransition({super.key});

  @override
  State<CostumeSizeTransition> createState() => _CostumeSizeTransitionState();
}

class _CostumeSizeTransitionState extends State<CostumeSizeTransition>
    with SingleTickerProviderStateMixin {
  late final AnimationController objectController;
  late final Animation<double> jerrySize;

  @override
  void initState() {
    super.initState();
    objectController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    jerrySize = Tween<double>(begin: 0, end: 1).animate(objectController);
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
          "Size Transition",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: SizeTransition(
                fixedCrossAxisSizeFactor: null,
                axis: Axis.vertical,
                sizeFactor: jerrySize,
                child: Container(
                  color: Colors.deepOrange,
                  child: Image(image: AssetImage("asset/jerry.png")),
                ),
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