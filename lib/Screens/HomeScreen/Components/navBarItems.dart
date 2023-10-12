import 'package:flutter/material.dart';
import 'package:in_sleep/constants/appcolors.dart';

class NavBarItems extends StatelessWidget {
  final IconData icon;
  final String title;

  const NavBarItems({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: icon == Icons.home_rounded
              ? AppColors.textColor1
              : AppColors.highlightColor,
          size: 25,
        ),
        Text(
          title,
          style: TextStyle(
            color: title == "Home"
                ? AppColors.textColor1
                : AppColors.highlightColor,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
