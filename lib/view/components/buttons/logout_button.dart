import 'package:flutter/material.dart';
import 'package:tme_pune/constants.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key, required this.title, this.icon, this.color});
  final String title;
  final IconData? icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
          backgroundColor: MaterialStatePropertyAll(color ?? themeColor),
          padding: const MaterialStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 20, vertical: 10))),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: Colors.white,
          ),
          const SizedBox(width: 5),
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
