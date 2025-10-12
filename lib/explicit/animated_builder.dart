import 'dart:math';

import 'package:flutter/material.dart';

class CostumeAnimatedBuilder extends StatefulWidget {
  const CostumeAnimatedBuilder({super.key});

  @override
  State<CostumeAnimatedBuilder> createState() => _CostumeAnimatedBuilderState();
}

class _CostumeAnimatedBuilderState extends State<CostumeAnimatedBuilder>
    with SingleTickerProviderStateMixin {
  late final AnimationController objectController;


  @override
  void initState() {
    super.initState();
    objectController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

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
          "Animated Builder",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: objectController,
              child: Image(
                image: AssetImage("asset/jerry.png"),
                width: 200,
                height: 200,
              ),
              builder: (BuildContext context, Widget? child) {
                return Transform.rotate(
                  angle:objectController.value * 2 * pi,
                  child:child ,
                );
              },
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

/// another example
/// like to make Positioned Transition by animated builder

/*


import 'package:flutter/material.dart';

class AnimatedBuilderWidget extends StatefulWidget {
  const AnimatedBuilderWidget({super.key});

  @override
  State<AnimatedBuilderWidget> createState() => _AnimatedBuilderWidgetState();
}

class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget> with SingleTickerProviderStateMixin{

  late final AnimationController _controller;
  late final Animation<double> object;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=AnimationController(vsync: this,duration: Duration(seconds: 2));
    object=Tween<double>(begin: 0,end:1 ).animate(_controller);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Positioned Transition by animated builder"),
        centerTitle: true,
      ),

      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  AnimatedBuilder(
                    animation: object,
                    builder: (BuildContext context, Widget? child) {
                      return PositionedDirectional(
                          top:100*_controller.value,        //0=>100
                          start:-100*_controller.value+100 ,    //100=>0
                          width:-150*_controller.value+200  ,
                          height:150*_controller.value+50 ,
                          child:child!,
                      );
                          },
                    child: Container(color: Colors.blue),
                  ),
                ],
              ),
            ),

            ElevatedButton(
              onPressed: () {
                _controller.value==0?_controller.forward():_controller.reverse();
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

 */