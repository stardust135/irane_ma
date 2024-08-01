import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:irane_ma/core/constants/assets_path.dart';
import 'package:irane_ma/core/constants/styles.dart' as s;
import 'package:irane_ma/core/utils/extensions.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  final Widget? action ;

  const CustomAppBar({
    super.key,
    required this.title,
    this.centerTitle = true,  this.action,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            title,
            style: TextStyle(
              fontFamily: s.Styles.fonts.yekanBakh,
              color: Colors.black,
              fontSize: 17,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: SvgPicture.asset(
              AssetPaths.icons.back,
              height: 30,
            ),
          ),
          centerTitle: centerTitle,
          elevation: 0,
           actions: action != null ? [action!]: null,
        ),
      ),
    );
  }
}
