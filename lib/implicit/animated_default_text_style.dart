

import 'package:flutter/material.dart';

class CostumeAnimatedDefaultTextStyle extends StatefulWidget {
  const CostumeAnimatedDefaultTextStyle({super.key});

  @override
  State<CostumeAnimatedDefaultTextStyle> createState() =>
      _CostumeAnimatedDefaultTextStyleState();
}

class _CostumeAnimatedDefaultTextStyleState extends State<CostumeAnimatedDefaultTextStyle> {
  bool animate = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Animated Default Text Style",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Flexible(
              child: AnimatedDefaultTextStyle(
                curve: Curves.easeInOutCubicEmphasized,
                duration: Duration(seconds: 2),
                style: _getTextStyle(animate),
                child: Text(
                  "Animated Text ",),
              ),
            ),
           // Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(onPressed: (){
                  animate=false;
                  setState(() {
                  });
                }, icon: Icon(Icons.add)),

                IconButton(onPressed: (){
                  animate=true;
                  setState(() {
                  });
                }, icon: Icon(Icons.minimize)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextStyle _getTextStyle(animate)
  {
    if(animate)
      {
        return TextStyle(color: Colors.black,fontSize: 20,);
      }
    else {
      return TextStyle(color: Colors.orange,fontSize:40,fontWeight: FontWeight.bold);
    }
  }
}
