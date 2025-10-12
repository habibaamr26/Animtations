

import 'package:flutter/animation.dart';

import 'package:flutter/material.dart';

class CustomAlignTransition extends StatefulWidget {
  const CustomAlignTransition({super.key});

  @override
  State<CustomAlignTransition> createState() => _CustomAlignTransitionState();
}

class _CustomAlignTransitionState extends State<CustomAlignTransition>
    with SingleTickerProviderStateMixin {
  late Animation<AlignmentGeometry> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
      reverseDuration: const Duration(seconds: 2),
    );

    animation = AlignmentTween(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ).animate(controller);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        elevation: 5,
        title: Text(
          "Align Transition",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          // Wrap AlignTransition in Expanded to give it proper constraints

          Expanded(
            child: AlignTransition(
              alignment: animation,
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepOrange,
                ),
              ),
            ),
          ),
          // Buttons at the bottom
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.reset();
                    controller.forward();
                  },
                  child: const Text("forward"),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}