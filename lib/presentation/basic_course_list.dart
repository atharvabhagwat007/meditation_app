import 'package:meditation_app/core/constants/asset_constants.dart';
import 'package:meditation_app/core/constants/color_constants.dart';
import 'package:meditation_app/core/constants/string_constants.dart';
import 'package:meditation_app/domain/entities/choose_topic_entity.dart';

List<ChooseTopicEntity> basicCourseList = [
  ChooseTopicEntity(
    id: 1,
    title: StringConstants.basicCourse,
    image: Assets.basicCourse,
    backgroundColor: ColorConstants.c8E97FD,
    titleColor: ColorConstants.cFFECCC,
    time: '3-10 MIN',
  ),
  ChooseTopicEntity(
    id: 2,
    title: StringConstants.relaxationMusic,
    image: Assets.relaxationMusic,
    backgroundColor: ColorConstants.cF1B869,
    titleColor: ColorConstants.c3F414E,
    time: '3-10 MIN',
  ),
];
