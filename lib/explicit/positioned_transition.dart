import 'package:flutter/material.dart';

/// make by Positioned Transition

class CostumePositionedTransition extends StatefulWidget {
  const CostumePositionedTransition({super.key});

  @override
  State<CostumePositionedTransition> createState() =>
      _CostumePositionedTransitionState();
}

class _CostumePositionedTransitionState
    extends State<CostumePositionedTransition>
    with SingleTickerProviderStateMixin {
  late final AnimationController objectController;
  late final Animation<RelativeRect> jerryRect;
  late final Animation<RelativeRect> tomRect;
  late final Animation<RelativeRect> dogRect;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    objectController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    jerryRect = RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, 0, 0, 0),
      end: RelativeRect.fromLTRB(250, 250, 0, 0),
    ).animate(objectController);
    tomRect = RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, 0, 0, 0),
      end: RelativeRect.fromLTRB(110, 110, 0, 0),
    ).animate(objectController);
    dogRect = RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, 0, 0, 0),
      end: RelativeRect.fromLTRB(30, 30, 0, 0),
    ).animate(objectController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Positioned Transition",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: Column(
        children: [
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                PositionedTransition(
                  rect: dogRect,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey,
                    child: Image(image: AssetImage("asset/dog.png")),
                  ),
                ),
                PositionedTransition(
                  rect: tomRect,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    child: Image(image: AssetImage("asset/tom.png")),
                  ),
                ),
                PositionedTransition(
                  rect: jerryRect,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.orange,
                    child: Image(image: AssetImage("asset/jerry.png")),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          objectController.forward();
                          setState(() {});
                        },
                        child: const Icon(Icons.start),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          objectController.reverse();
                          setState(() {});
                        },
                        child: const Icon(Icons.close),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
