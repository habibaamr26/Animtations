


import 'package:flutter/material.dart';


class CostumeAnimatedPositionedDirectional extends StatefulWidget {
  const CostumeAnimatedPositionedDirectional({super.key});

  @override
  State<CostumeAnimatedPositionedDirectional> createState() =>
      _CostumeAnimatedPositionedDirectionalState();
}

class _CostumeAnimatedPositionedDirectionalState
    extends State<CostumeAnimatedPositionedDirectional> {
  double start = 0;
  double top = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Animated Positioned Directional",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(
                clipBehavior: Clip.none,
                children: [

                  AnimatedPositionedDirectional(
                    top: top,
                    start: start,
                    duration: Duration(milliseconds: 500),
                    child: Image(
                      image: AssetImage("asset/jerry.png"),
                      width: 100,
                      height: 100,
                    ),
                  ),
                ],
              ),
            ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: moveLeft, icon: Icon(Icons.arrow_circle_left)),
              IconButton(onPressed: moveDown, icon: Icon(Icons.arrow_circle_down)),
              IconButton(onPressed: moveRight, icon: Icon(Icons.arrow_circle_right)),
              IconButton(onPressed: (){}, icon: Icon(Icons.arrow_circle_up)),
            ],
          ),
            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
void moveLeft()
{
  start=start-50;
  if(start<0) {
    start=0;
  }
  setState(() {
  });
}
  void moveRight()
  {
    start=start+50;
    if(start>MediaQuery.of(context).size.width )
      {
        start=0;
      }
  setState(() {
    });
  }
  void moveDown()
  {
    top=top+50;
    if(top>MediaQuery.of(context).size.height )
    {
      top=0;
    }
    setState(() {
    });
  }
  void moveUp()
  {
    top=top-50;
    if(top<0) {
      top=0;
    }
    setState(() {
    });
  }
}
