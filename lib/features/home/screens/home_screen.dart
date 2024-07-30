import 'package:flutter/material.dart';
import 'package:irane_ma/core/constants/styles.dart' as s;
import 'package:irane_ma/core/widgets/custom_app_bar.dart';
import 'package:irane_ma/features/home/screens/home_mobile.dart';
import 'package:irane_ma/features/home/screens/home_tablet_desktop.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: s.Styles.colors.backGroundColor,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBar(
                title: 'ایران ما',
                centerTitle: false,
              ),
              const SizedBox(height: 10),
              SizedBox(
                child: _buildBody(context),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    if (Device.screenType == ScreenType.mobile) {
      return const HomeMobile();
    }
    return const HomeTabletDesktop();
  }
}
