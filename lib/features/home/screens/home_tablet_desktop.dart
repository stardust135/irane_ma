import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/constants/styles.dart' as s;
import '../../../core/widgets/shaded_container.dart';
import '../widgets/news_channels.dart';

class HomeTabletDesktop extends StatelessWidget {
  const HomeTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      // height: MediaQuery.of(context).size.height - 76,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      constraints: const BoxConstraints(maxWidth: 1000),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              // color: Colors.red,
              child: _buildContent(),
            ),
          ),

          const SizedBox(width: 20),

          // channels list
          const ShadedContainer(
            child: NewsChannels(
              screenType: ScreenType.tablet,
            ),
          ),
        ],
      ),
    );
  }

  _buildContent() {
    return Column(
      children: [
        ShadedContainer(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                constraints: const BoxConstraints(
                  maxWidth: 500,
                ),
                child: AspectRatio(
                  aspectRatio: 17 / 10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/July_night_sky_%2835972569256%29.jpg/1280px-July_night_sky_%2835972569256%29.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'اون میاد بیرون با خوشحالی باب ا ls\n jdslf jldskfjlkdsfj lsdkfj ljسفنجی! کوچولوی دندون خرگوشی...',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: s.Styles.fonts.yekanBakh,
                        color: const Color(0xff1c6758),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            decoration: const BoxDecoration(
                              color: Color(0xffcc3636),
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'ایران ما',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 17,
                              fontFamily: s.Styles.fonts.yekanBakh,
                              color: const Color(0xffcc3636),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          width: double.maxFinite,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: const DecorationImage(
              image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d3/July_night_sky_%2835972569256%29.jpg/1280px-July_night_sky_%2835972569256%29.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
