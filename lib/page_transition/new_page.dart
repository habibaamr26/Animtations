import 'package:flutter/material.dart';

import '../widgets/elevated_button.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
          "Page 2",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 5,
      ),


      body: Center(
        child: CostumeElevatedButton(onPressed: () {
          Navigator.pop(context);
        }, label: 'GO BACK',),
      ),
    );
  }
}
