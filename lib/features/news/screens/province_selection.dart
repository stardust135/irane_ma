import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interactable_svg/interactable_svg/interactable_svg.dart';
import 'package:irane_ma/core/constants/assets_path.dart';
import 'package:irane_ma/core/constants/styles.dart' as s;
import 'package:irane_ma/core/widgets/custom_app_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProvinceSelection extends StatefulWidget {
  const ProvinceSelection({super.key});

  @override
  State<ProvinceSelection> createState() => _ProvinceSelectionState();
}

final GlobalKey<InteractableSvgState> mapKey = GlobalKey();

class _ProvinceSelectionState extends State<ProvinceSelection> {
  Region? selectedRegion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: s.Styles.colors.backGroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // app bar
            const CustomAppBar(title: 'ایران ما'),

            // body
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    'اخبار منظمتسیمنب تیسنمب ت',
                    style: TextStyle(
                      color: const Color(0xff1c6758),
                      fontFamily: s.Styles.fonts.yekanBakh,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'استان مورد علاقه خود را انتخاب و سپس آنرا تایید نموده تا لیست شهرستان های مربوط به استان برای شما به نمایش دربیاید',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: s.Styles.fonts.yekanBakh,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: SizedBox(
                      height: Device.width * 0.8,
                      width: Device.width * 0.8,
                      child: InteractiveViewer(
                        scaleEnabled: true,
                        panEnabled: true,
                        constrained: true,
                        child: InteractableSvg(
                          key: mapKey,
                          svgAddress: AssetPaths.images.countryMap,
                          onChanged: (region) {
                            setState(() {
                              selectedRegion = region;
                            });
                          },
                          width: double.infinity,
                          height: double.infinity,
                          toggleEnable: true,
                          isMultiSelectable: false,
                          dotColor: Colors.black,
                          selectedColor: const Color(0xffcc3636),
                          strokeColor: Colors.white,
                          unSelectableId: "bg",
                          centerDotEnable: false,
                          centerTextEnable: false,
                          strokeWidth: 2.0,
                          centerTextStyle: const TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  if (selectedRegion != null)
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color(0xffeef2e6),
                          borderRadius: BorderRadius.circular(7),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade400,
                              blurRadius: 7,
                              spreadRadius: -2,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  selectedRegion!.name,
                                  style: TextStyle(
                                    color: const Color(0xffcc3636),
                                    fontFamily: s.Styles.fonts.yekanBakh,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      AssetPaths.icons.location,
                                      width: 15,
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      'اید',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: s.Styles.fonts.yekanBakh,
                                        fontSize: 14,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              AssetPaths.icons.check,
                              height: 40,
                            ),
                          ],
                        ),
                      ),
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
