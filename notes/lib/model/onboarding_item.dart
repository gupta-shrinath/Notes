import 'dart:ui';

class OnBoardingItem {
  final String description;
  final String icon;
  final Color color;
  final Color buttonColor;

  OnBoardingItem({
    this.description,
    this.icon,
    this.color,
    this.buttonColor,
  });

  get getDescription => description;

  get getIcon => icon;

  get getColor => color;

  get getButtonColor => buttonColor;
}
