import 'package:flutter/material.dart';

class CustomScaleTransition extends StatefulWidget {
  const CustomScaleTransition({super.key});

  @override
  State<CustomScaleTransition> createState() => _CustomScaleTransitionState();
}

class _CustomScaleTransitionState extends State<CustomScaleTransition>
    with SingleTickerProviderStateMixin {
  late final Animation<double> scale;
  late final AnimationController objectController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    objectController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    scale = Tween<double>(begin: 1, end: 2).animate(objectController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        elevation: 5,
        title: Text(
          "Scale Transition",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: ScaleTransition(
                scale: scale,
                child: FlutterLogo(size: 90),
              ),
            ),
            Flexible(
              child: Container(
                color: Colors.black,
                child: SizeTransition(
                  //axis: Axis.horizontal,
                    sizeFactor: Tween<double>(
                      begin: 1,
                      end: 2,
                    ).animate(objectController),
                    child:Container(
                        width: 50,
                        height: 50,
                        color: Colors.orange,
                        child: Icon(Icons.add))
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
