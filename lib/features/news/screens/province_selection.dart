import 'package:flutter/material.dart';
import 'package:interactable_svg/interactable_svg/interactable_svg.dart';
import 'package:irane_ma/core/constants/assets_path.dart';

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
      body: Container(
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
            selectedColor: Colors.red.withOpacity(0.5),
            strokeColor: Colors.blue,
            unSelectableId: "bg",
            centerDotEnable: true,
            centerTextEnable: true,
            strokeWidth: 2.0,
            centerTextStyle: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
