import 'package:flutter/material.dart';

class CustomAnimatedScaleAndIcon extends StatefulWidget {
  const CustomAnimatedScaleAndIcon({super.key});

  @override
  State<CustomAnimatedScaleAndIcon> createState() =>
      _CustomAnimatedScaleAndIconState();
}

class _CustomAnimatedScaleAndIconState extends State<CustomAnimatedScaleAndIcon>
    with SingleTickerProviderStateMixin {
  bool change = true;
  late final AnimationController objectController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    objectController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated Scale & Icon"), centerTitle: true),

      body: Center(
        child: Column(
          children: [
            Expanded(
              child: AnimatedScale(
                scale: change ? 1 : 5,
                duration: Duration(seconds: 1),
                child: FlutterLogo(),
              ),
            ),

            Expanded(
              child: AnimatedIcon(
                icon: AnimatedIcons.list_view,
                progress: Tween<double>(
                  begin: 0,
                  end: 1,
                ).animate(objectController),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                change = !change;
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
