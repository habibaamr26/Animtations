import 'package:animation/home_screens/screens/custome_paint_screen.dart';
import 'package:animation/home_screens/screens/page_transition_screen.dart';
import 'package:animation/widgets/elevated_button.dart';
import 'package:animation/home_screens/screens/explicit_screen.dart';
import 'package:flutter/material.dart';

import 'screens/implicit_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Animation",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CostumeElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ImplicitScreen()),
                );
              },
              label: 'Implicit Animation',
            ),
            SizedBox(height: 10),
            CostumeElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ExplicitScreen()),
                );
              },
              label: 'Explicit Animation',
            ),
            SizedBox(height: 10),
            CostumeElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => PageTransition()),
                );
              },
              label: 'Page Transition',
            ),
            SizedBox(height: 10),
            CostumeElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => CustomPaintScreen()),
                );
              },
              label: 'Custom Animation',
            ),
          ],
        ),
      ),
    );
  }
}
