import 'package:flutter/material.dart';
import 'package:irane_ma/core/constants/styles.dart' as s;
import 'package:irane_ma/core/entities/channel.dart';
import 'package:irane_ma/core/widgets/custom_app_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChannelInfo extends StatelessWidget {
  final Channel channelInfo;

  const ChannelInfo({
    super.key,
    required this.channelInfo,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: s.Styles.colors.backGroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              title: "اطلاعات کانال",
              centerTitle:
                  Device.screenType == ScreenType.mobile ? true : false,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: const Color(0xffeef2e6),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(channelInfo.imageUrl ?? ''),
                        fit: BoxFit.cover,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade700,
                          blurRadius: 12,
                          spreadRadius: -2,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    channelInfo.name ?? '',
                    style: const TextStyle(
                      color: Color(0xff1C6758),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    channelInfo.name ?? '',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
