import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:irane_ma/core/constants/assets_path.dart';
import 'package:irane_ma/core/constants/styles.dart' as s;
import 'package:irane_ma/core/widgets/custom_app_bar.dart';

class NewsDetails extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String text;
  final String date;
  final List news;

  const NewsDetails(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.text,
      required this.date,
      required this.news});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: s.Styles.colors.backGroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              title: title,
              action: IconButton(
                icon: SvgPicture.asset(AssetPaths.icons.info),
                onPressed: () {},
              ),
            ),
            if (screenwidth < screenheight)
              Column(
                children: List.generate(
                  news.length,
                  (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 8),
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: s.Styles.colors.backGroundColor,
                        // color: Colors.amber,
                        borderRadius: BorderRadius.circular(6),
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
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(
                                    imageUrl,
                                  ),
                                  fit: BoxFit.cover),
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
                                      fontSize: 20,
                                      height: 1.2,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    SvgPicture.asset(AssetPaths.icons.calendar,
                                        width: 15, height: 15),
                                    const SizedBox(width: 4),
                                    Text(date,
                                        style: const TextStyle(
                                            fontSize: 12,
                                            color: Color(0xffCC3636))),
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
              )
            else  GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: (screenwidth / 150).toInt(), // تعداد ستون‌ها در هر ردیف
                crossAxisSpacing: 10, // فاصله بین ستون‌ها
                mainAxisSpacing: 10, // فاصله بین ردیف‌ها
              ),
              itemCount: news.length,
              itemBuilder: (context, index) {
                return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8), color: Colors.yellow),
                    // width: 120,
                    height: 120,
                    child: Column(children: [
                      Container(
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(8),
                        //   // color: Colors.grey,
                        // ),
                        height: 90,
                        // width: 120,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                              image: NetworkImage(
                                imageUrl,
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            title,
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                              color: Color(0xff1C6758),
                              fontSize: 13,
                              height: 1.2,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: SvgPicture.asset(AssetPaths.icons.calendar,
                                width: 15, height: 15),
                          ),
                          const SizedBox(width: 4),
                          Text(date,
                              style: const TextStyle(
                                  fontSize: 12, color: Color(0xffCC3636))),
                        ],
                      ),
                    ]));
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class NewsDatails2 extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String text;
  final String date;
  final List news;

  const NewsDatails2(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.text,
      required this.date,
      required this.news})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double media = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (media / 150).toInt(), // تعداد ستون‌ها در هر ردیف
          crossAxisSpacing: 10, // فاصله بین ستون‌ها
          mainAxisSpacing: 10, // فاصله بین ردیف‌ها
        ),
        itemCount: news.length,
        itemBuilder: (context, index) {
          return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.yellow),
              // width: 120,
              height: 120,
              child: Column(children: [
                Container(
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(8),
                  //   // color: Colors.grey,
                  // ),
                  height: 90,
                  // width: 120,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: NetworkImage(
                          imageUrl,
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      title,
                      textAlign: TextAlign.right,
                      style: const TextStyle(
                        color: Color(0xff1C6758),
                        fontSize: 13,
                        height: 1.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: SvgPicture.asset(AssetPaths.icons.calendar,
                          width: 15, height: 15),
                    ),
                    const SizedBox(width: 4),
                    Text(date,
                        style: const TextStyle(
                            fontSize: 12, color: Color(0xffCC3636))),
                  ],
                ),
              ]));
        },
      ),
    );
  }
}
