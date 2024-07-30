import 'package:flutter/material.dart';

class ShadedContainer extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget child;
  final BorderRadius? borderRadius;
  final double? width;
  final double? height;

  const ShadedContainer({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.borderRadius,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: const Color(0xffeef2e6),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            blurRadius: 10,
            spreadRadius: -2,
          ),
        ],
      ),
      child: child,
    );
  }
}
