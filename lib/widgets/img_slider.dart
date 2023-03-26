// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:ofarz_online_shop/utility/color.dart';

class ImageSlider extends StatelessWidget {
  ImageSlider({super.key});
  final List<String> imagelist = [
    'https://www.ofarz.com/storage/dashboard/banners/DPXPPVuhGoAbkUeCQ4hfoAz99K9uxtsqB5yGYuQP.jpg',
    'https://www.ofarz.com/storage/dashboard/banners/DPXPPVuhGoAbkUeCQ4hfoAz99K9uxtsqB5yGYuQP.jpg',
    'https://www.ofarz.com/storage/dashboard/banners/DPXPPVuhGoAbkUeCQ4hfoAz99K9uxtsqB5yGYuQP.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return //slider
        SizedBox(
      height: 30.27,
      // ignore: duplicate_ignore, duplicate_ignore
      child: Swiper(
        itemCount: imagelist.length,
        itemBuilder: (context, index) {
          return Image.network(
            imagelist[index],
            fit: BoxFit.cover,
          );
        },
        autoplay: true,
        // ignore: prefer_const_constructors
        pagination: SwiperPagination(
            alignment: Alignment.bottomCenter,
            // ignore: prefer_const_constructors
            builder: DotSwiperPaginationBuilder(
              color: dividerColor,
              activeColor: redClor,
            )),
        control: SwiperControl(color: Colors.white),
      ),
    );
  }
}
