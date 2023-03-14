import 'package:meditation_app/core/constants/asset_constants.dart';
import 'package:meditation_app/core/constants/color_constants.dart';
import 'package:meditation_app/core/constants/string_constants.dart';
import 'package:meditation_app/domain/entities/choose_topic_entity.dart';

List<ChooseTopicEntity> topicList = [
  ChooseTopicEntity(
    id: 1,
    title: StringConstants.reduceStress,
    image: Assets.reduceStress,
    backgroundColor: ColorConstants.c8E97FD,
    titleColor: ColorConstants.cEBEAEC,
  ),
  ChooseTopicEntity(
    id: 2,
    title: StringConstants.improvePerformance,
    image: Assets.improvePerformance,
    backgroundColor: ColorConstants.cFA6E5A,
    titleColor: ColorConstants.cEBEAEC,
  ),
  ChooseTopicEntity(
    id: 2,
    title: StringConstants.increaseHappiness,
    image: Assets.increaseHappiness,
    backgroundColor: ColorConstants.cF4A17C,
    titleColor: ColorConstants.c3F414E,
  ),
  ChooseTopicEntity(
    id: 3,
    title: StringConstants.reduceAnxiety,
    image: Assets.reduceAnxiety,
    backgroundColor: ColorConstants.cFFCF86,
    titleColor: ColorConstants.c3F414E,
  ),
  ChooseTopicEntity(
    id: 3,
    title: StringConstants.personalGrowth,
    image: Assets.personalGrowth,
    backgroundColor: ColorConstants.c76C79E,
    titleColor: ColorConstants.cEBEAEC,
  ),
  ChooseTopicEntity(
    id: 6,
    title: StringConstants.betterSleep,
    image: Assets.betterSleep,
    backgroundColor: ColorConstants.c3F414E,
    titleColor: ColorConstants.cEBEAEC,
  )
];
