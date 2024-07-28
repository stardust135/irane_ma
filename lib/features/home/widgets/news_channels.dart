import 'package:flutter/material.dart';
import 'package:irane_ma/core/constants/styles.dart' as s;

class NewsChannels extends StatelessWidget {
  const NewsChannels({super.key});

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'کانال های خبری',
            style: TextStyle(
              fontSize: 16,
              fontFamily: s.Styles.fonts.yekanBakh,
              color: const Color(0xff707070),
              fontWeight: FontWeight.bold,
            ),
          ),
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

  Widget chanelItem() {
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
}
