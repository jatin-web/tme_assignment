import 'package:flutter/material.dart';
import 'package:tme_pune/constants.dart';

class RoundBorderButton extends StatelessWidget {
  const RoundBorderButton(
      {super.key,
      required this.child,
      required this.onTap,
      this.color,
      this.height});
  final Widget child;
  final Function onTap;
  final Color? color;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: () {
          onTap();
        },
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            backgroundColor: MaterialStatePropertyAll(color ?? themeColor),
            padding: const MaterialStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 20, vertical: 10))),
        child: child,
      ),
    );
  }
}
