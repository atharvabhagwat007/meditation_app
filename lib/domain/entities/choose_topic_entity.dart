import 'package:flutter/material.dart';

class ChooseTopicEntity {
  final String title;
  final String image;
  final Color backgroundColor;
  final Color titleColor;
  final int id;
  final String? time;
  final String? subtitle;

  ChooseTopicEntity({
    required this.title,
    this.time,
    required this.id,
    required this.image,
    this.subtitle,
    required this.backgroundColor,
    required this.titleColor,
  });
}
