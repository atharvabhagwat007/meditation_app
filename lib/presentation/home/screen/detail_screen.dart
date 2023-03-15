import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/core/constants/asset_constants.dart';
import 'package:meditation_app/core/constants/color_constants.dart';
import 'package:meditation_app/presentation/home/widget/back_button.dart';
import 'package:meditation_app/presentation/home/widget/favourite_download_button.dart';
import 'package:meditation_app/presentation/home/widget/favourite_listening.dart';
import 'package:meditation_app/presentation/home/widget/music_list_widget.dart';
import 'package:meditation_app/presentation/music_list.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 288.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset(Assets.detailImage).image,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [BackButtonWidget(), FavouriteDownloadButton()],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Happy Morning',
                    style: TextStyle(
                      fontSize: 34.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'COURSE',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: ColorConstants.cA1A4B2,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Ease the mind into a restful nights sleep  with these deep, amblent tones.',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: ColorConstants.cA1A4B2,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const FavouriteListening(
                    favourite: '23,000 Favourite',
                    listening: '23,000 Listening',
                  ),
                  MusicListWidget(musicList: musicList),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
