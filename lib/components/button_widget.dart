import 'package:flutter/material.dart';

import '../utils/my_theme.dart';

class MyButton extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final double? radius;
  final Function() onTap;
  final Color? textColor;
  final ButtonStyle? style;

  const MyButton({
    Key? key,
    this.child,
    this.color,
    this.radius,
    required this.onTap,
    this.textColor,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: style ??
          ElevatedButton.styleFrom(
            foregroundColor: textColor ?? Colors.white,
            backgroundColor: color ?? MyTheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius ?? 15),
            ),
          ),
      child: child,
    );
  }
}
