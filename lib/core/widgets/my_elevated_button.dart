import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final Function() onPressed;
  final Color? textColor;
  final Color? overlayColor;
  final Color? overlayTextColor;
  final Color? borderColor;
  final Color? backgroundColor;
  final Widget content;
  final EdgeInsetsGeometry? padding;
  final double? borderRadius;
  final double? elevation;

  const MyElevatedButton({
    super.key,
    this.textColor,
    this.overlayColor,
    this.overlayTextColor,
    this.borderColor,
    this.padding,
    this.elevation,
    this.backgroundColor,
    this.borderRadius,
    required this.onPressed,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    final buttonForegroundColor = MaterialStateProperty.resolveWith<Color>(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) {
          return overlayTextColor ?? const Color(0xff03b2de);
        }
        return textColor ?? Colors.white;
      },
    );

    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        foregroundColor: buttonForegroundColor,
        elevation: MaterialStateProperty.all(elevation ?? 0),
        padding: MaterialStateProperty.all(
          padding ??
              const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 15,
              ),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            side: BorderSide(
              style: BorderStyle.solid,
              color: borderColor ?? Colors.transparent,
              width: 1,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius ?? 45),
            ),
          ),
        ),
        overlayColor: MaterialStateProperty.all(overlayColor ?? Colors.white),
        backgroundColor: MaterialStateProperty.all(
          backgroundColor ?? const Color(0xff444444),
        ),
      ),
      child: content,
    );
  }
}
