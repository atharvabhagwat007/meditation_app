import 'package:meditation_app/core/constants/asset_constants.dart';
import 'package:meditation_app/core/constants/color_constants.dart';
import 'package:meditation_app/core/constants/string_constants.dart';
import 'package:meditation_app/domain/entities/choose_topic_entity.dart';

List<ChooseTopicEntity> popularList = [
  ChooseTopicEntity(
    id: 2,
    title: StringConstants.improvePerformance,
    image: Assets.improvePerformance,
    backgroundColor: ColorConstants.cFA6E5A,
    titleColor: ColorConstants.cEBEAEC,
    subtitle: StringConstants.turnDownTheStressVolume,
    time: '3-10 MIN',
  ),
  ChooseTopicEntity(
    id: 2,
    title: StringConstants.increaseHappiness,
    image: Assets.increaseHappiness,
    backgroundColor: ColorConstants.cF4A17C,
    titleColor: ColorConstants.c3F414E,
    subtitle: StringConstants.turnDownTheStressVolume,
    time: '3-10 MIN',
  ),
];
