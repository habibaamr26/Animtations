import 'package:flutter/material.dart';

import '../../page_transition/new_page.dart';
import '../../page_transition/page_transition_builder.dart';
import '../../widgets/elevated_button.dart';

class PageTransition extends StatefulWidget {
  const PageTransition({super.key});

  @override
  State<PageTransition> createState() => _PageTransitionState();
}

class _PageTransitionState extends State<PageTransition> {
  List screens = [
    {
      "screen": NewPage(),
      "name": "Page Fade Transition",
      "transitionFunction": (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        return FadeTransition(opacity: animation, child: child);
      },
    },

    {
      "screen": NewPage(),
      "name": "Page Scale Transition",
      "transitionFunction": (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        return ScaleTransition(scale: animation, child: child);
      },
    },

    {
      "screen": NewPage(),
      "name": "Page Rotation Transition",
      "transitionFunction": (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        return RotationTransition(turns: animation, child: child);
      },
    },

    {
      "screen": NewPage(),
      "name": "Page Slide Transition",
      "transitionFunction": (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        return SlideTransition(
          position: animation.drive(
            Tween<Offset>(begin: Offset(1, 1), end: Offset.zero),
          ),
          child: child,
        );
      },
    },

    {
      "screen": NewPage(),
      "name": "Page Size Transition",
      "transitionFunction": (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        return Align(
          alignment: Alignment.center,
            child: SizeTransition(sizeFactor: animation, child: child));
      },
    },

    {
      "screen": NewPage(),
      "name": "Page Size and Fade ",
      "transitionFunction": (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        return Align(
          alignment: Alignment.center,
          child: SizeTransition(
            sizeFactor: animation,
            axisAlignment: -1.0,
            child: FadeTransition(opacity: animation, child: child),
          ),
        );
      },
    },

    {
      "screen": NewPage(),
      "name": "Page Scale and Rotation ",
      "transitionFunction": (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
        Widget child,
      ) {
        return ScaleTransition(
          scale: animation,
          child: RotationTransition(turns: animation, child: child),
        );
      },
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.teal,
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "Page Transition",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemCount: screens.length,
            itemBuilder: (BuildContext context, int index) {
              return CostumeElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    PageTransitionBuilder(
                      page: (context) => NewPage(),
                      Function: screens[index]["transitionFunction"],
                    ),
                  );
                },
                label: screens[index]["name"],
              );
            },
          ),
        ),
      ),
    );
  }
}
