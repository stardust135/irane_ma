import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:irane_ma/config/routes/routes.dart';
import 'package:irane_ma/core/constants/assets_path.dart';
import 'package:irane_ma/core/constants/styles.dart' as s;
import 'package:irane_ma/core/utils/extensions.dart';
import 'package:irane_ma/core/widgets/custom_app_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NewsDetails extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String text;
  final String date;
  final List news;

  const NewsDetails({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.text,
    required this.date,
    required this.news,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: s.Styles.colors.backGroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              title: title,
              action: IconButton(
                icon: SvgPicture.asset(AssetPaths.icons.info),
                onPressed: () {
                  context.pushNamed(Routes.channelInfo);
                },
              ),
            ),
            const SizedBox(height: 10),
            _buildBody(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    if (Device.screenType == ScreenType.mobile) {
      return Column(
        children: List.generate(
          news.length,
          (index) {
            return Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 7,
              ),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: s.Styles.colors.backGroundColor,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 7,
                    spreadRadius: -2,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      image: DecorationImage(
                        image: NetworkImage(
                          imageUrl,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            color: Color(0xff1C6758),
                            fontSize: 18,
                            height: 1.2,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            SvgPicture.asset(
                              AssetPaths.icons.calendar,
                              width: 15,
                              height: 15,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              date,
                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xffCC3636),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      );
    }
    return Container(
      constraints: BoxConstraints(
        maxHeight: Device.height - kToolbarHeight - 30,
        maxWidth: Device.width - 50,
      ),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: Device.width / (Device.width / 190),
          mainAxisExtent: Device.width / (Device.width / 185) + 20,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
        ),
        itemCount: news.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xffeef2e6),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 7,
                  spreadRadius: -2,
                ),
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                        imageUrl,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'یسب منتیسمبن تیسمتب میسنبمنیستبنمتسیبنم تسیمنبت سینمبت سیمیستب منتسیمبنت سیمبتمیسنتبم سیتب میستب مسیتب مسیتبمیسنتب میستب سیمبن ت',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: TextStyle(
                            color: Color(0xff1C6758),
                            fontSize: 15,
                            // height: 1.1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              AssetPaths.icons.calendar,
                              width: 15,
                              height: 15,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              date,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffCC3636),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
