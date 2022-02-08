// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:adoptme/components/constants.dart';
import 'package:flutter/material.dart';

class PetMenuIcon extends StatelessWidget {
  final petMenuIcon;
  final petMenuIconColor;
  final String petMenuTitle;
  final Color petMenuBackground;
  final Color petMenuFontColor;

  const PetMenuIcon({
    Key? key,
    this.petMenuTitle = "",
    required this.petMenuIcon,
    required this.petMenuIconColor,
    this.petMenuBackground = cSecondaryColor,
    this.petMenuFontColor = cGray1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: petMenuBackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 40,
            width: 90,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(petMenuIcon, color: petMenuIconColor),
              const SizedBox(width: 10),
              Text(
                petMenuTitle,
                style: TextStyle(
                  fontSize: 14,
                  color: petMenuFontColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
