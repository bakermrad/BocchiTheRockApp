import 'dart:ui';

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
