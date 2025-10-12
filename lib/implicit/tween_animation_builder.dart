import 'package:flutter/material.dart';

import '../widgets/elevated_button.dart';

class CostumeTweenAnimationBuilder extends StatefulWidget {
  const CostumeTweenAnimationBuilder({super.key});

  @override
  State<CostumeTweenAnimationBuilder> createState() =>
      _CostumeTweenAnimationBuilderState();
}

class _CostumeTweenAnimationBuilderState
    extends State<CostumeTweenAnimationBuilder> {

  double opacityEnd=1;
  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Tween Animation builder",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Flexible(
              child: TweenAnimationBuilder(
                duration: Duration(seconds: 2),
                tween: Tween<double>(begin: 0, end: opacityEnd),
                builder: (BuildContext context,value, Widget? child) {
                  return Opacity(
                    opacity: value,
                    child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  );
                },
              ),
            ),

            CostumeElevatedButton(onPressed: (){
              opacityEnd = opacityEnd == 0 ? 1.0 : 0.0;
              setState(() {

              });
            }, label: "Animate")
          ],
        ),
      ),
    );
  }
}
