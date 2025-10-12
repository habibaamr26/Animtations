import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottiePackage extends StatefulWidget {

  LottiePackage({super.key});

  @override
  State<LottiePackage> createState() => _LottiePackageState();
}

class _LottiePackageState extends State<LottiePackage> {
  List<String> lottieList = [
    "asset/bird.json",
    "asset/car.json",
    "asset/tigger.json",
  ];

int count=0;
 late PageController pageController=PageController() ;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    StartTimer();
  }
void StartTimer(){


  Timer.periodic(Duration(seconds: 3), (timer) {
    if (pageController.page!.toInt() < lottieList.length - 1) {
      count++;
      pageController.nextPage(
          duration: Duration(milliseconds: 200), curve: Curves.easeIn);
    } else {
      timer.cancel();
      count = 0;
      pageController.jumpToPage(0);
    }
    setState(() {});
  });

  }


  @override
  void dispose() {
    pageController.dispose;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        title: Text(
          "example by Lottie Package",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),

      body: PageView.builder(
       controller: pageController,
        itemCount: lottieList.length,
        itemBuilder: (context, index) {
          return Center(child: Lottie.asset(lottieList[index]));
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: count,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
      ]),
    );
  }
}
