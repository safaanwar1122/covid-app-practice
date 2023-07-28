import 'package:flutter/material.dart';
import 'dart:math' as math;

class SplashScreenAnimatedView extends StatefulWidget {
  const SplashScreenAnimatedView({Key? key}) : super(key: key);

  @override
  State<SplashScreenAnimatedView> createState() =>
      _SplashScreenAnimatedViewState();
}

class _SplashScreenAnimatedViewState extends State<SplashScreenAnimatedView>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 3), vsync: this)
        ..repeat();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedBuilder(
                animation: _controller, // here we provide image to rotate
                child: Container(
                  // container will contain image
                  height: 200,
                  width: 200,
                  child: const Center(
                    child: Image(image: AssetImage('images/virus.png')),
                  ),
                ),
                builder: (BuildContext context, Widget? child) {
                  return Transform.rotate(
                    // here we decide angle of rotation
                    angle: _controller.value * 2.0 * math.pi,
                    child: child,
                      );
                }),
          ],
        ),
      ),
    );
  }
}

/*TickerProviderStateMixin helps to build animation
AnimationController builds 16 frames per second, controller helps to aminate screen by controlling it
Duration is used for time take to splash/animate  on screen also vsync: this)
        ..repeat is used to animate screen
 AnimatedBuilder is used for screen animation
 also  builder: (BuildContext context, Widget? child)  is used for animation
child of Transform.rotate is equal to child which actually means child of  AnimatedBuilder contaiing child as image

*/
