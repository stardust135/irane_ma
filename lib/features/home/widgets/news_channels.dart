import 'package:flutter/material.dart';
import 'package:irane_ma/core/constants/styles.dart' as s;
import 'package:irane_ma/core/widgets/shaded_container.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NewsChannels extends StatelessWidget {
  final ScreenType screenType;

  const NewsChannels({super.key, required this.screenType});

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    Widget newsChannelsText = Text(
      'کانال های خبری',
      style: TextStyle(
        fontSize: 20,
        fontFamily: s.Styles.fonts.yekanBakh,
        color: const Color(0xff707070),
        fontWeight: FontWeight.bold,
      ),
    );

    if (screenType == ScreenType.mobile) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            newsChannelsText,
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: media.width / (media.width / 70),
                  mainAxisExtent: media.width / (media.width / 70) + 40,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 10,
                ),
                itemCount: 7,
                itemBuilder: (BuildContext ctx, index) {
                  return chanelItem();
                },
              ),
            ),
          ],
        ),
      );
    }
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          newsChannelsText,
          const SizedBox(height: 10),
          SizedBox(
            width: 200,
            child: Column(
              children: List.generate(
                10,
                (index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: chanelItem(),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget chanelItem() {
    if (screenType == ScreenType.mobile) {
      return Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 10,
                  spreadRadius: -2,
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Flexible(
            child: Text(
              'dataldfj ldjkf lskdjf lsdkfj',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontFamily: s.Styles.fonts.yekanBakh,
                color: const Color(0xff1C6758),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      );
    }
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 10,
                spreadRadius: -2,
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
        Flexible(
          child: Text(
            'dataldfj ldjkf lskdjf lsdkfj',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontFamily: s.Styles.fonts.yekanBakh,
              color: const Color(0xff1C6758),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
