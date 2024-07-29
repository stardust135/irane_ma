import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:irane_ma/core/constants/assets_path.dart';
import 'package:irane_ma/core/widgets/custom_app_bar.dart';

// void main() {
//   runApp(MaterialApp(
//     home: NewsDetails(
//       imageUrl: "https://www.gstatic.com/inputtools/images/ita_sprite8.png",
//       title: "چاستان لار",
//       text:
//           "بسم الله الرحمن الرحیم بسم الله الرحمن الرحیم بسم الله الرحمن الرحیم بسم الله الرحمن الرحیم",
//       date: "مهربان آذر",
//       news: [3, 5, 6],
//     ),
//   ));
// }

class NewsDetails extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String text;
  final String date;
  final List news;

  const NewsDetails(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.text,
      required this.date,
      required this.news})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: title,
        action: IconButton(
          icon: SvgPicture.asset(AssetPaths.icons.info),
          onPressed: () {
            // عملکرد دکمه اکشن
          },
        ),
      ),
      body: Container(
          child: ListView.builder(
              itemCount: news.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          child: Image.network(imageUrl,
                            fit: BoxFit.cover,

                          )),
                      Column(
                        children: [
                          Flexible(child: Text(text)),
                          Row(
                            children: [
                              SvgPicture.asset(AssetPaths.icons.calendar),
                              Text(date)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                );
              })),
    );
  }
}
