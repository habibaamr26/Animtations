import 'package:flutter/material.dart';

class CostumeIndexedStackTransition extends StatefulWidget {
  const CostumeIndexedStackTransition({super.key});

  @override
  State<CostumeIndexedStackTransition> createState() =>
      _CostumeIndexedStackTransitionState();
}

class _CostumeIndexedStackTransitionState
    extends State<CostumeIndexedStackTransition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Indexed Stack Transition",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: IndexedStack(

      ),
    );
  }
}
