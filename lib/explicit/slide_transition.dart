import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSlideTransition extends StatefulWidget {
  const CustomSlideTransition({super.key});

  @override
  State<CustomSlideTransition> createState() => _CustomSlideTransitionState();
}

class _CustomSlideTransitionState extends State<CustomSlideTransition>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> position;
  late AnimationController objectController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    objectController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    position = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(0.5, -0.5),
    ).animate(objectController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " Slide Transition",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        elevation: 5,
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Expanded(
              child: SlideTransition(
                position: position,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(width: 100, height: 50, color: Colors.blue),
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
