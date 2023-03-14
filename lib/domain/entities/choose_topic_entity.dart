import 'package:flutter/material.dart';

class ChooseTopicEntity {
  final String title;
  final String image;
  final Color backgroundColor;
  final Color titleColor;
  final int id;

  ChooseTopicEntity({
    required this.title,
    required this.id,
    required this.image,
    required this.backgroundColor,
    required this.titleColor,
  });
}
