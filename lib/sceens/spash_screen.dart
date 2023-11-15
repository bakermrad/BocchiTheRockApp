import 'package:bocchiapp/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Animate(
            effects: [SlideEffect(duration: 1000.ms)],
            child: Center(
              child: Image.asset(
                "assets/Logo_Bocchi-transformed.png",
                width: 240,
                height: 74,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height / 2 + 70,
            left: MediaQuery.sizeOf(context).width / 2 - 58,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 18,
                  width: 18,
                  color: AppColors.bocchiColor,
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 18,
                  width: 18,
                  color: AppColors.nijikaColor,
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 18,
                  width: 18,
                  color: AppColors.ryoColor,
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 18,
                  width: 18,
                  color: AppColors.kitaColor,
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height / 2 + 200,
            left: MediaQuery.sizeOf(context).width / 2 - 52,
            child: const Text("いらっしゃいませ",
                style: TextStyle(fontSize: 16, color: AppColors.textColor)),
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height / 2 + 300,
            left: MediaQuery.sizeOf(context).width / 2 - 12,
            child: SvgPicture.asset(
              'assets/icons/Swipe.svg',
              width: 24,
              height: 24,
            ),
          ),
          // Animate(
          //   effects: [FadeEffect(), ScaleEffect()],
          //   child: Text("Hello World!"),
          // ),
          Positioned(
            top: MediaQuery.sizeOf(context).height / 2 + 330,
            left: MediaQuery.sizeOf(context).width / 2 - 18,
            child: Animate(
              delay: 3000.ms,
              effects: [
                FadeEffect(duration: 1000.ms),
                ScaleEffect(),
              ],
              child: const Text("Swipe",
                  style: TextStyle(
                    fontSize: 16,
                    color: AppColors.textColor,
                    fontWeight: FontWeight.w900,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
