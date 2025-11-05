import 'dart:ui';

import 'package:bocchiapp/utils/app_colors.dart';

class Character {
  final String name;
  final String weightHeight;
  final String eyesColor;
  final String sideText;
  final String botomText;
  final String mainImage;
  final String img1;
  final String img2;
  final Color color;
  final Color color2;

  Character(
    this.weightHeight,
    this.eyesColor,
    this.sideText,
    this.botomText,
    this.mainImage,
    this.img1,
    this.img2,
    this.color,
    this.color2, {
    required this.name,
  });
}

extension ColorExtension on Color {
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

List<Character> getcharacters() {
  return [
    Character(
        "50 kg & 163 cm",
        "Yellow eye",
        "ハムキタス",
        "山田 リョウ",
        "assets/images/ryo-1-transformed.png",
        "assets/ryo_img_1.png",
        "assets/ryo_img_2.png",
        const Color.fromARGB(255, 69, 109, 249),
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
}
