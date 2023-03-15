import 'package:meditation_app/core/constants/asset_constants.dart';
import 'package:meditation_app/core/constants/color_constants.dart';
import 'package:meditation_app/core/constants/string_constants.dart';
import 'package:meditation_app/domain/entities/choose_topic_entity.dart';

List<ChooseTopicEntity> recommendedList = [
  ChooseTopicEntity(
    id: 1,
    title: StringConstants.anxiety,
    image: Assets.anxiety,
    backgroundColor: ColorConstants.c2D73D5,
    titleColor: ColorConstants.cFFECCC,
    time: '3-10 MIN',
    subtitle: StringConstants.turnDownTheStressVolume,
  ),
  ChooseTopicEntity(
    id: 2,
    title: StringConstants.relaxationMusic,
    image: Assets.relaxationMusic,
    backgroundColor: ColorConstants.cF1B869,
    titleColor: ColorConstants.c3F414E,
    time: '3-10 MIN',
    subtitle: StringConstants.turnDownTheStressVolume,
  ),
];
