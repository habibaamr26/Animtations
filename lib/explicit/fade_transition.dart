import 'package:flutter/material.dart';
/// simple example of a fade transition
class CostumeFadeTransition extends StatefulWidget {
  const CostumeFadeTransition({super.key});

  @override
  State<CostumeFadeTransition> createState() => _CostumeFadeTransitionState();
}

class _CostumeFadeTransitionState extends State<CostumeFadeTransition>
    with SingleTickerProviderStateMixin {
  late final AnimationController objectController;
  late final Animation<double> jerryFade;

  @override
  void initState() {
    super.initState();
    objectController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    jerryFade = Tween<double>(begin: 0, end: 1).animate(objectController);
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
              child: FadeTransition(
                opacity: jerryFade,
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