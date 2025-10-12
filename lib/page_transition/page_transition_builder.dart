import 'package:flutter/cupertino.dart';

class PageTransitionBuilder extends PageRouteBuilder {
  late final WidgetBuilder page;
 late final RouteTransitionsBuilder Function;

  PageTransitionBuilder({required this.page,required this.Function})
    : super(
        pageBuilder: (context, animation, secondAnimation) => page(context),
        transitionDuration: Duration(seconds: 1),
        reverseTransitionDuration: Duration(seconds: 1),
        transitionsBuilder: Function,
      );
}
