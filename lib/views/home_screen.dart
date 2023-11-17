import 'package:bocchiapp/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import '../model/character_class.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:io';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  // Future<File> saveCharacterToFile(Character character) async {
  //   final directory = await getApplicationDocumentsDirectory();
  //   final file = File('${directory.path}/selected_character.txt');
  //   final characterJson = jsonEncode(character);
  //   return file.writeAsString(characterJson);
  // }

  @override
  Widget build(BuildContext context) {
    List<Character> characters = [
      Character("50 kg & 163 cm", "Yellow eye", "ハムキタス", "山田 リョウ",
          name: 'Yamada Ryo'),
      Character("50 kg & 156 cm", "Aqua eye", 'ギターヒーロー', '後藤 ひとり',
          name: 'Hitori Gotō'),
      Character('44 kg & 158 cm', 'Yellow eye', '逃げたギタ', '喜多 郁代',
          name: 'Ikuyo Kita'),
      Character('48 kg & 154 cm', 'Vermillion eye', '下北沢の大天使', '伊地知 虹夏',
          name: 'Ijichi Nijika')
    ];
    return Scaffold(
      backgroundColor: AppColors.ryoColor,
      appBar: AppBar(
        // backgroundColor: AppColors.ryoColor,
        forceMaterialTransparency: true,
        elevation: 0,
        centerTitle: true,
        leading: Transform.scale(
          scale: 0.80,
          child: SvgPicture.asset(
            'assets/icons/menus.svg',
          ),
        ),
        title: Image.asset(
          "assets/Logo_Bocchi-transformed.png",
          width: 100,
          height: 50,
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            right: 10,
            bottom: -20,
            child: Transform.scale(
              scale: 1.15,
              child: Opacity(
                opacity: 0.6,
                child: Image.asset('assets/Dots element.png'),
              ),
            ),
          ),
          Animate(
            effects: [
              MoveEffect(
                curve: Curves.fastLinearToSlowEaseIn,
                delay: 200.ms,
                duration: 1300.ms,
                begin: Offset(-500, 0),
                end: Offset(0, 0),
              )
            ],
            child: Positioned(
              left: 80,
              top: 20,
              child: Image.asset(
                'assets/images/ryo-1-transformed.png',
                height: 800,
                width: 300,
              ),
            ),
          ),
          Animate(
            effects: [
              MoveEffect(
                curve: Curves.fastEaseInToSlowEaseOut,
                delay: 200.ms,
                duration: 1000.ms,
                begin: Offset(-250, 0),
                end: Offset(0, 0),
              )
            ],
            child: Stack(
              children: [
                Positioned(
                  left: 30,
                  bottom: 70,
                  child: Text(
                    characters[0].botomText,
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
                      padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                      child: Text(
                        characters[0].name,
                        style: const TextStyle(
                          color: AppColors.ryoColor,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
