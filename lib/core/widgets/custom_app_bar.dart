import 'package:flutter/material.dart';
import 'package:irane_ma/core/constants/styles.dart' as s;

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;

  const CustomAppBar({
    super.key,
    required this.title,
    this.centerTitle = true,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            title,
            style: TextStyle(
              fontFamily: s.Styles.fonts.yekanBakh,
              color: Colors.black,
            ),
          ),
          leading: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              shape: BoxShape.circle,
            ),
          ),
          centerTitle: centerTitle,
          elevation: 0,
        ),
      ),
    );
  }
}
