import 'package:flutter/material.dart';
import 'package:irane_ma/config/routes/routes.dart';
import 'package:irane_ma/core/constants/styles.dart' as s;
import 'package:irane_ma/core/entities/news.dart';
import 'package:irane_ma/core/utils/extensions.dart';
import 'package:irane_ma/core/widgets/custom_app_bar.dart';
import 'package:irane_ma/features/home/widgets/news_channels.dart';
import 'package:irane_ma/features/home/widgets/slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: s.Styles.colors.backGroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                context.pushNamed(
                  Routes.newsDetails,
                  arguments: {
                    'news': News(
                      id: 0,
                      text: 'https://img9.irna.ir/d/r2/2023/02/14/4/170183762.jpg?ts=1676347732353م متن',
                      title: 'عنوان',
                      date: '۲۳۹۸۷۴۸۳۲',
                      imageUrl: 'https://img9.irna.ir/d/r2/2023/02/14/4/170183762.jpg?ts=1676347732353',
                    ),
                  },
                );
              },
              child: const CustomAppBar(
                title: 'ایران ما',
                centerTitle: false,
              ),
            ),
            SizedBox(
              // color: Colors.red,
              // height: 300,
              width: double.maxFinite,
              child: HomeSlider(
                data: [
                  SliderData(
                    imageUrl:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/July_night_sky_%2835972569256%29.jpg/1280px-July_night_sky_%2835972569256%29.jpg',
                    title: 'ایران ما',
                    description: 'ایران  ما!!',
                  ),
                  SliderData(
                    imageUrl:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1d/Mid-Sha%27ban_1439_AH%2C_Jamkaran_Mosque%2C_Qom_05.jpg/360px-Mid-Sha%27ban_1439_AH%2C_Jamkaran_Mosque%2C_Qom_05.jpg',
                    title: 'ایران ما',
                    description: 'ایران شما!!',
                  ),
                  SliderData(
                    imageUrl:
                        'https://idc0-cdn0.khamenei.ir/ndata/news/47017/B/13991013_5647017.jpg',
                    title: 'ایران ما',
                    description: 'ایران !!',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const NewsChannels(),
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
        ),
      ),
    );
  }
}
