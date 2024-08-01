import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:irane_ma/config/routes/routes.dart';
import 'package:irane_ma/core/constants/styles.dart' as s;
import 'package:irane_ma/core/entities/news.dart';
import 'package:irane_ma/core/utils/extensions.dart';

class HomeSlider extends StatefulWidget {
  final List<News> newsList;

  const HomeSlider({super.key, required this.newsList});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        initialPage: 0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 4),
        reverse: false,
        enlargeCenterPage: false,
        aspectRatio: 14 / 9,
      ),
      items: List.generate(
        widget.newsList.length,
        (index) => GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            context.pushNamed(Routes.newsDetails);
          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: sliderItem(
              index: index,
              news: widget.newsList[index],
            ),
          ),
        ),
      ),
    );
  }

  Widget sliderItem({
    required News news,
    required int index,
  }) {
    return Column(
      children: [
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade700,
                  blurRadius: 8,
                  // spreadRadius: -2,
                ),
              ],
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: NetworkImage(news.imageUrl ?? ''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Image.network(itemData.imageUrl, height: 300),
          ),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                      color: Color(0xffcc3636),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    news.channel?.name ?? '',
                    style: TextStyle(
                      fontFamily: s.Styles.fonts.yekanBakh,
                      color: const Color(0xffcc3636),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                widget.newsList[index].content ?? '',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontFamily: s.Styles.fonts.yekanBakh,
                  color: const Color(0xff1C6758),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
