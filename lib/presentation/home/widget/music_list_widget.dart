import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/constants/color_constants.dart';
import 'package:meditation_app/domain/entities/music_entity.dart';

class MusicListWidget extends StatelessWidget {
  const MusicListWidget({
    super.key,
    required this.musicList,
  });
  final List<MusicEntity> musicList;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: musicList
          .map(
            (e) => Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: CircleAvatar(
                        radius: 27.r,
                        backgroundColor: ColorConstants.cEBEAEC,
                        child: const Icon(
                          Icons.play_arrow,
                          color: ColorConstants.c3F414E,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            e.title,
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: ColorConstants.c3F414E,
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            e.duration,
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: ColorConstants.cA1A4B2,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider()
              ],
            ),
          )
          .toList(),
    );
  }
}
