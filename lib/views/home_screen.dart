import 'dart:ui';
import 'package:bocchiapp/controllers/character_controller.dart';
import 'package:bocchiapp/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import '../model/character_class.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CharacterController controller = Get.put(CharacterController());

  @override
  Widget build(BuildContext context) {
    List<Character> characters = [
      Character(
          "50 kg & 163 cm",
          "Yellow eye",
          "ハムキタス",
          "山田 リョウ",
          "assets/images/ryo-1-transformed.png",
          "assets/ryo_img_1.png",
          "assets/ryo_img_2.png",
          AppColors.ryoColor,
          AppColors.ryosecondColor,
          name: 'Yamada Ryo'),
      Character(
          "50 kg & 156 cm",
          "Aqua eye",
          'ギターヒーロー',
          '後藤 ひとり',
          "assets/images/gotoh-1 (1).png",
          "assets/bocchi_img_1.png",
          "assets/bocchi_img_2.png",
          AppColors.bocchiColor,
          AppColors.bocchiSecondColor,
          name: 'Hitori Gotō'),
      Character(
          '44 kg & 158 cm',
          'Yellow eye',
          '逃げたギタ',
          '喜多 郁代',
          "assets/images/ikuyo-2-transformed.png",
          "assets/Kita_img_1.png",
          "assets/Kita_img_2.png",
          AppColors.kitaColor,
          AppColors.kitaSecondColor,
          name: 'Ikuyo Kita'),
      Character(
          '48 kg & 154 cm',
          'Vermillion eye',
          '下北沢の大天使',
          '伊地知 虹夏',
          "assets/images/nijika (2).png",
          "assets/Nijika_img_1.png",
          "assets/Nijika_img_2.png",
          AppColors.nijikaColor,
          AppColors.nijikaSecondColor,
          name: 'Ijichi Nijika')
    ];
    return Scaffold(
      backgroundColor: characters[controller.index.value].color,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   // backgroundColor: AppColors.ryoColor,
      //   forceMaterialTransparency: true,
      //   elevation: 0,
      //   centerTitle: true,
      //   leading: Transform.scale(
      //     scale: 0.80,
      //     child: SvgPicture.asset(
      //       'assets/icons/menus.svg',
      //     ),
      //   ),
      //   title: Image.asset(
      //     "assets/Logo_Bocchi-transformed.png",
      //     width: 100,
      //     height: 50,
      //   ),
      // ),
      body: Stack(
        children: [
          Obx(() => Animate(
                key: ValueKey(controller.index.value),
                effects: [
                  MoveEffect(
                    curve: Curves.fastLinearToSlowEaseIn,
                    delay: 200.ms,
                    duration: 1300.ms,
                    begin: const Offset(1000, 0),
                    end: const Offset(0, 0),
                  ),
                  ShimmerEffect(
                    duration: 1500.ms,
                    delay: 150.ms,
                  ),
                ],
                child: Positioned(
                  left: -260,
                  top: -60,
                  child: Transform.flip(
                    flipX: true,
                    child: Opacity(
                      opacity: 0.2,
                      child: Image.asset(
                        characters[controller.index.value].mainImage,
                        height: 1200,
                        width: 600,
                      ),
                    ),
                  ),
                ),
              )),
          Obx(() => Animate(
                key: ValueKey(controller.index.value),
                effects: [
                  MoveEffect(
                    curve: Curves.fastLinearToSlowEaseIn,
                    delay: 200.ms,
                    duration: 1000.ms,
                    begin: const Offset(500, 0),
                    end: const Offset(0, 0),
                  ),
                  ShimmerEffect(duration: 2500.ms, delay: 500.ms, angle: -1),
                ],
                child: Positioned(
                    right: 0,
                    top: -10,
                    child: Container(
                      height: MediaQuery.sizeOf(context).height + 10,
                      width: 90,
                      color: characters[controller.index.value].color2,
                    )),
              )),
          Obx(() => Animate(
                key: ValueKey(controller.index.value),
                effects: [
                  MoveEffect(
                    curve: Curves.fastLinearToSlowEaseIn,
                    delay: 210.ms,
                    duration: 600.ms,
                    begin: const Offset(400, 0),
                    end: const Offset(0, 0),
                  )
                ],
                child: Positioned(
                    right: 0,
                    bottom: 80,
                    child: RotatedBox(
                      quarterTurns: -1,
                      child: Text(
                        characters[controller.index.value].name,
                        style: TextStyle(
                            fontSize: 90,
                            fontWeight: FontWeight.bold,
                            color: characters[controller.index.value].color),
                      ),
                    )),
              )),
          Obx(() => Animate(
                key: ValueKey(controller.index.value),
                effects: [
                  MoveEffect(
                    curve: Curves.fastLinearToSlowEaseIn,
                    delay: 200.ms,
                    duration: 800.ms,
                    begin: const Offset(600, 0),
                    end: const Offset(0, 0),
                  )
                ],
                child: Stack(children: [
                  Positioned(
                    right: 20,
                    top: 70,
                    child: Container(
                      color: AppColors.textColor,
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        characters[controller.index.value].img1,
                        height: 45,
                        width: 45,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 140,
                    child: Container(
                      color: AppColors.textColor,
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        characters[controller.index.value].img2,
                        height: 45,
                        width: 45,
                      ),
                    ),
                  ),
                ]),
              )),
          Positioned(
            right: 10,
            bottom: -40,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: characters[controller.index.value].color,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 100.0,
                    spreadRadius: 51.0,
                  ), //BoxShadow
                ],
              ),
              child: Transform.scale(
                scale: 1.15,
                child: Opacity(
                  opacity: 0.6,
                  child: Image.asset('assets/Dots element.png'),
                ),
              ),
            ),
          ),
          Obx(() => Animate(
                key: ValueKey(controller.index.value),
                effects: [
                  MoveEffect(
                    curve: Curves.fastLinearToSlowEaseIn,
                    delay: 200.ms,
                    duration: 1300.ms,
                    begin: const Offset(-500, 0),
                    end: const Offset(0, 0),
                  ),
                  ShimmerEffect(
                    duration: 2500.ms,
                    delay: 300.ms,
                  ),
                ],
                child: Positioned(
                  left: MediaQuery.sizeOf(context).width / 2 - 150,
                  top: 80,
                  child: Image.asset(
                    characters[controller.index.value].mainImage,
                    height: 800,
                    width: 300,
                  ),
                ),
              )),
          Obx(() => Animate(
                key: ValueKey(controller.index.value),
                effects: [
                  MoveEffect(
                    curve: Curves.fastLinearToSlowEaseIn,
                    delay: 200.ms,
                    duration: 1300.ms,
                    begin: const Offset(700, 0),
                    end: const Offset(0, 0),
                  )
                ],
                child: Positioned(
                    left: 30,
                    bottom: 250,
                    child: Container(
                      color: Colors.black,
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          "SEPTEMBER 18",
                          style: TextStyle(
                              color: AppColors.textColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                    )),
              )),
          Obx(() => Animate(
                key: ValueKey(controller.index.value),
                effects: [
                  MoveEffect(
                    curve: Curves.fastLinearToSlowEaseIn,
                    delay: 200.ms,
                    duration: 1300.ms,
                    begin: const Offset(700, 0),
                    end: const Offset(0, 0),
                  )
                ],
                child: Positioned(
                  left: 30,
                  bottom: 227,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      characters[controller.index.value].weightHeight,
                      style: const TextStyle(
                          color: AppColors.textColor, fontSize: 14),
                    ),
                  ),
                ),
              )),
          Obx(() => Animate(
                key: ValueKey(controller.index.value),
                effects: [
                  MoveEffect(
                    curve: Curves.fastLinearToSlowEaseIn,
                    delay: 200.ms,
                    duration: 1300.ms,
                    begin: const Offset(700, 0),
                    end: const Offset(0, 0),
                  )
                ],
                child: Positioned(
                  left: 30,
                  bottom: 210,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      characters[controller.index.value].eyesColor,
                      style: const TextStyle(
                          color: AppColors.textColor, fontSize: 13),
                    ),
                  ),
                ),
              )),
          Positioned(
            right: 30,
            bottom: 200,
            child: Animate(
              effects: [
                MoveEffect(
                  curve: Curves.fastLinearToSlowEaseIn,
                  delay: 200.ms,
                  duration: 1300.ms,
                  begin: const Offset(500, 0),
                  end: const Offset(0, 0),
                )
              ],
              child: Stack(
                children: [
                  const Positioned(
                    child: Text(
                      "“",
                      style: TextStyle(
                        fontSize: 30,
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      characters[controller.index.value].sideText,
                      style: const TextStyle(
                        fontSize: 30,
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 40,
                    right: 0,
                    child: Text(
                      "”",
                      style: TextStyle(
                        fontSize: 30,
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: 5,
                    sigmaY:
                        5), // Adjust the sigmaX and sigmaY values for desired blur intensity
                child: Container(
                  height: 40,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        characters[controller.index.value]
                            .color
                            .withOpacity(0.1), // Transparent color at the top
                        characters[controller.index.value].color.withOpacity(
                            1), // Semi-transparent color at the bottom
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Obx(() => Animate(
                key: ValueKey(controller.index.value),
                effects: [
                  MoveEffect(
                    curve: Curves.fastEaseInToSlowEaseOut,
                    delay: 200.ms,
                    duration: 1000.ms,
                    begin: const Offset(-250, 0),
                    end: const Offset(0, 0),
                  )
                ],
                child: Stack(
                  children: [
                    Positioned(
                      left: 30,
                      bottom: 70,
                      child: Text(
                        characters[controller.index.value].botomText,
                        style: const TextStyle(
                            color: AppColors.textColor,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      bottom: 45,
                      child: Container(
                        color: AppColors.textColor,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 20, 0),
                          child: Text(
                            characters[controller.index.value].name,
                            style: TextStyle(
                              color: characters[controller.index.value].color,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Obx(() => Animate(
                key: ValueKey(controller.index.value),
                effects: [
                  MoveEffect(
                    curve: Curves.fastLinearToSlowEaseIn,
                    delay: 200.ms,
                    duration: 1000.ms,
                    begin: const Offset(-520, 0),
                    end: const Offset(0, 0),
                  )
                ],
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 45,
                      right: 130,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            controller.nijika();
                          });
                        },
                        child: Container(
                          color: AppColors.nijikaColor,
                          height: 25,
                          width: 25,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 45,
                      right: 90,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            controller.kita();
                          });
                        },
                        child: Container(
                          color: AppColors.kitaColor,
                          height: 25,
                          width: 25,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 45,
                      right: 50,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            controller.bocchi();
                          });
                        },
                        child: Container(
                          color: AppColors.bocchiColor,
                          height: 25,
                          width: 25,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 45,
                      right: 10,
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            controller.ryo();
                          });
                        },
                        child: Container(
                          color: AppColors.ryoColor,
                          height: 25,
                          width: 25,
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
            top: 30,
            left: MediaQuery.sizeOf(context).width / 2 - 50,
            child: Image.asset(
              "assets/Logo_Bocchi-transformed.png",
              width: 100,
              height: 50,
            ),
          ),
          Positioned(
            top: 40,
            left: 20,
            child: SvgPicture.asset(
              'assets/icons/menus.svg',
            ),
          )
        ],
      ),
    );
  }
}
