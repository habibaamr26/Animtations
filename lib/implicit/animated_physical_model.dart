

import 'package:flutter/material.dart';


class CostumePhysicalModel extends StatefulWidget {
  const CostumePhysicalModel({super.key});

  @override
  State<CostumePhysicalModel> createState() => _CostumePhysicalModelState();
}

class _CostumePhysicalModelState extends State<CostumePhysicalModel> {
  bool animate = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Animated Physical Model",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Flexible(
              child: GestureDetector(
                onTap: (){
                  animate=!animate;
                  setState(() {
                  });
                },
                child: AnimatedPhysicalModel(
                  borderRadius: BorderRadius.circular(25),
                  shape: BoxShape.rectangle,
                  elevation: animate?0:60,
                  duration: Duration(milliseconds: 1000),
                  color: Colors.blue,
                  shadowColor: Colors.grey,
                  child: Image(image: AssetImage("asset/tom.png"),width: 200,height: 200,),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
