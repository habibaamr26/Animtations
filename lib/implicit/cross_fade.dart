import 'package:flutter/material.dart';

class CostumeCrossFade extends StatefulWidget {
  const CostumeCrossFade({super.key});

  @override
  State<CostumeCrossFade> createState() => _CostumeCrossFadeState();
}

class _CostumeCrossFadeState extends State<CostumeCrossFade> {
  bool _isFirstWidgetVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Animated Cross Fade",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                _isFirstWidgetVisible = !_isFirstWidgetVisible;
                setState(() {});
              },
              child: AnimatedCrossFade(
                firstCurve: Curves.easeInOutExpo,
                secondCurve: Curves.fastLinearToSlowEaseIn,
                firstChild: costumeContainer(
                  color: Colors.deepOrange,
                  image: "asset/tom.png",
                ),
                secondChild: costumeContainer(
                  color: Colors.blue,
                  image: "asset/jerry.png",
                ),
                crossFadeState:
                    _isFirstWidgetVisible
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                duration: Duration(milliseconds: 500),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget costumeContainer({required Color color, required String image}) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
      ),
      width: 200,
      height: 200,
      child: Image(image: AssetImage(image)),
    );
  }
}
