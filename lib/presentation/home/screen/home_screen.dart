import 'package:flutter/material.dart';
import 'package:meditation_app/core/constants/color_constants.dart';
import 'package:meditation_app/core/constants/string_constants.dart';
import 'package:meditation_app/presentation/calm_list.dart';
import 'package:meditation_app/presentation/home/widget/daily_thought_container.dart';
import 'package:meditation_app/presentation/home/widget/filter_widget_list.dart';
import 'package:meditation_app/presentation/home/widget/greeting.dart';
import 'package:meditation_app/presentation/home/widget/header_list.dart';
import 'package:meditation_app/presentation/popular_list.dart';
import 'package:meditation_app/presentation/recomended_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              ColorConstants.cEBEAEC,
              ColorConstants.c8E97FD,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Greeting(),
                const HeaderListWidget(),
                const SizedBox(
                  height: 10,
                ),
                const DailyThoughtContainer(),
                FilterWidgetList(
                  title: StringConstants.recommendedForYou,
                  list: recommendedList,
                ),
                FilterWidgetList(
                  title: StringConstants.popular,
                  list: popularList,
                ),
                FilterWidgetList(
                  title: StringConstants.calm,
                  list: calmList,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
