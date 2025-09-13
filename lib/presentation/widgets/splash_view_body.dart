import 'package:diey_app/presentation/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:get/route_manager.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: Offset(0, 10),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
    Future.delayed(Duration(seconds: 3), () {
      Get.to(
        () => MainPage(),
        transition: Transition.fade,
        duration: Duration(milliseconds: 300),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: AnimatedBuilder(
            animation: slidingAnimation,
            builder: (context, _) {
              return SlideTransition(
                position: slidingAnimation,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      "images/image.webp",
                      height: 150,
                    ),
                    SizedBox(height: 10,),
                    Center(child: CircularProgressIndicator(color: Colors.black,))
                  ],
                ),
              );
            },
          ),
        ),
      );
  }
}