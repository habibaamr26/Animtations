import 'package:flutter/material.dart';

/// simple example of a custom paint screen
class CustomPaintScreen extends StatefulWidget {
  const CustomPaintScreen({super.key});

  @override
  State<CustomPaintScreen> createState() => _CustomPaintScreenState();
}

class _CustomPaintScreenState extends State<CustomPaintScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animationDouble;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(reverse: true);
    animationDouble = Tween<double>(begin: 1, end: 50).animate(controller);
    animationDouble.addListener((){
      setState(() {
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Paint Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomPaint(
              painter: MyPainter(animationDouble.value),
              child: SizedBox(width: 200, height: 200),
            ),
            ElevatedButton(onPressed: () {
              //controller.value==0?controller.forward():controller.reverse();
            }, child: Text("animate")),
          ],
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  final double radius;


  MyPainter(this.radius);

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = Colors.red
          ..shader = LinearGradient(
            colors: [Colors.red, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ).createShader(
            Rect.fromCircle(
              center: Offset(size.width / 2, size.height / 2),
              radius: radius,
            ),
          )
          ..style = PaintingStyle.fill
          ..strokeWidth = 4.0;

    final c = Offset(size.width / 2, size.height / 2);
    canvas.drawCircle(c, radius, paint);
  }

  @override
  bool shouldRepaint(covariant MyPainter oldDelegate) {
    return oldDelegate.radius != this.radius;
  }
}
