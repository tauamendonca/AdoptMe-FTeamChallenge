// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:adoptme/components/constants.dart';
import 'package:flutter/material.dart';

class SwitchMenu extends StatelessWidget {
  final switchMenuIcon;
  final switchMenuIconColor;
  final Color menuBackground;
  final Color menuFontColor;

  const SwitchMenu({
    Key? key,
    this.switchMenuIcon,
    this.switchMenuIconColor,
    this.menuBackground = cSecondaryColor,
    this.menuFontColor = cGray1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: menuBackground,
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: 0,
        width: 50,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(switchMenuIcon, color: switchMenuIconColor),
        ]),
      ),
    );
  }
}
