import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:irane_ma/core/constants/styles.dart' as s;
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeSlider extends StatefulWidget {
  final List<SliderData> data;

  const HomeSlider({super.key, required this.data});

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
        // aspectRatio: Device.screenType == ScreenType.mobile
        //     ? 13 / 9
        //     : Device.screenType == ScreenType.tablet
        //         ? 18 / 9
        //         : 22 / 9,
        aspectRatio: 16 / 9,
      ),
      items: List.generate(
        widget.data.length,
        (index) => Padding(
          padding: const EdgeInsets.all(10),
          child: sliderItem(
            index: index,
            itemData: widget.data[index],
          ),
        ),
      ),
    );
  }

  Widget sliderItem({
    required SliderData itemData,
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
                  image: NetworkImage(itemData.imageUrl),
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
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'ایران ما',
                    style: TextStyle(
                      fontFamily: s.Styles.fonts.yekanBakh,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                widget.data[index].description,
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

class SliderData {
  String imageUrl;
  String title;

  String description;

  SliderData({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}
