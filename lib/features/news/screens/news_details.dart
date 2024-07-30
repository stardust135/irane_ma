import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:irane_ma/core/constants/assets_path.dart';
import 'package:irane_ma/core/constants/styles.dart' as s;
import 'package:irane_ma/core/widgets/custom_app_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/entities/news.dart';

class NewsDetails extends StatelessWidget {
  final News news;

  const NewsDetails({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    double circleD = 55;
    return Scaffold(
      backgroundColor: s.Styles.colors.backGroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // app bar
            CustomAppBar(
              title: 'ایران ما',
              centerTitle:
                  Device.screenType != ScreenType.mobile ? false : true,
            ),

            const SizedBox(height: 10),

            Container(
              padding: const EdgeInsets.all(10),
              margin: Device.screenType != ScreenType.mobile
                  ? EdgeInsets.symmetric(horizontal: 20.w)
                  : null,
              decoration: Device.screenType != ScreenType.mobile
                  ? BoxDecoration(
                      color: const Color(0xffeef2e6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 12,
                          spreadRadius: -2,
                        ),
                      ],
                    )
                  : null,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      news.title ?? '',
                      style: TextStyle(
                        fontFamily: s.Styles.fonts.yekanBakh,
                        color: const Color(0xff1c6758),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      news.date ?? '',
                      style: TextStyle(
                        fontFamily: s.Styles.fonts.yekanBakh,
                        color: const Color(0xffcc3636),
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Container(
                            color: Colors.red,
                            child: AspectRatio(
                              aspectRatio: 16 / 9,
                              child: Image.network(
                                news.imageUrl ?? '',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 15,
                          bottom: 0,
                          child: Transform.translate(
                            offset: Offset(0, circleD / 2),
                            child: Row(
                              children: [
                                Container(
                                  width: circleD,
                                  height: circleD,
                                  decoration: BoxDecoration(
                                    color: const Color(0xffeef2e6),
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade400,
                                        blurRadius: 7,
                                        spreadRadius: -2,
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child:
                                        SvgPicture.asset(AssetPaths.icons.like),
                                  ),
                                ),
                                SizedBox(width: 10),
                                if (Device.screenType != ScreenType.mobile)
                                  Container(
                                    width: circleD,
                                    height: circleD,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffeef2e6),
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.shade400,
                                          blurRadius: 7,
                                          spreadRadius: -2,
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: SvgPicture.asset(
                                          AssetPaths.icons.share),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 45),
                    Text(
                      news.text ?? '',
                      style: TextStyle(
                        fontFamily: s.Styles.fonts.yekanBakh,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: Device.screenType == ScreenType.mobile
          ? Container(
              height: 56,
              decoration: const BoxDecoration(
                color: Color(0xff1c6758),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
              child: Center(
                child: Text(
                  'مشاهده در کانال ایتا',
                  style: TextStyle(
                    fontFamily: s.Styles.fonts.yekanBakh,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            )
          : null,
      floatingActionButton: Device.screenType != ScreenType.mobile
          ? FloatingActionButton(
              onPressed: () {
                // todo
              },
              backgroundColor: const Color(0xff1c6758),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(AssetPaths.icons.share),
              ),
            )
          : null,
    );
  }
}
