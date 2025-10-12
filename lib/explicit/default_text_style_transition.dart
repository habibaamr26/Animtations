import 'package:flutter/material.dart';
/// simple example of a default text style transition
class CostumeDefaultTextStyleTransition extends StatefulWidget {
  const CostumeDefaultTextStyleTransition({super.key});

  @override
  State<CostumeDefaultTextStyleTransition> createState() =>
      _CostumeDefaultTextStyleTransitionState();
}

class _CostumeDefaultTextStyleTransitionState
    extends State<CostumeDefaultTextStyleTransition>
    with SingleTickerProviderStateMixin {

  late final AnimationController controller;
  late final Animation<TextStyle> style;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    style=TextStyleTween(
      begin: _getTextStyle(true),
      end: _getTextStyle(false),
    ).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Default Text Style Transition",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            Flexible(
              child: DefaultTextStyleTransition(
                style: style,
                child: Text("Animated Text "),
              ),
            ),
            // Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                   controller.forward();
                    setState(() {});
                  },
                  icon: Icon(Icons.add),
                ),

                IconButton(
                  onPressed: () {
                  controller.reverse();
                    setState(() {});
                  },
                  icon: Icon(Icons.minimize),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextStyle _getTextStyle(animate) {
    if (animate) {
      return TextStyle(color: Colors.black, fontSize: 20);
    } else {
      return TextStyle(
        color: Colors.orange,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      );
    }
  }
}
