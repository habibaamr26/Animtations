
import 'package:flutter/material.dart';

class CustomRotationFadeTransition extends StatefulWidget {
  const CustomRotationFadeTransition({super.key});

  @override
  State<CustomRotationFadeTransition> createState() => _CustomRotationFadeTransitionState();
}

class _CustomRotationFadeTransitionState extends State<CustomRotationFadeTransition>
    with TickerProviderStateMixin {
  late Animation<double> turns;
  late AnimationController animationController;
  late Animation<double> opacity;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    turns = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(animationController); // 0 to 1 = 0 to 365

    opacity = Tween<double>(
      begin: 1,
      end: 0,
    ).animate(animationController); //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text("Rotation & Fade transition", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Expanded(
              child: RotationTransition(
                alignment: Alignment.bottomCenter,
                turns: turns,
                child: FadeTransition(
                    opacity: opacity,
                    child: FlutterLogo(size: 100)),
              ),
            ),

            IconButton(
              onPressed: () {
                animationController.value == 0
                    ? animationController.forward()
                    : animationController.reverse();


                setState(() {});
              },
              icon: Icon(Icons.add, size: 50),
            ),
          ],
        ),
      ),
    );
  }
}