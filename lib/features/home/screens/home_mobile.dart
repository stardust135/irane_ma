import 'package:flutter/material.dart';
import 'package:irane_ma/core/entities/news.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../widgets/news_channels.dart';
import '../widgets/slider.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.maxFinite,
          child: HomeSlider(
            newsList: [
              News(
                imageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/July_night_sky_%2835972569256%29.jpg/1280px-July_night_sky_%2835972569256%29.jpg',
                title: 'ایران ما',
                content: 'ایران  ما!!',
              ),
              News(
                imageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Mid-Sha%27ban_1439_AH%2C_Jamkaran_Mosque%2C_Qom_05.jpg/360px-Mid-Sha%27ban_1439_AH%2C_Jamkaran_Mosque%2C_Qom_05.jpg',
                title: 'ایران ما',
                content: 'ایران شما!!',
              ),
              News(
                imageUrl:
                'https://idc0-cdn0.khamenei.ir/ndata/news/47017/B/13991013_5647017.jpg',
                title: 'ایران ما',
                content: 'ایران !!',
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        const NewsChannels(
          screenType: ScreenType.mobile,
        ),
        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          width: double.maxFinite,
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
              image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/July_night_sky_%2835972569256%29.jpg/1280px-July_night_sky_%2835972569256%29.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
